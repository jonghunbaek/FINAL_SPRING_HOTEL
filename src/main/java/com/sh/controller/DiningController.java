package com.sh.controller;

import java.io.IOException;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Random;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.format.annotation.DateTimeFormat;
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

import com.sh.exception.ApplicationException;
import com.sh.service.DiningService;
import com.sh.service.UserService;
import com.sh.utils.DateUtils;
import com.sh.utils.SessionUtils;
import com.sh.vo.Dn;
import com.sh.vo.RtRev;
import com.sh.vo.RtRevCount;
import com.sh.vo.User;
import com.sh.web.form.DiningReservationForm;

@Controller
@RequestMapping("/dining")
@SessionAttributes({"diningReservationForm"})

/*
 * @SessionAttributes Model 객체에 저장되는 객체 중에서 지정된 속성명으로 저장되는 것만 HttpSession객체에
 * 저장시킨다.
 */
public class DiningController {

	@Autowired
	private DiningService diningService;
	
	@Autowired
	private UserService userService;
	
	// 예약페이지 1
	@GetMapping("/step1")
	public String step1(@RequestParam(name="diningNo", required=false) Integer diningNo, Model model) {
//		int dining = Integer.valueOf(diningNo);
		
		model.addAttribute("locations", diningService.getAllLocations());
//		model.addAttribute("hotel", diningService.getLocationNoByDiningNo(dining));
//		model.addAttribute("dining", diningService.getDiningByNo(dining));
		
		return "dining/step1";
	}
	
	// 예약페이지1_지역호텔찾기
	@GetMapping("/search")
	@ResponseBody
	public List<Dn> search(@RequestParam("hotel") int locationNo) {
		return diningService.getDiningByLocationNo(locationNo);
	}
	
	// 예약페이지1_호텔상세정보
	@GetMapping("/info")
	@ResponseBody
	public Dn info(@RequestParam("dining") int diningNo) {
		return diningService.getDiningByNo(diningNo);
	}
	
	// 예약페이지2
	@GetMapping("/step2")
	public String step2(@RequestParam("dining") int diningNo, Model model) {
		
		model.addAttribute("dining", diningService.getDiningByNo(diningNo));
		model.addAttribute("diningRev", diningService.getDiningRevByNo(diningNo));
		model.addAttribute("mealTimes", diningService.getMealTimeByNo(diningNo));
		model.addAttribute("diningReservationForm", new DiningReservationForm());
		return "dining/step2";
	}
	
	// 예약페이지2_식당 예약시간 조회
	@GetMapping("/time")
	@ResponseBody
	public List<String> time(@DateTimeFormat(pattern = "yyyy-MM-dd") Date date,  @RequestParam("diningNo") int diningNo, @RequestParam("mealTime") String mealTime) {
		Calendar calender = Calendar.getInstance();
		calender.setTimeInMillis(date.getTime());
		int dayOfWeak = calender.get(Calendar.DAY_OF_WEEK);
		if (dayOfWeak == 1|| dayOfWeak == 7) {
			System.out.println(diningService.getTimeByParaMeters("weekend", diningNo, mealTime));
			return diningService.getTimeByParaMeters("weekend", diningNo, mealTime);
		} else {
			return diningService.getTimeByParaMeters("weekday", diningNo, mealTime);
		}
	}
	
	@GetMapping("/lookUpSeat")
	@ResponseBody
	public Map<String, String> lookUpSeat(@DateTimeFormat(pattern = "yyyy-MM-dd") Date date, @RequestParam("diningNo") int diningNo, @RequestParam("seat") String seatType, @RequestParam("adult") int adult, @RequestParam("child") int child, @RequestParam("baby") int baby) {
		
		Map<String, String> seatImPossible = diningService.lookUpSeat(date, diningNo, seatType, adult, child, baby);
		
		return seatImPossible;
	}
	
	
	// 예약페이지2_로그인
	@PostMapping("/logIn")
	public String logIn(@ModelAttribute("diningReservationForm") DiningReservationForm diningReservationForm, @RequestParam("userId") String userId, @RequestParam("password") String password, @RequestParam("diningNo") int diningNo, Model model, HttpSession httpSession) throws ParseException{
		User user = userService.login(userId, password);
		httpSession.setAttribute("LOGIN_USER", user);
		
		String dnMealTime = "";
		if(diningReservationForm.getMealTime().equals("lunch")) {
			dnMealTime = "런치";
		} else if(diningReservationForm.getMealTime().equals("dinner")){
			dnMealTime = "디너";
		} else {
			dnMealTime = "브런치";
		}
		String day = DateUtils.getDayByDate(diningReservationForm.getDate());
		
		model.addAttribute("dining", diningService.getDiningByNo(diningReservationForm.getDiningNo()));
		model.addAttribute("diningReservationForm", diningReservationForm);
		model.addAttribute("day", day);
		model.addAttribute("mealTime", dnMealTime);
		model.addAttribute("allergies", diningService.getAllAllergies());
		
		return "/dining/step3";
	}
	
//	// 예약페이지2_로그인
//	@GetMapping("/logIn")
//	public String logIn(@ModelAttribute("diningReservationForm") DiningReservationForm diningReservationForm, Model model) {
//		
//		model.addAttribute("diningReservationForm", diningReservationForm);
//		
//		return "dining/step3";
//	}
	
	// 세션상 로그인 유저 체크
	@GetMapping("logInCheck")
	@ResponseBody	
	public Map<String, Boolean> logInCheck() {
		User user = (User)SessionUtils.getAttribute("LOGIN_USER");
		Map<String, Boolean> map = new HashMap<String, Boolean>();
		
		map.put("isLogined", user != null ? true : false);
		
		return map;
	}
	
	// 예약페이지3
	@PostMapping("/step3")
	public String step3(@ModelAttribute("diningReservationForm") DiningReservationForm diningReservationForm, Model model) throws java.text.ParseException {
		String dnMealTime = "";
		if(diningReservationForm.getMealTime().equals("lunch")) {
			dnMealTime = "런치";
		} else if(diningReservationForm.getMealTime().equals("dinner")){
			dnMealTime = "디너";
		} else {
			dnMealTime = "브런치";
		}
	
		String day = DateUtils.getDayByDate(diningReservationForm.getDate());
		
		model.addAttribute("dining", diningService.getDiningByNo(diningReservationForm.getDiningNo()));
		model.addAttribute("diningReservationForm", diningReservationForm);
		model.addAttribute("day", day);
		model.addAttribute("mealTime", dnMealTime);
		model.addAttribute("allergies", diningService.getAllAllergies());
		
		return "dining/step3";
	}
	
	// 예약페이지4
	@PostMapping("/step4")
	public String step4(@ModelAttribute("diningReservationForm") DiningReservationForm diningReservationForm, Model model, HttpSession httpSession) throws ParseException{
		
		/*
		 * User user = (User)SessionUtils.getAttribute("LOGIN_USER");
		 * httpSession.setAttribute("LOGIN_USER", user);
		 */
		
		String dnMealTime = "";
		if(diningReservationForm.getMealTime().equals("lunch")) {
			dnMealTime = "런치";
		} else if(diningReservationForm.getMealTime().equals("dinner")){
			dnMealTime = "디너";
		} else {
			dnMealTime = "브런치";
		}
		
		String day = DateUtils.getDayByDate(diningReservationForm.getDate());
		
		model.addAttribute("dining", diningService.getDiningByNo(diningReservationForm.getDiningNo()));
		model.addAttribute("diningReservationForm", diningReservationForm);
		model.addAttribute("day", day);
		model.addAttribute("mealTime", dnMealTime);
		
		return "dining/step4";
	}
	
	@PostMapping("/reservation")
	public String reservation(@ModelAttribute("diningReservationForm") DiningReservationForm diningReservationForm, Model model) throws IOException, ParseException {
		
		int leftLimit = 65; // letter 'a'
		int rightLimit = 90; // letter 'z'
		int targetStringLength = 6;
		Random random = new Random();
		StringBuilder buffer = new StringBuilder(targetStringLength);
		for (int i = 0; i < targetStringLength; i++) {
		    int randomLimitedInt = leftLimit + (int)
		            (random.nextFloat() * (rightLimit - leftLimit + 1));
		    buffer.append((char) randomLimitedInt);
		}
		String generatedString = buffer.toString();
		
		int diningNo = diningReservationForm.getDiningNo();
		int adult = diningReservationForm.getAdult();
		int baby = diningReservationForm.getBaby();
		int child = diningReservationForm.getChild();
		
		String str = diningNo + generatedString + adult + baby + child;
		
		diningReservationForm.setReservationNo(str);
		
		diningService.addReservation(diningReservationForm);
		model.addAttribute("diningReservationForm", diningReservationForm);
		
		return "redirect:/dining/complete";
	}
	
	@GetMapping("/complete")
	public String complete(@ModelAttribute("diningReservationForm") DiningReservationForm diningReservationForm, Model model, SessionStatus sessionStatus) throws ParseException {
		
		String day = DateUtils.getDayByDate(diningReservationForm.getDate());
		
		RtRevCount rtRevCount = new RtRevCount();
		rtRevCount.setCount(diningReservationForm.getAdult() + diningReservationForm.getChild() + diningReservationForm.getBaby());
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
		Date nDate = new Date(sdf.parse(diningReservationForm.getDate()).getTime());
		rtRevCount.setDate(nDate);
		rtRevCount.setDn(diningService.getDiningByNo(diningReservationForm.getDiningNo()));
		rtRevCount.setMealTime(diningReservationForm.getMealTime());
		rtRevCount.setSeatType(diningReservationForm.getSeat());
		
		diningService.addRtRevCount(rtRevCount);
		
		model.addAttribute("diningReservationForm", diningReservationForm);
		model.addAttribute("dining", diningService.getDiningByNo(diningReservationForm.getDiningNo()));
		model.addAttribute("day", day);
		
		// 세션에 "diningReservation"이름으로 저장된 객체를 clear 시킨다.
		sessionStatus.setComplete();
		
		return "dining/complete";
	}
	
	// 비회원주문확인
	@PostMapping("/loginNonMember")
	public String loginNonMember(@RequestParam("reservationNo") String reservationNo, @RequestParam("name") String name, Model model) {
		
		try {
			RtRev rtRev =  diningService.getReservationNonMember(reservationNo, name);
			model.addAttribute("rtRev", rtRev);
		} catch(ApplicationException e) {
			return "redirect:/dining/loginForm?fail=nonMemberInvalid";
		}
		
		return "dining/confirmRev";
	}
	
	// 예약조회로그인폼
	@GetMapping("/loginForm")
	public String loginForm() {
		return "dining/loginForm";
	}
	
	// 비회원예약취소
	@PostMapping("/deleteRev")
	public String deleteRev(Model model, @RequestParam("rtRevNo") String rtRevNo, @RequestParam("name") String name, @RequestParam("mealTime") String mealTime, @RequestParam("seatType") String seatType, @RequestParam("revCount") int revCount ) {
		
		diningService.deleteRtRev(rtRevNo);
		diningService.deleteRtRevCount(mealTime, seatType, revCount);
		
		try {
			RtRev rtRev =  diningService.getReservationNonMember(rtRevNo, name);
			model.addAttribute("rtRev", rtRev);
		} catch(ApplicationException e) {
			return "redirect:/dining/loginForm?fail=nonMemberInvalid";
		}
		
		return "dining/confirmRev";
	}
	
	// 회원예약취소
	@PostMapping("/deleteRevMember")
	public String deleteRevMember(Model model, @RequestParam("rtRevNo") String rtRevNo, @RequestParam("name") String name, @RequestParam("mealTime") String mealTime, @RequestParam("seatType") String seatType, @RequestParam("revCount") int revCount ) {
		
		diningService.deleteRtRev(rtRevNo);
		diningService.deleteRtRevCount(mealTime, seatType, revCount);
		
		try {
			RtRev rtRev =  diningService.getReservationNonMember(rtRevNo, name);
			model.addAttribute("rtRev", rtRev);
		} catch(ApplicationException e) {
			return "redirect:/dining/loginForm?fail=nonMemberInvalid";
		}
		
		return "redirect:/user/diningInfo?rtRevNo="+rtRevNo;
	}
	
}
