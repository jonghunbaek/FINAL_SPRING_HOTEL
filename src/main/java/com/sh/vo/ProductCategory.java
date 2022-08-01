package com.sh.vo;

import org.apache.ibatis.type.Alias;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@Getter
@Setter
@ToString
@Alias("ProductCategory")
public class ProductCategory {
	
	private int no;
	private Category category;
	private String bigName;
	private String smallName;
	private String caution;

}
