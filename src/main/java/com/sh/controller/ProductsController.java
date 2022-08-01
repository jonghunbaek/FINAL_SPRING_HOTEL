package com.sh.controller;

import org.springframework.web.bind.annotation.GetMapping;

public class ProductsController {

	@GetMapping(path = "/")
	public String home() {
		return "shop/home";
	}
	
	@GetMapping(path="/shop1")
	public String shop1() {
		return "shop/shopcategory1";
	}
	
	@GetMapping(path="/shop2")
	public String shop2() {
		return "shop/shopcategory2";
	}
	
}
