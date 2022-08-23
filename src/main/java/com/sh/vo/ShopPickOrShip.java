package com.sh.vo;

import org.apache.ibatis.type.Alias;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@Getter@Setter@ToString@Alias("ShopPickOrShip")
public class ShopPickOrShip {

	private int no;
	private String name;
	
}
