package com.sh.vo;

import java.util.Date;

import org.apache.ibatis.type.Alias;

import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
import lombok.ToString;
@NoArgsConstructor
@Getter
@Setter
@ToString
@Alias("ShopProduct")
public class ShopProduct {
	
	private int no;
	private String name;
	private String imageName;
	private String detail;
	private String composition;
	private String caution;
	private String additionalInfo;
	private String isOnSale;
	private Date minDate;
	private Date maxDate;
	private Date createdDate;
	private Date updatedDate;
	private ShopMainCategory mainCategory;
	private ShopSubCategory subCategory;
	private ShopBusiness business;
	private Location location;
	private int price;
	private int discountRate;
	private String deleted;
	
	public ShopProduct(int no, String businessName) {
		this.mainCategory = new ShopMainCategory(no);
		this.business = new ShopBusiness(businessName);
	};


}
