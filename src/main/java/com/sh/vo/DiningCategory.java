package com.sh.vo;

import org.apache.ibatis.type.Alias;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@Getter @Setter @ToString
@Alias("DiningCategory")
public class DiningCategory {

	private int no;
	private String name;
	private int groupNo;
	
	private Category category;
}
