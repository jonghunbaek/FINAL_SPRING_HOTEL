package com.sh.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.SessionAttributes;

import com.sh.service.AdminService;
import com.sh.vo.Admin;
import com.sh.web.form.AdminRegisterForm;

@Controller
@RequestMapping("/admin")
@SessionAttributes("LOGIN_ADMIN")
public class AdminController {

	@Autowired
	private AdminService adminService;
	
	// 관리자 메인페이지 요청
	@GetMapping(path = "/main")
	public String main() {
		return "admin/main";
	}
	
	// 사원 등록 페이지 요청
	@GetMapping(path = "/register")
	public String registerform(Model model) {

		model.addAttribute("adminRegisterForm", new AdminRegisterForm());

		return "admin/registerform";
	}
	
	/*
	 * @PostMapping(path = "/register") public String register
	 */
	
	// 입력된 이메일 존재 여부 체크
	@PostMapping(path = "/emailCheck")
	@ResponseBody
	public int emailCheck(String email) {
		
		int emailCheck = adminService.emailCheck(email);
		return emailCheck;
	}
	
	// 관리자 로그인 페이지 요청
	@GetMapping(path = "/login")
	public String loginform() {
		return "admin/loginform";
	}
	
	// 관리자 로그인
	@PostMapping(path = "/login")
	public String login(@RequestParam("email") String email, @RequestParam("password") String password, Model model) {
		
			Admin admin = adminService.login(email, password);
			model.addAttribute("LOGIN_ADMIN", admin);

		return "admin/main";
	}
	
	
}
	