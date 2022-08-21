package com.sh.service;

import java.util.List;

import com.sh.vo.ShopProduct;

public interface ShopService {
	
	List<ShopProduct> getAllProductsByMainCategoryNo(int mainCategoryNo);
	ShopProduct getProductDetail(int no);
	
}
