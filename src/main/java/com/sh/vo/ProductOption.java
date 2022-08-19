package com.sh.vo;

import org.apache.ibatis.type.Alias;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@Getter@Setter@ToString@Alias("ProductOption")
public class ProductOption {
	
	private int no;
	private String name;
	private int price;
	private Product product;
	private int stock;
	private int soldNo;

}
