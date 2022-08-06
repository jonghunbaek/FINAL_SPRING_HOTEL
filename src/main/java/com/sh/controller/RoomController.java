package com.sh.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/room")
public class RoomController {

//  객실 메인페이지 
	@GetMapping(path="/roomHome")
	public String main() {
		return "/room/roomHome";
	}

//	객실 상세페이지
	@GetMapping(path="/roomDetail")
	public String detail() {
		return "/room/roomDetail";
	}
	
//	예약
	//1
	@GetMapping(path="/roomRev1")
	public String roomRev1() {
		//
		return "/room/roomRev1";
	}
	
	//2
	@GetMapping(path="/roomRev2")
	public String roomRev2() {
		//
		return "/room/roomRev2";
	}
	
}
