package com.sh.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.sh.mapper.ShopMapper;
import com.sh.vo.ShopProduct;

@Service
public class ShopServiceImpl implements ShopService{

	@Autowired
	public ShopMapper shopMapper;
	
	@Override
	public List<ShopProduct> getAllProductsByMainCategoryNo(int mainCategoryNo) {
		List<ShopProduct> products = shopMapper.getAllProductsByMainCategoryNo(mainCategoryNo);
		return products;
	}

	@Override
	public ShopProduct getProductDetail(int no) {
		ShopProduct product = shopMapper.getProductByNo(no);
		return product;
	}

	



}
