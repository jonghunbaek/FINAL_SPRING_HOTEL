package com.sh.controller;

import java.util.List;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.SessionAttributes;

import com.sh.exception.ApplicationException;
import com.sh.service.AdminService;
import com.sh.vo.Admin;
import com.sh.vo.Location;
import com.sh.vo.RoomRev;
import com.sh.vo.RtRev;
import com.sh.web.form.AdminRegisterForm;


@Controller
@RequestMapping("/admin")
@SessionAttributes("LOGIN_ADMIN")
public class AdminController {

	@Autowired
	private AdminService adminService;
	
	// 관리자 메인페이지 요청
	@GetMapping(path = "/main")
	public String main(@RequestParam(name = "location" , required = false, defaultValue = "1") int locationNo, Model model) {
		
		List<RoomRev> roomRevs = adminService.getRoomRevListByLocation(locationNo);
		List<RtRev> rtRevs = adminService.getRtRevListByLocation(locationNo);
		
		model.addAttribute("roomRevs", roomRevs);
		model.addAttribute("rtRevs", rtRevs);
		model.addAttribute("location", adminService.getLocationByNo(locationNo));
		model.addAttribute("sale", adminService.getAllSale(locationNo));    
			
		return "admin/main";
	}
	
	// 직원 등록 페이지 요청
	@GetMapping(path = "/register")
	public String registerform(Model model) {

		model.addAttribute("adminRegisterForm", new AdminRegisterForm());

		return "admin/registerform";
	}
	
	// 신규 직원 등록
    @PostMapping(path = "/register") 
    public String register(@ModelAttribute("adminRegisterForm") @Valid AdminRegisterForm adminRegisterForm, BindingResult errors) throws Exception {
    	
    	if (errors.hasErrors()) {
    		System.out.println(errors);
			return "admin/registerform";
		}
		try {
			adminService.addNewAdmin(adminRegisterForm);			
		} catch (ApplicationException e) {
			// BindingResult객체에 오류내용을 수동으로 추가하기
			errors.rejectValue("email", null, e.getMessage());
			return "admin/registerform";
		}
		
		return "redirect:/admin/complete";
    }
	 
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
		
		try {
			Admin admin = adminService.login(email, password);
			model.addAttribute("LOGIN_ADMIN", admin);
		} catch (ApplicationException e) {
			return "redirect:/admin/login?fail=invalid";
		}

		return "redirect:/admin/main";
	}
	
	// 사원등록 완료 페이지
	@GetMapping(path = "/complete")
	public String complete() {

		return "admin/complete";
	}
	
}
	