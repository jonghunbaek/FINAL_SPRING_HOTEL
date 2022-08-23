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
@Alias("ShopBusiness")
public class ShopBusiness {

	private int no;
	private String name;
	
	public ShopBusiness(String name) {
		this.name = name;
	}
}
