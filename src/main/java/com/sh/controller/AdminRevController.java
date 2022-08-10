package com.sh.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.SessionAttributes;

import com.sh.service.AdminRevService;
import com.sh.vo.RoomRev;

@Controller
@RequestMapping("/admin")
@SessionAttributes("LOGIN_ADMIN")
public class AdminRevController {

	@Autowired
	private AdminRevService adminRevService;
	
	// 객실 예약현황 페이지 요청
	@GetMapping(path = "/roomrev")
	public String roomRev(Model model) {

		List<RoomRev> roomRevs = adminRevService.getAllRoomRevList();
		model.addAttribute("roomRevs", roomRevs);
		return "admin/reservation/roomrev";
	}
}
