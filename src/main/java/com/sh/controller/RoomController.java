package com.sh.controller;



import java.io.IOException;
import java.util.List;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.bind.support.SessionStatus;

import com.sh.service.RoomService;
import com.sh.vo.Room;
import com.sh.vo.RoomAmenity;
import com.sh.vo.RoomCategory;
import com.sh.vo.RoomInfo;
import com.sh.vo.RoomOptions;
import com.sh.web.form.RoomReservationForm;

@Controller
@RequestMapping("/room")
@SessionAttributes("roomReservationForm")
public class RoomController {

	@Autowired
	private RoomService roomService;
	
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
	public String roomRev1(@RequestParam(name="location", required = false)String locationName , Model model) {
		
		model.addAttribute("locations", roomService.getAllLocations());
		model.addAttribute("roomCategories", roomService.getAllRoomCategories());
		model.addAttribute("rooms", roomService.getAllRooms());
		model.addAttribute("roomReservationForm", new RoomReservationForm());
		
		return "room/roomRev1";
	}
	
	//1-1 객실 검색 
	@GetMapping(path="/roomRev1/search")
	@ResponseBody
	public List<Room> searchRoom(@RequestParam("rooms")int locationNo) {
		return roomService.getRoomByLocationNo(locationNo);
	}
	
	//2 - 옵션 선택 
	@PostMapping(path="/roomRev2")
	public String roomRev2(@ModelAttribute("roomReservationForm") RoomReservationForm roomReservationForm, Model model) { 
		
			System.out.println(roomReservationForm);
		return "room/roomRev2";
	
	}
	//3 - 고객 정보 입력 
	@PostMapping(path="/roomRev3")
	public String roomRev3(@ModelAttribute("roomReservationForm") RoomReservationForm roomReservationForm, Model model) {
		
		System.out.println(roomReservationForm);
		return "room/roomRev3";
	}
	
	@PostMapping(path="/insert")
	public String insert( @ModelAttribute("roomReservationForm") RoomReservationForm roomReservationForm, Model model) throws IOException{ // + 로그인 
		roomService.addNewReservation(roomReservationForm);
		model.addAttribute("roomReservationForm", roomReservationForm);
		
		return "redirect:/room/complete";
	}
	//4- 예약 완료 
	@GetMapping(path="/complete")
	public String complete(Model model, SessionStatus sessionStatus, @ModelAttribute("roomReservationForm") RoomReservationForm roomReservationForm) {
		model.addAttribute("room", roomService.getAllRooms());
		model.addAttribute("roomReservationForm", roomReservationForm);
		sessionStatus.setComplete(); // 세션에 저장된 roomrevForm 객체를 clear 
		return "room/complete";
	}
	
	
}
