package com.sh.vo;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@Getter
@Setter
@ToString
public class Dn {

	private int no;
	private String name;
	private String image;
	private int maxCount;
	private DnCategory dnCategory;
	private Location location;
	
}
