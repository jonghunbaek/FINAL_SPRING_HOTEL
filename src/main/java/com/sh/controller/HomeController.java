package com.sh.controller;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.bind.support.SessionStatus;

import com.sh.service.UserService;
import com.sh.vo.User;
import com.sh.web.form.UserRegisterForm;

@Controller
@SessionAttributes("LOGIN_USER")
/*
 * @SessionAttributes Model 객체에 저장되는 객체 중에서 지정된 속성명으로 저장되는 것만 HttpSession객체에
 * 저장시킨다.
 */
public class HomeController {

	@Autowired
	private UserService userService;

	@GetMapping(path = "/")
	public String Home() {
		return "home";
	}

	@GetMapping(path = "/login")
	public String loginform() {
		return "loginform";
	}
	
	@GetMapping(path = "/completed")
	public String completed() {
		return "completed";
	}

	// 로그인
	@PostMapping(path = "/login")
	public String login(@RequestParam("id") String id, @RequestParam("password") String password, Model model) {

		User user = userService.login(id, password);
		model.addAttribute("LOGIN_USER", user);

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

	@PostMapping(path = "/register")
	public String register(@ModelAttribute("userRegisterForm") @Valid UserRegisterForm userRegisterForm,
			BindingResult errors) throws Exception {

		
		if (errors.hasErrors()) {
			return "registerform";
		}
		try {
		userService.addNewUser(userRegisterForm);
		} catch (RuntimeException e) {
			// BindingResult객체에 오류내용을 수동으로 추가하기
			errors.rejectValue("email", null, e.getMessage());
			return "registerform";
		}
		return "redirect:/completed";
	}
}
