package com.sh.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.sh.service.UserService;

@Controller
@RequestMapping("/user")
public class UserController {

	@Autowired
	private UserService userService;
	
	// 마이페이지 메인
	@GetMapping("/mypage")
	public String mypage() {
		
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
	public String modify() {
		
		return "user/modify";
	}
	
	// 내 정보 -> 프로필 수정 -> 프로필 수정 폼
	@GetMapping("/modifyform")
	public String modifyform() {
		
		return "user/modifyform";
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
