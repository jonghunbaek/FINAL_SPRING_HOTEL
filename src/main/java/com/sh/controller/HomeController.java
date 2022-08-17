package com.sh.controller;


import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.bind.support.SessionStatus;

import com.sh.service.UserService;
import com.sh.utils.SessionUtils;
import com.sh.vo.User;
import com.sh.web.form.KakaoLoginForm;
import com.sh.web.form.UserRegisterForm;

import lombok.extern.slf4j.Slf4j;

@Controller
@SessionAttributes("LOGIN_USER")
/*
 * @SessionAttributes Model 객체에 저장되는 객체 중에서 지정된 속성명으로 저장되는 것만 HttpSession객체에
 * 저장시킨다.
 */
@Slf4j
public class HomeController {
	
	private static final String NORMAL_LOGIN_TYPE = "normal";
	private static final String KAKAO_LOGIN_TYPE = "kakao";
	
	@Autowired
	private UserService userService;
	
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
	public String contact() {
		return "contactus";
	}
	
	// 스프링리워즈 메인
	@GetMapping(path="/rewards")
	public String rewards() {
		return "rewards/rewards";
	}
	// 스프링리워즈 회원특전
	@GetMapping(path="/benefits")
	public String benefits() {
		return "rewards/benefits";
	}
	// 스프링리워즈 포인트
	@GetMapping(path="/points")
	public String points() {
		return "rewards/points";
	}
	// 스프링리워즈 이벤트
	@GetMapping(path="/events")
	public String events() {
		return "rewards/events";
	}
	// 스프링리워즈 FAQ
	@GetMapping(path="/faq")
	public String faq() {
		return "rewards/faq";
	}
	
	// 로그인
	@PostMapping(path = "/login")
	public String login(@RequestParam("id") String id, @RequestParam("password") String password, Model model) {

		User user = userService.login(id, password);
		SessionUtils.addAttribute("LOGIN_USER", user);

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
	public String logout() {
		SessionUtils.sessionInvlidate();

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
		System.out.println(userRegisterForm.getTel());
		System.out.println(userRegisterForm.getEmail());
		System.out.println(userRegisterForm.getAddress());
		System.out.println(userRegisterForm.getBirthDay());
		
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
	
}
