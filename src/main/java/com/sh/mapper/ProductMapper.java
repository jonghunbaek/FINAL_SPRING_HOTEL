package com.sh.mapper;

import java.util.List;


import org.apache.ibatis.annotations.Mapper;

import com.sh.vo.Product;
//import com.sh.vo.ProductCategory;

@Mapper
public interface ProductMapper {
	
	Product getProductByNo(int no);
	List<Product> getProductsByName(String name);
	//List<Product> getProductByShopCategoryNo(ProductCategory shopCategoryNo);
	List<Product> getProductByPrice(int price);
	
	void insertProduct(Product product);
	void updateProduct(Product product);
	void deleteProduct(Product product);
}
