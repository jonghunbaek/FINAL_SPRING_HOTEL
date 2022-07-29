package com.sh.web.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class RoomController {

	@GetMapping
	public String home() {
		
		return "room/roomHome";
	}
	
	
}
