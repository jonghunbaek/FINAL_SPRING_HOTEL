package com.sh.controller;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.sh.criteria.ShopProductListCriteria;
import com.sh.service.ShopService;
import com.sh.vo.ShopAdditionalImages;
import com.sh.vo.ShopPickOrShip;
import com.sh.vo.ShopProduct;

@Controller
@RequestMapping("/shop")
public class ShopController {
	
	@Autowired
	private ShopService shopService;

	//쇼핑몰 홈
	@GetMapping(path="")
	public String shop(Model model) {
		List<ShopProduct> populars = shopService.getSixPopulars();
		List<ShopProduct> discounts = shopService.getProductsWithDiscount();
		model.addAttribute("popularlist", populars);
		model.addAttribute("discountedlist", discounts);
//		System.out.println(populars);
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
//		System.out.println(shoplistCriteria);
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
		
		List<ShopProduct> options = shopService.getProductOptions(no);
		model.addAttribute("optionsList", options);
		
		List<ShopAdditionalImages> images = shopService.getAdditionalImages(no);
		model.addAttribute("imageList", images);
		
		List<ShopPickOrShip> methods = shopService.getGettingMethods(no);
		model.addAttribute("methodList", methods);
		
		return "shop/detail";
	}
	
	//비회원주문조회
	@GetMapping(path="/nomem/orderist")
	public String nomemOrderList() {
		return "shop/nomem/nomemOrderList";
	}
	
	//검색결과
	@GetMapping(path="/search/list")
	public String search(String keyword, Model model) {
//		String chagedKeyword = keyword.replace("\\s", "|");
//		System.out.println(chagedKeyword);
		String[] keywords = keyword.split("\\s");
		System.out.println(Arrays.toString(keywords));
		List<ShopProduct> searchResults = shopService.getSearchResults(keywords);
		model.addAttribute("productList", searchResults);
		return "shop/search/list";
	}
	
}
