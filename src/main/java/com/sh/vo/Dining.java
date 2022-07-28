package com.sh.vo;

import org.apache.ibatis.type.Alias;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@Getter  @Setter @ToString
@Alias("Dining")
public class Dining {

	private int no;
	private int name;
	private String imagename;
	private int maxCount;
	
	private DiningCategory diningCategory;
	private Location location;
}
