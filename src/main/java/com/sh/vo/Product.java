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
	private int price;
	private int discountPrice;
	private String detail;
	private ShopCategory shopCategory;
	private String tip;
	private String img;
	private String summary;
	private String detailTitle;
	private Date createdDate;
	private Date updatedDate;
	private String deleted;
}
