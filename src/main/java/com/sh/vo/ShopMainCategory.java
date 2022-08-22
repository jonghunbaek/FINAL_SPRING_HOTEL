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
@Alias("ShopMainCategory")
public class ShopMainCategory {

	private int no;
	private String name;
	private int categoryNo;
	
	public ShopMainCategory(String name) {
		this.name = name;
	}
	
	public ShopMainCategory(int no) {
		this.no = no;
	}
	
}
