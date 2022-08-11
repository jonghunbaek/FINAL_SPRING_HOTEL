package com.sh.controller;

import java.util.Calendar;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.format.annotation.DateTimeFormat;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.SessionAttributes;

import com.sh.service.DiningService;
import com.sh.service.UserService;
import com.sh.utils.SessionUtils;
import com.sh.vo.Dn;
import com.sh.vo.User;

@Controller
@RequestMapping("/dining")
@SessionAttributes("LOGIN_USER")
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
	public String step1(Model model) {
		
		model.addAttribute("locations", diningService.getAllLocations());
		
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
		model.addAttribute("diningRev", diningService.getDiningRevByNo(diningNo));
		model.addAttribute("mealTimes", diningService.getMealTimeByNo(diningNo));
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
	
	// 예약페이지2_로그인
	@PostMapping("/logIn")
	public String logIn(@RequestParam("id") String id, @RequestParam("password") String password, @RequestParam("loginDiningNo") int diningNo, Model model) {
		User user = userService.login(id, password);
		model.addAttribute("LOGIN_USER", user);

		return "redirect:/dining/step2?dining=" + diningNo;
	}
	
	@GetMapping("/logIn")
	public String logIn() {
		
		return "dining/step3";
	}
	
	// 세션상 로그인 유저 체크
	@GetMapping("logInCheck")
	@ResponseBody	
	public Map<String, Boolean> logInCheck() {
		User user = (User)SessionUtils.getAttribute("LOGIN_USER");
		Map<String, Boolean> map = new HashMap<String, Boolean>();
		
		map.put("isLogined", user != null ? true : false);
		
		return map;
	}
	
	
}
