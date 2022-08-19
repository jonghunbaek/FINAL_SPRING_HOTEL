package com.sh.vo;

import org.apache.ibatis.type.Alias;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@Getter
@Setter
@ToString
@Alias("ShopBusiness")
public class ShopBusiness {

	private int no;
	private String name;
}
