package com.sh.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.sh.criteria.ShopProductListCriteria;
import com.sh.service.ShopService;
import com.sh.vo.ShopProduct;

@Controller
@RequestMapping("/shop")
public class ShopController {
	
	@Autowired
	private ShopService shopService;

	//쇼핑몰 홈
	@GetMapping(path="")
	public String shop() {
		return "shop/home";
	}

//	//카테고리별 상품리스트
//	// shop/list?no=?
//	@GetMapping(path="/list")
//	public String mainList(int mainCategoryNo, Model model) {
//		List<ShopProduct> products = shopService.getAllProductsByMainCategoryNo(mainCategoryNo);
//		model.addAttribute("shopList", products);
//		return "shop/list";
//	}
	
	//상품리스트
	@GetMapping(path="/list")
	public String mainSubList(Model model, ShopProductListCriteria shoplistCriteria) {
		System.out.println(shoplistCriteria);
		List<ShopProduct> products = shopService.getAllProductsByParameters(shoplistCriteria);
		model.addAttribute("shopList", products);
		return "shop/list";
	}	
	
	//상품상세페이지
	// shop/detail?no=14
	@GetMapping(path="/detail")
	public String productDetail(int no, Model model) {
		ShopProduct product = shopService.getProductDetail(no);
		model.addAttribute("product", product);
		return "shop/detail";
	}
	
	//비회원주문조회
	@GetMapping(path="/nomem/orderist")
	public String nomemOrderList() {
		return "shop/nomem/nomemOrderList";
	}
	
}
