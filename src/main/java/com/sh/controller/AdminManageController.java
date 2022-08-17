package com.sh.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.SessionAttributes;

import com.sh.service.AdminManageService;
import com.sh.vo.Pagination;
import com.sh.vo.Room;

@Controller
@RequestMapping("/admin")
@SessionAttributes("LOGIN_ADMIN")
public class AdminManageController {

	@Autowired
	private AdminManageService adminManageService;
	
	// 객실관리 페이지 요청
	@GetMapping(path = "/room")
	public String roomRev(@RequestParam(name = "page" , required = false, defaultValue = "1") String pageNo, Model model) {
		
		int totalRows = adminManageService.getRoomManageTotalRows();
		Pagination pagination = new Pagination(totalRows, Integer.parseInt(pageNo));
		
		List<Room> rooms = adminManageService.getAllRoomManageList(pagination);
		model.addAttribute("rooms", rooms);
		model.addAttribute("pagination", pagination);
		
		return "admin/manage/room";
	}
}
