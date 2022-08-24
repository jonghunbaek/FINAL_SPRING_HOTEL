package com.sh.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import com.sh.criteria.ShopProductListCriteria;
import com.sh.vo.ShopAdditionalImages;
import com.sh.vo.ShopPickOrShip;
import com.sh.vo.ShopProduct;

@Mapper
public interface ShopMapper {

	//list
	List<ShopProduct> getAllProductsByMainCategoryNo(int mainCategoryNo);
	List<ShopProduct> getProductsByParameters(ShopProductListCriteria shoplistCriteria);
	
	//search
	List<ShopProduct> getProductsByKeywords(String[] keywords);
	
	//home
	List<ShopProduct> getPopularProductsbySoldNo();
	List<ShopProduct> getProductsByDiscountRate();
	
	
	//detail
	ShopProduct getProductByNo(int no);
	List<ShopProduct> getProductOptionsByNo(int no);
	List<ShopAdditionalImages> getAdditionalImagesByNo(int no);
	List<ShopPickOrShip> getGettingMethodsByNo(int no);
}
