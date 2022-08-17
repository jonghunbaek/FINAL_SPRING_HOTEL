package com.sh.controller;

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

import com.sh.exception.ApplicationException;
import com.sh.service.UserService;
import com.sh.utils.SessionUtils;
import com.sh.vo.Grade;
import com.sh.vo.PointHistory;
import com.sh.vo.User;
import com.sh.vo.UserPoint;
import com.sh.web.form.UserModifyForm;

@Controller
@RequestMapping("/user")
public class UserController {

	@Autowired
	private UserService userService;
	
	// 마이페이지 메인
	@GetMapping("/mypage")
	public String mypage(Model model) {
		User loginUser = (User) SessionUtils.getAttribute("LOGIN_USER");
		
		User user = userService.getUserDetail(loginUser.getId());
		model.addAttribute("user", user);
		Grade grade = userService.getUserGrade(loginUser.getId());
		model.addAttribute("grade", grade);
		
		
		return "user/mypage";
	}
	
	// 예약확인/취소 -> 객실/패키지
	@GetMapping("/room")
	public String cancleroom() {
		
		return "user/roomReservation";
	}
	
	// 예약확인/취소 -> 다이닝
	@GetMapping("/dining")
	public String cancledining() {
		
		return "user/diningReservation";
	}
	
	// 포인트	조회
	@GetMapping("/point")
	public String points() {
		
		return "user/pointInfo";
	}
	
	// 쿠폰함
	@GetMapping("/coupon")
	public String coupon() {
		
		return "user/coupon";
	}
	
	// 내 정보 -> 프로필 수정
	@GetMapping("/modify")
	public String modify(Model model) {
		User loginUser = (User) SessionUtils.getAttribute("LOGIN_USER");
		
		User user = userService.getUserDetail(loginUser.getId());
		model.addAttribute("user", user);
		return "user/modify";
	}
	
	// 내 정보 -> 프로필 수정 -> 프로필 수정 폼
	@PostMapping("/modifyform")
	public String passwordCheck(@RequestParam("password") String password, Model model) {
		User loginUser = (User) SessionUtils.getAttribute("LOGIN_USER");
		User user = userService.checkPassword(loginUser.getNo(), password);
		model.addAttribute("user",user);
		
		return "user/modifyform";
	}
	
	// 이메일 중복체크
	@PostMapping(path="/emailCheck")
	@ResponseBody
	public int emailCheck(@RequestParam("email") String email) {
		int check = userService.emailCheck(email);
		return check;
	}
	
	// 프로필 변경
	@PostMapping(path="/modifyProfile")
	public String modifyProfile(@ModelAttribute("userModifyForm") UserModifyForm userModifyForm, Model model) {
		userService.modifyUserInfo(userModifyForm);
		User loginUser = (User) SessionUtils.getAttribute("LOGIN_USER");
		User user = userService.getUserDetail(loginUser.getId());
		model.addAttribute("user", user);
		
		return "redirect:/user/modifyform";
	}
	
	// 내 정보 -> 비밀번호 변경
	@GetMapping("/changePw")
	public String changepw() {
		
		return "user/changePw";
	}
	
	// 내 정보 -> 문의 내역
	@GetMapping("/inquery")
	public String inquery() {
		
		return "user/inquery";
	}
	
	// 내 정보 -> 탈퇴 요청
	@GetMapping("/withdrawal")
	public String withdrawal() {
		
		return "user/withdrawal";
	}
	
	
}
