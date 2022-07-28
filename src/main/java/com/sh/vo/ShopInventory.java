package com.sh.vo;

import org.apache.ibatis.type.Alias;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@Getter
@Setter
@ToString
@Alias("ShopInventory")
public class ShopInventory {

	private int no;
	private Location location;
	private Product product;
	private String onSell;
	private int stock;
	
	
}
