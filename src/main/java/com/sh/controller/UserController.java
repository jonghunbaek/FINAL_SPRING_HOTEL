package com.sh.controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.sh.service.DiningService;
import com.sh.service.UserService;
import com.sh.utils.SessionUtils;
import com.sh.vo.Coupon;
import com.sh.vo.Grade;
import com.sh.vo.PointGrade;
import com.sh.vo.PointHistory;
import com.sh.vo.RtRev;
import com.sh.vo.Qna;
import com.sh.vo.RoomRev;
import com.sh.vo.ShopOrderItem;
import com.sh.vo.User;

@Controller
@RequestMapping("/user")
public class UserController {

	@Autowired
	private UserService userService;
	
	@Autowired
	private DiningService diningService;
	
	// 마이페이지 메인
	@GetMapping("/mypage")
	public String mypage(Model model) {
		User loginUser = (User) SessionUtils.getAttribute("LOGIN_USER");
		User user = userService.getUserDetail(loginUser.getId());
		model.addAttribute("user", user);
		Grade grade = userService.getUserGrade(loginUser.getId());
		model.addAttribute("userGrade", grade);
		PointGrade pointGrade = userService.getUserPointAndGrade(loginUser.getNo());
		model.addAttribute("pg", pointGrade);
		List<PointHistory> pointHisSixMonth = userService.getPointHistorySixMonth(loginUser.getNo());
		model.addAttribute("pointHis", pointHisSixMonth);
		
		// 포인트 합산
		List<PointHistory> pointHis = userService.getPointHistory(loginUser.getNo());
		int totPoint = 0;
		for (int i = 0; i<pointHis.size(); i++) {
			PointHistory points = pointHis.get(i);
			totPoint = totPoint + points.getEarned() - points.getUsed();
		}
		userService.updateUserPointInfo(loginUser.getNo(), totPoint);
		
		return "user/mypage";
	}
	
	// 예약확인/취소 -> 객실/패키지
	@GetMapping("/room")
	public String cancleroom(Model model) {
		User loginUser = (User) SessionUtils.getAttribute("LOGIN_USER");
		User user = userService.getUserDetail(loginUser.getId());
		model.addAttribute("user", user);
		
		List<RoomRev> roomRevs = userService.getRoomRevInfo(loginUser.getNo());
		model.addAttribute("roomRevs",roomRevs);
		int itemSize = roomRevs.size();
		model.addAttribute("itemSize",itemSize);
		
		return "user/roomReservation";
	}
	// 예약확인/취소 -> 객실/패키지 -> 객실 예약 취소
	@GetMapping("/cancleRoomRev")
	public String cancleRoomRev(@RequestParam("revNo") int revNo) {
		userService.cancleRoomRev(revNo);
		return "redirect:/user/room";
	}
	// 예약확인/취소 -> 객실/패키지 -> 객실 재예약
	@GetMapping("/reRoomRev")
	public String reRoomRev(@RequestParam("revNo") int revNo) {
		userService.reRoomRev(revNo);
		return "redirect:/user/room";
	}
	// 예약확인/취소 -> 객실/패키지 -> 객실 예약내역 삭제
	@GetMapping("/deleteRoomRev")
	public String deleteRoomRev(@RequestParam("revNo") int revNo) {
		userService.deleteRoomRev(revNo);
		return "redirect:/user/room";
	}
	
	// 예약확인/취소 -> 다이닝
	@GetMapping("/dining")
	public String cancledining(Model model) {
		User loginUser = (User) SessionUtils.getAttribute("LOGIN_USER");
		User user = userService.getUserDetail(loginUser.getId());
		List<RtRev> rtRevs = diningService.getRtRevsByUserId(loginUser.getId());
		model.addAttribute("user", user);
		model.addAttribute("rtRevs", rtRevs);
		
		for (int i = 0; i < rtRevs.size(); i++) {
			 System.out.println(i);
	         System.out.println(rtRevs.get(i));
	    }
		return "user/diningReservation";
	}
	

	// 비로그인상태 -> 예약확인 -> 로그인 -> 다이닝
	@PostMapping("/dining")
	public String loginDining(Model model, @RequestParam("id") String id, @RequestParam("password") String password, HttpSession httpSession) {
		User user = userService.login(id, password);
		httpSession.setAttribute("LOGIN_USER", user);
		List<RtRev> rtRevs = diningService.getRtRevsByUserId(id);
		model.addAttribute("user", user);
		model.addAttribute("rtRevs", rtRevs);
		for (int i = 0; i < rtRevs.size(); i++) {
			 System.out.println(i);
	         System.out.println(rtRevs.get(i));
	    }
		
		return "/user/diningReservation";
	}
	
	// 예약확인/취소 -> 다이닝 -> 다이닝 상세페이지
	@GetMapping("/diningInfo")
	public String diningInfo(Model model, @RequestParam("rtRevNo") String revNo) {
		User loginUser = (User) SessionUtils.getAttribute("LOGIN_USER");
		User user = userService.getUserDetail(loginUser.getId());
		RtRev rtRev =  diningService.getReservationByNo(revNo);
		
		model.addAttribute("rtRev", rtRev);
		model.addAttribute("user", user);
		
		return "user/diningReservationInfo";
	}
	
	// 스프링 샵 -> 상품 구매내역
	@GetMapping("/shop")
	public String shop(Model model) {
		User loginUser = (User) SessionUtils.getAttribute("LOGIN_USER");
		User user = userService.getUserDetail(loginUser.getId());
		model.addAttribute("user", user);
		
		List<ShopOrderItem> orderItems = userService.getOrderItemsInfo(loginUser.getNo());
		model.addAttribute("orderItems",orderItems);
		int itemSize = orderItems.size();
		model.addAttribute("itemSize",itemSize);
		
		return "user/shop";

	}
	// 스프링 샵 -> 상품 구매내역 -> 상품 주문 취소
	@GetMapping("/cancleOrder")
	public String cancleOrder(@RequestParam("orderNo") int orderNo) {
		userService.cancleOrder(orderNo);
		return "redirect:/user/shop";
	}
	// 스프링 샵 -> 상품 구매내역 -> 재주문
	@GetMapping("/reorder")
	public String reorder(@RequestParam("orderNo") int orderNo) {
		userService.reorder(orderNo);
		return "redirect:/user/shop";
	}
	// 스프링 샵 -> 상품 구매내역 -> 주문내역 삭제
	@GetMapping("/deleteOrder")
	public String deleteOrder(@RequestParam("orderNo") int orderNo) {
		userService.deleteOrder(orderNo);
		return "redirect:/user/shop";
	}
	
	// 포인트	조회
	@GetMapping("/point")
	public String points(Model model) {
		User loginUser = (User) SessionUtils.getAttribute("LOGIN_USER");
		
		User user = userService.getUserDetail(loginUser.getId());
		model.addAttribute("user", user);
		List<PointHistory> pointHis = userService.getPointHistory(loginUser.getNo());
		model.addAttribute("pointHis", pointHis);
		
		// 포인트 합산
		int totPoint = 0;
		for (int i = 0; i<pointHis.size(); i++) {
			PointHistory points = pointHis.get(i);
			totPoint = totPoint + points.getEarned() - points.getUsed();
		}
		userService.updateUserPointInfo(loginUser.getNo(), totPoint);
		
		return "user/pointInfo";
	}
	
	// 쿠폰함
	@GetMapping("/coupon")
	public String coupon(Model model) {
		User loginUser = (User) SessionUtils.getAttribute("LOGIN_USER");
		User user = userService.getUserDetail(loginUser.getId());
		model.addAttribute("user", user);
		List<Coupon> coupons = userService.getCouponInfo(loginUser.getNo());
		model.addAttribute("coupons",coupons);
		int itemSize = coupons.size();
		model.addAttribute("itemSize",itemSize);
		
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
	// 프로필 수정 폼 - 이메일 중복체크
	@PostMapping(path="/emailCheck")
	@ResponseBody
	public int emailCheck(@RequestParam("email") String email) {
		int check = userService.emailCheck(email);
		return check;
	}
	// 프로필 수정 폼 - 프로필 변경
	@PostMapping(path="/modifyProfile")
	public String modifyProfile(@RequestParam("email") String email, @RequestParam("tel") String tel) {
		User loginUser = (User) SessionUtils.getAttribute("LOGIN_USER");
		loginUser.setEmail(email);
		loginUser.setTel(tel);
		userService.modifyUserInfo(loginUser);

		return "redirect:/user/modify";
	}
//	// 프로필 수정 폼 - 비밀번호 찾기
//	@PostMapping(path ="/findPassword")
//	@ResponseBody
//	public String findPassword(@RequestParam("id") String id, @RequestParam("email") String email) {
//		String password = userService.findPw(id, email);
//		return password;
//	}
//	// 프로필 수정 폼 -  아이디 찾기
//	@PostMapping(path ="/findId")
//	@ResponseBody
//	public String findId(@RequestParam("name") String name, @RequestParam("email") String email) {
//		String id = userService.findId(name, email);
//		return id;
//	}
	
	// 내 정보 -> 비밀번호 변경
	@GetMapping("/changePw")
	public String changepw() {
		
		return "user/changePw";
	}
	// 비밀번호 변경 폼 - 기존 password 체크
	@PostMapping(path="/passwordCheck")
	@ResponseBody
	public int passwordCheck(@RequestParam("password") String password) {
		User loginUser = (User) SessionUtils.getAttribute("LOGIN_USER");
		int check = userService.passwordCheck(loginUser.getId(), password);
		return check;
	}
	// 비밀번호 변경 폼 - 비밀번호 변경
	@PostMapping("/passwordChange")
	public String passwordChange(@RequestParam("password2") String password) {
		User loginUser = (User) SessionUtils.getAttribute("LOGIN_USER");
		loginUser.setPassword(password);
		userService.modifyUserInfo(loginUser);
		
		return "redirect:/user/changePw";
	}
	
	// 내 정보 -> 문의 내역
	@GetMapping("/inquery")
	public String inquery(Model model) {
		User loginUser = (User) SessionUtils.getAttribute("LOGIN_USER");
		User user = userService.getUserDetail(loginUser.getId());
		model.addAttribute("user", user);
		
		List<Qna> inquery = userService.getQnaInfo(loginUser.getNo()); 
		model.addAttribute("inquery",inquery);
		int itemSize = inquery.size();
		model.addAttribute("itemSize",itemSize);
		
		return "user/inquery";
	}
	
	// 내 정보 -> 탈퇴 요청
	@GetMapping("/withdrawal")
	public String withdrawal(Model model) {
		User loginUser = (User) SessionUtils.getAttribute("LOGIN_USER");
		User user = userService.getUserDetail(loginUser.getId());
		model.addAttribute("user", user);
		
		return "user/withdrawal";
	}
	// 탈퇴요청 -> (비밀번호 확인) -> 탈퇴요청 폼
	@PostMapping("/withdrawalform")
	public String passwordCheck2(@RequestParam("password") String password, Model model) {
		User loginUser = (User) SessionUtils.getAttribute("LOGIN_USER");
		User user = userService.checkPassword(loginUser.getNo(), password);
		model.addAttribute("user",user);
		
		return "user/withdrawalform";
	}
	// 탈퇴신청
	@PostMapping("/confirmWithdrawal")
	public String confirmWithdrawal(Model model) {
		User loginUser = (User) SessionUtils.getAttribute("LOGIN_USER");
		userService.deleteUser(loginUser.getNo());
		
		return "redirect:/";
	}
	
	
}
