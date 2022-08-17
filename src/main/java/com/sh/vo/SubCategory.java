package com.sh.vo;

import org.apache.ibatis.type.Alias;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@Getter
@Setter
@ToString
@Alias("SubCategory")
public class SubCategory {

	private int no;
	private String name;
	private MainCategory maincategory;
}
