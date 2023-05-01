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

import com.sh.criteria.AdminDnRevCriteria;
import com.sh.criteria.AdminRoomRevCriteria;
import com.sh.criteria.AdminRtRevCriteria;
import com.sh.service.AdminRevService;
import com.sh.vo.Pagination;
import com.sh.vo.Room;
import com.sh.vo.RoomRev;
import com.sh.vo.RtRev;
import com.sh.vo.User;
import com.sh.web.form.AdminAddRevForm;
import com.sh.web.form.AdminRoomRevUpdateForm;
import com.sh.web.form.DiningReservationForm;

@Controller
@RequestMapping("/admin")
@SessionAttributes("LOGIN_ADMIN")
public class AdminRevController {

	@Autowired
	private AdminRevService adminRevService;
	
	// ------------------------------------------신규예약 등록---------------------------------------------------
	// 예약 종류 선택페이지
	@GetMapping(path = "/addrev")
	public String addRev() {
		return "admin/reservation/addrev";
	}
	
	/**
	 * 예약 등록 페이지 고객 검색
	 * @param keyword
	 * @return
	 */
	@PostMapping(path = "/addrev/user")
	@ResponseBody
	public List<User> searchUser(String keyword) {
		return adminRevService.getUserByName(keyword);
	}
	
	// ------------------------------------------객실 신규예약 등록---------------------------------------------------
	// 객실 예약등록 페이지
	@GetMapping(path = "/addrevroom")
	public String addRevRoom() {
		return "admin/reservation/addrevroom";
	}
	
	// 객실 예약등록 페이지 객실 검색
	@GetMapping(path = "/addrevroom/room")
	@ResponseBody
	public List<Room> searchRoom(AdminRoomRevCriteria adminRoomRevCriteria) {
		return adminRevService.getAllRoomByFilter(adminRoomRevCriteria);
	}
	
	// 객실 예약등록 페이지 신규 객실 예약등록
	@PostMapping(path = "/addrevroomform")
	public String addRevRoom(AdminAddRevForm adminAddRevForm) {
		adminRevService.insertNewRoomRev(adminAddRevForm);
		return "admin/reservation/complete";
	}
	
	// ------------------------------------------다이닝 신규예약 등록---------------------------------------------------
	// 다이닝 예약등록 페이지
	@GetMapping(path = "/addrevdining")
	public String addRevDining() {
		return "admin/reservation/addrevdining";
	}
	
	// 다이닝 필터조회 후 불가날짜 리턴, 추가 -------- dn_no도 같이 보냄
	@GetMapping(path = "/addrevdining/dn")
	@ResponseBody
	public Map<String, Object> searchDining(AdminDnRevCriteria adminDnRevCriteria) {
		return adminRevService.getRtSelectableDate(adminDnRevCriteria);
	}
	

	@GetMapping(path = "/addrevdining/checkDnDate")
	@ResponseBody
	public List<String> checkDnDate(AdminDnRevCriteria adminDnRevCriteria) {
		return adminRevService.getMealTime(adminDnRevCriteria);
	}
	
	// 객실 예약등록 페이지 신규 객실 예약등록
	@PostMapping(path = "/addrevdiningform")
	public String addRevRoom(DiningReservationForm diningReservationForm) {
		adminRevService.insertNewDiningRev(diningReservationForm);
		return "admin/reservation/complete";
	}
	
	// ------------------------------------------객실예약조회관련---------------------------------------------------
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
	
	/**
	 * 객실 예약현황 조건 별 페이지 요청
	 * @param adminRoomRevCriteria
	 * @return
	 */
	@GetMapping(path = "/roomrev/filter")
	@ResponseBody
	public Map<String, Object> Filter(AdminRoomRevCriteria adminRoomRevCriteria) {
		return adminRevService.filterRev(adminRoomRevCriteria);
	}
	
	// 객실 예약정보 상세조회
	@GetMapping(path = "/roomrev/detail")
	@ResponseBody
	public RoomRev detail(int revNo) {
		return adminRevService.getRoomRevDetailByNo(revNo);
	}
	
	// 객실 예약 상세정보 수정
	@PostMapping(path = "/roomrev/updateRoomRevDetail")
	@ResponseBody
	public void updateRoomRevDetail(AdminRoomRevUpdateForm adminRoomRevUpdateForm) {
		System.out.println(adminRoomRevUpdateForm.getAdult());
		adminRevService.updateRoomRevDetailByNo(adminRoomRevUpdateForm);
	}
	
	// 객실 예약 상세정보 체크인 기간 수정시 선택불가 기간 조회
	@GetMapping(path = "/roomrev/checkPeriod")
	@ResponseBody
	public List<RoomRev> checkPeriod(String revNo) {
		return adminRevService.getPeriodByNo(Integer.parseInt(revNo));
	}
	
	// 체크된 예약정보 삭제
	@GetMapping(path = "/roomrev/delete")
	@ResponseBody
	public void deleteChecked(@RequestParam(name = "revNo") List<String> revNos) {
		for(int i=0; i<revNos.size(); i++) {
			System.out.println("test-------------------" + revNos.get(i));
		}
		adminRevService.deleteCheckedByNo(revNos);
	}
	
	// ------------------------------------------다이닝예약조회관련---------------------------------------------------
	// 다이닝예약현황 페이지
	@GetMapping(path = "/diningrev")
	public String diningRev(@RequestParam(name = "page" , required = false, defaultValue = "1") String pageNo, Model model) {

		 int totalRows = adminRevService.getTotalRowsDn(); 
		 Pagination pagination = new Pagination(totalRows, Integer.parseInt(pageNo));
		 
		 List<RtRev> rtRevs = adminRevService.getAllRtRevList(pagination);
		 model.addAttribute("rtRevs", rtRevs); model.addAttribute("pagination", pagination);
	
		return "admin/reservation/diningrev";
	}
	
	// 다이닝 예약현황 조건 별 페이지 요청
	@GetMapping(path = "/diningrev/filter")
	@ResponseBody
	public Map<String, Object> FilterRevRt(AdminRtRevCriteria adminRtRevCriteria) {
		return adminRevService.filterRevRt(adminRtRevCriteria);
	}
	
	// 다이닝 예약정보 상세조회
	@GetMapping(path = "/diningrev/detail")
	@ResponseBody
	public Map<String, Object> detailRt(int revNo) {
		return adminRevService.getRtRevDetailByNo(revNo);
	}
}
