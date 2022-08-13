package com.sh.controller;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.SessionAttributes;

import com.sh.criteria.AdminRoomRevCriteria;
import com.sh.service.AdminRevService;
import com.sh.vo.Pagination;
import com.sh.vo.RoomRev;

@Controller
@RequestMapping("/admin")
@SessionAttributes("LOGIN_ADMIN")
public class AdminRevController {

	@Autowired
	private AdminRevService adminRevService;
	
	// 객실 예약현황 페이지 요청
	@GetMapping(path = "/roomrev")
	public String roomRev(@RequestParam(name = "page" , required = false, defaultValue = "1") String pageNo, Model model) {

		int totalRows = adminRevService.getTotalRows();
		Pagination pagination = new Pagination(totalRows, Integer.parseInt(pageNo));
		
		List<RoomRev> roomRevs = adminRevService.getAllRoomRevList(pagination);
		model.addAttribute("roomRevs", roomRevs);
		model.addAttribute("pagination", pagination);
		
		return "admin/reservation/roomrev";
	}
	
	// 객실 예약현황 조건 별 페이지 요청
	@GetMapping(path = "/roomrev/filter")
	@ResponseBody
	public Map<String, Object> Filter(AdminRoomRevCriteria adminRoomRevCriteria) {
		return adminRevService.filterRev(adminRoomRevCriteria);
	}
}
