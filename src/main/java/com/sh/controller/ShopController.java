package com.sh.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/shop")
public class ShopController {

	//쇼핑몰 홈
	@GetMapping(path="/")
	public String shop() {
		return "/home";
	}

	//카테고리별 상품리스트
	// shop/list?mainCategoryNo=1&subCategoryNo=3&locationNo=4
	@GetMapping(path="/list")
	public String productList() {
		return "/list";
	}
	
	//상품상세페이지
	// shop/detail?productNo=14
	@GetMapping(path="/detail")
	public String productDetail(int productNo) {
		return "/detail";
	}
	
	//비회원주문조회
	@GetMapping(path="/nomem/orderist")
	public String nomemOrderList() {
		return "/nomem/nomemOrderList";
	}
	
}
