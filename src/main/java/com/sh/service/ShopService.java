package com.sh.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.sh.criteria.ShopProductListCriteria;
import com.sh.mapper.ShopMapper;
import com.sh.vo.ShopProduct;

@Service
public class ShopService {

	@Autowired
	public ShopMapper shopMapper;
	
	public ShopProduct getProductDetail(int no) {
		ShopProduct product = shopMapper.getProductByNo(no);
		return product;
	}
	
//	public List<ShopProduct> getAllProductsByMainCategoryNo(int mainCategoryNo) {
//		List<ShopProduct> products = shopMapper.getAllProductsByMainCategoryNo(mainCategoryNo);
//		return products;
//	}

	public List<ShopProduct> getAllProductsByParameters(ShopProductListCriteria shoplistCriteria) {
		List<ShopProduct> products = shopMapper.getProductsByParameters(shoplistCriteria);
		return products;
	}


}
