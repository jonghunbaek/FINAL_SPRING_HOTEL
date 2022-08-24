package com.sh.vo;

import org.apache.ibatis.type.Alias;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@Getter@Setter@ToString@Alias("ShopProductOption")
public class ShopProductOption {
	
	private int no;
	private String name;
	private int price;
	private ShopProduct product;
	private int stock;
	private int soldNo;

	public ShopProductOption(int productNo) {
		this.product = new ShopProduct(productNo);
	}
}
