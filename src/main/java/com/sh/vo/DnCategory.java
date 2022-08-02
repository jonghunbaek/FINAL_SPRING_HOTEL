package com.sh.vo;

import org.apache.ibatis.type.Alias;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@Getter
@Setter
@ToString
@Alias("DnCategory")
public class DnCategory {
	
	private int no;
	private String name;
	private Category category;
	private int groupNo;
}
