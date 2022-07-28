package com.sh.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/dining")
public class DiningController {

	@GetMapping("/step1")
	public String select1() {
		
		
		return "dining/step1";
	}
}
