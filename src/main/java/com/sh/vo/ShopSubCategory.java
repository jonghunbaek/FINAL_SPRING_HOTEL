package com.sh.vo;

import org.apache.ibatis.type.Alias;

import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
import lombok.ToString;

@NoArgsConstructor
@Getter
@Setter
@ToString
@Alias("SubCategory")
public class ShopSubCategory {

	private int subCategoryNo;
	private String subCategoryName;
	private ShopMainCategory mainCategory;
	

	public ShopSubCategory(int subCategoryNo, String subCategoryName, String mainCategoryName) {
		this.subCategoryNo = subCategoryNo;
		this.subCategoryName = subCategoryName;
		this.mainCategory = new ShopMainCategory(mainCategoryName);
	}
	
	
}
