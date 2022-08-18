package com.sh.controller;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.SessionAttributes;

import com.sh.criteria.AdminRoomManageCriteria;
import com.sh.service.AdminManageService;
import com.sh.vo.Pagination;
import com.sh.vo.Room;
import com.sh.web.form.AdminRoomRequestUpdateForm;

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
	
	@GetMapping(path = "/room/filter")
	@ResponseBody
	public Map<String, Object> Filter(AdminRoomManageCriteria adminRoomManageCriteria) {
		return adminManageService.filterRoom(adminRoomManageCriteria);
	}
	
	// 객실 특이사항 조회
	@GetMapping(path = "/room/request")
	@ResponseBody
	public Room request(int id) {
		return adminManageService.getRoomRequestById(id);
	}
	
	// 객실 특이사항 수정
	@PostMapping(path = "/room/updateRoomRequest")
	@ResponseBody
	public void updateRoomRequest(AdminRoomRequestUpdateForm adminRoomRequestUpdateForm) {
		adminManageService.updateRoomRequestById(adminRoomRequestUpdateForm);
	}
	
	// 체크된 객실 보수요청
	@GetMapping(path = "/room/fix")
	@ResponseBody
	public void fixChecked(@RequestParam(name = "id") List<String> ids) {
		for(int i=0; i<ids.size(); i++) {
			System.out.println("test-------------------" + ids.get(i));
		}
		adminManageService.fixCheckedById(ids);
	}
	
	// 체크된 객실 보수완료
	@GetMapping(path = "/room/complete")
	@ResponseBody
	public void completeChecked(@RequestParam(name = "id") List<String> ids) {
		for(int i=0; i<ids.size(); i++) {
			System.out.println("test-------------------" + ids.get(i));
		}
		adminManageService.completeCheckedById(ids);
	}
}
