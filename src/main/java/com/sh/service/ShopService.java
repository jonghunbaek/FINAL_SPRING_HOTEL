package com.sh.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.sh.criteria.ShopProductListCriteria;
import com.sh.mapper.ShopMapper;
import com.sh.vo.ShopAdditionalImages;
import com.sh.vo.ShopPickOrShip;
import com.sh.vo.ShopProduct;

@Service
public class ShopService {

	@Autowired
	public ShopMapper shopMapper;
	
	//home.jsp에 들어갈 메소드
	public List<ShopProduct> getSixPopulars() {
		List<ShopProduct> populars = shopMapper.getPopularProductsbySoldNo();
		return populars;
	}
	
	public List<ShopProduct> getProductsWithDiscount() {
		List<ShopProduct> discounts = shopMapper.getProductsByDiscountRate();
		return discounts;
	}
	
//	public List<ShopProduct> getAllProductsByMainCategoryNo(int mainCategoryNo) {
//	List<ShopProduct> products = shopMapper.getAllProductsByMainCategoryNo(mainCategoryNo);
//	return products;
//}
	
	//list.jsp에 들어갈 메소드
	public List<ShopProduct> getAllProductsByParameters(ShopProductListCriteria shoplistCriteria) {
		List<ShopProduct> products = shopMapper.getProductsByParameters(shoplistCriteria);
		return products;
	}

	// detail.jsp에 들어갈 메소드
	public ShopProduct getProductDetail(int no) {
		ShopProduct product = shopMapper.getProductByNo(no);
		return product;
	}
	
	public List<ShopProduct> getProductOptions(int no) {
		List<ShopProduct> options = shopMapper.getProductOptionsByNo(no);
		return options;
	}
	
	public List<ShopAdditionalImages> getAdditionalImages(int no) {
		List<ShopAdditionalImages> images = shopMapper.getAdditionalImagesByNo(no);
		return images;
	}
	
	public List<ShopPickOrShip> getGettingMethods(int no) {
		List<ShopPickOrShip> methods = shopMapper.getGettingMethodsByNo(no);
		return methods;
	}
	



}
