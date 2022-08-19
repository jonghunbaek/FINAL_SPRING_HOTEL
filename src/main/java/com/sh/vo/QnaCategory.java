package com.sh.vo;

import org.apache.ibatis.type.Alias;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@Getter
@Setter
@ToString
@Alias("QnaCategory")
public class QnaCategory {

	private Integer no;
	private String name;
	private Category category;
	private int groupNo;
	
	
}
