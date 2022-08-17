package com.sh.vo;

import java.util.Date;

import org.apache.ibatis.type.Alias;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@Getter
@Setter
@ToString
@Alias("Product")
public class Product {
	
	private int no;
	private String name;
	private String imgName;
	private String detail;
	private String composition;
	private String caution;
	private String additionalInfo;
	private String isOnSale;
	private Date minDate;
	private Date maxDate;
	private Date createdDate;
	private Date updatedDate;
	private MainCategory mainCategory;
	private SubCategory subCategory;
	private ShopBusiness shopBusiness;
	private Location location;
	private int price;
	private int discountRate;
	private String deleted;
}
