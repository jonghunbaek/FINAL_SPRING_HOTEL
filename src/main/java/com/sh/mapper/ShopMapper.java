package com.sh.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import com.sh.criteria.ShopProductListCriteria;
import com.sh.vo.ShopProduct;

@Mapper
public interface ShopMapper {

	ShopProduct getProductByNo(int no);
	
	List<ShopProduct> getAllProductsByMainCategoryNo(int mainCategoryNo);
	List<ShopProduct> getProductsByParameters(ShopProductListCriteria shoplistCriteria);
}
