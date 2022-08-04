package com.sh.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class ShopController {

	//쇼핑몰 홈
	@GetMapping(path="/shop")
	public String shop() {
		return "shop/home";
	}

	//카테고리별 상품리스트
	@GetMapping(path="/shop/productlist")
	public String productList() {
		return "shop/productList";
	}
	
	//상품상세페이지
	@GetMapping(path="/shop/productdetail")
	public String productDetail() {
		return "shop/productDetail";
	}
	
	//비회원주문조회
	@GetMapping(path="/shop/nomem/orderist")
	public String nomemOrderList() {
		return "shop/nomem/nomemOrderList";
	}
	
}
