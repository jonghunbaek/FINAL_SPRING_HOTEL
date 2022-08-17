package com.sh.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/room")
public class RoomController {

//객실 메인페이지 
	@GetMapping(path="/roomHome")
	public String home() {
		
		return "room/roomHome";
	}

//객실 상세페이지
	@GetMapping(path="/roomDetail")
	public String detail() {
		
		return "room/roomDetail";
	}
	
//예약
	//1 - 호텔, 날짜, 인원 선택
	@GetMapping(path="/roomRev1")
	public String roomRev1() {
		
		return "room/roomRev1";
	}
	
	//2 - 옵션 선택 
	@GetMapping(path="/roomRev2")
	public String roomRev2() {
		
		return "room/roomRev2";
	}
	//3 - 고객 정보 입력 
	@GetMapping(path="/roomRev3")
	public String roomRev3() {
		
		return "room/roomRev3";
	}
	
	@GetMapping(path="/completed")
	public String completed() {
		
		return "room/completed";
	}
	
}
