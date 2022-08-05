package com.sh.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.sh.service.DiningService;
import com.sh.vo.Dn;

@Controller
@RequestMapping("/dining")
public class DiningController {

	@Autowired
	private DiningService diningService;
	
	@GetMapping("/step1")
	public String step1(Model model) {
		
		model.addAttribute("locations", diningService.getAllLocations());
		
		return "dining/step1";
	}
	
	@GetMapping("/step2")
	public String step2(Model model) {
		
		return "dining/step2";
	}
	
	@GetMapping("/search")
	@ResponseBody
	public List<Dn> search(@RequestParam("hotel") int locationNo) {
		return diningService.getDiningByLocationNo(locationNo);
	}
	
	@GetMapping("/info")
	@ResponseBody
	public Dn info(@RequestParam("dining") int diningNo) {
		return diningService.getDiningByNo(diningNo);
	}
	
	
}
