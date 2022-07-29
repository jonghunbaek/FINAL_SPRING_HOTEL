package com.sh.vo;

import org.apache.ibatis.type.Alias;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@Getter
@Setter
@ToString
@Alias("Dn")
public class Dn {

	private int no;
	private String name;
	private String imagename;
	private int maxCount;
	private DnCategory dnCategory;
	private Location location;
	private DnInfo dnInfo;
	
}
