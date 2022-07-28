package com.sh.vo;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@Getter
@Setter
@ToString
public class DnCategory {
	
	private int no;
	private String name;
	private Category category;
	private int groupNo;
}
