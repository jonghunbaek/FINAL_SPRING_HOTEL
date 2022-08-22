package com.sh.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import com.sh.vo.ShopProduct;

@Mapper
public interface ShopMapper {

	List<ShopProduct> getAllProductsByMainCategoryNo(int mainCategoryNo);
	List<ShopProduct> getAllProductsBySubCategoryNo(int subCategoryNo);
	
	ShopProduct getProductByNo(int no);
	
}
