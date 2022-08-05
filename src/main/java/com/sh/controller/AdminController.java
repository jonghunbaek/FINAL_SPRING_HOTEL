package com.sh.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.SessionAttributes;

import com.sh.service.AdminService;
import com.sh.vo.Admin;

@Controller
@RequestMapping("/admin")
@SessionAttributes("LOGIN_ADMIN")
public class AdminController {

	@Autowired
	private AdminService adminService;
	
	@GetMapping(path = "/main")
	public String main() {
		return "admin/main";
	}
	
	@GetMapping(path = "/login")
	public String loginform() {
		return "admin/loginform";
	}
	
	@PostMapping(path = "/login")
	public String login(@RequestParam("no") int no, @RequestParam("password") String password, Model model) {
		
			Admin admin = adminService.login(no, password);
			model.addAttribute("LOGIN_ADMIN", admin);

		return "admin/main";
	}
}
	