package com.sh.controller;


import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.bind.support.SessionStatus;

import com.sh.annotation.LoginUser;
import com.sh.exception.ApplicationException;
import com.sh.service.InquiryService;
import com.sh.service.UserService;
import com.sh.utils.SessionUtils;
import com.sh.utils.VerifyRecaptcha;
import com.sh.vo.Location;
import com.sh.vo.QnaCategory;
import com.sh.vo.User;
import com.sh.web.form.KakaoLoginForm;
import com.sh.web.form.UserRegisterForm;

import lombok.extern.slf4j.Slf4j;

@Controller
@SessionAttributes("LOGIN_USER")
@Slf4j
public class HomeController {
	
	private static final String NORMAL_LOGIN_TYPE = "normal";
	private static final String KAKAO_LOGIN_TYPE = "kakao";
	
	@Autowired
	private UserService userService;
	
	@Autowired
	private InquiryService inquiryService;
	
	// 홈
	@GetMapping(path = "/")
	public String Home() {
		return "home";
	}
	
	// 로그인
	@GetMapping(path = "/login")
	public String loginform() {
		return "loginform";
	}
	
	// 호텔소개
	@GetMapping(path="/about")
	public String about() {
		return "aboutSpring";
	}
	
	// 고객문의
	@GetMapping(path="/contact")
	public String contact(@LoginUser User loginUser, Model model) {
		User user = userService.getUserDetail(loginUser.getId());
		List<QnaCategory> category = inquiryService.getAllQnaCategory();
		List<Location> location = inquiryService.getAllLocation();
		
		model.addAttribute("user", user);
		model.addAttribute("category", category);
		model.addAttribute("location",location);
		return "contactus";
	}
	
	// 스프링리워즈
	@GetMapping(path="/rewards")
	public String rewards() {
		return "rewards";
	}

	// 로그인
	@PostMapping(path = "/login")
	public String login(@RequestParam("id") String id, @RequestParam("password") String password, Model model) {

		try {
			User user = userService.login(id, password);
			model.addAttribute("LOGIN_USER", user);
			
		} catch (ApplicationException e) {
			return "redirect:/login?fail=invalid";
		}
		
		return "redirect:/";
	}
	// 카카오 로그인 요청을 처리한다.
	
	@PostMapping("/kakao-login")
	public String loginWithKakao(KakaoLoginForm form) {
		log.info("카카오 로그인 인증정보: " + form);
		
		User user = User.builder()
					.id(form.getId())
					.name(form.getNickname())
					.email(form.getEmail())
					.age(form.getAge())
					.gender(form.getGender())
					.loginType(KAKAO_LOGIN_TYPE)
					.build();
		
		User savedUser = userService.loginWithKakao(user);
		
		if (savedUser != null) {
			SessionUtils.addAttribute("LOGIN_USER", savedUser);
		} else {
			SessionUtils.addAttribute("LOGIN_USER", user);
		}
		log.info("카카오 로그인 완료");
		
		return "redirect:/";
	}
	
	// 로그아웃
	@GetMapping(path = "/logout")
	public String logout(SessionStatus sessionStatus) {
		sessionStatus.setComplete();

		return "redirect:/";
	}

	// 회원가입
	@GetMapping(path = "/register")
	public String registerform(Model model) {
		UserRegisterForm userRegisterForm = new UserRegisterForm();

		model.addAttribute("userRegisterForm", userRegisterForm);

		return "registerform";

	}
	// 회원가입 완료
	@GetMapping(path = "/completed")
	public String completed() {
		return "completed";
	}
  
	@PostMapping(path = "/register")
	public String register(@ModelAttribute("userRegisterForm") @Valid UserRegisterForm userRegisterForm,
			BindingResult errors) throws Exception {
		if (errors.hasErrors()) {
			System.out.println("error:" +errors);
			return "registerform";
		}
		try {
		userService.addNewUser(userRegisterForm);
		} catch (RuntimeException e) {
			System.out.println("error:" + e);
			return "registerform";
		}
		return "redirect:/completed";
	}

	// 아이디 중복체크
	@PostMapping(path ="/idCheck")
	@ResponseBody
	public int idCheck(@RequestParam("id") String id) {
		int check = userService.idCheck(id);
		return check;
	}
	
	// 이메일 중복체크
	@PostMapping(path ="/emailCheck")
	@ResponseBody
	public int emailCheck(@RequestParam("email") String email) {
		int check = userService.emailCheck(email);
		return check;
	}
	
	// 아이디 찾기
	@PostMapping(path ="/findId")
	@ResponseBody
	public String findId(@RequestParam("name") String name, @RequestParam("email") String email) {
		String findId = userService.findId(name, email);
		return findId;
	}
	
	// 비밀번호 찾기
	@PostMapping(path ="/findPw")
	@ResponseBody
	public String findPw(@RequestParam("id") String id, @RequestParam("email") String email) {
		String findPw = userService.findPw(id, email);
		return findPw;
	}
	
	// 구글 reCapptcha
	@ResponseBody
	@RequestMapping(value = "VerifyRecaptcha", method = RequestMethod.POST)
	public int VerifyRecaptcha(HttpServletRequest request) {
		// 시크릿 키를 캡챠를 받아올수 있는 Class에 보내서 그곳에서 값을 출력한다
	    VerifyRecaptcha.setSecretKey("6LfBUF0hAAAAAPZzzeT5b3KLYQomP2q25LfMU_XV");
	    String gRecaptchaResponse = request.getParameter("recaptcha");
	    try {
	       if(VerifyRecaptcha.verify(gRecaptchaResponse))
	          return 0; // 성공
	       else return 1; // 실패
	    } catch (Exception e) {
	        e.printStackTrace();
	        return -1; //에러
	    }
	}
	
}
