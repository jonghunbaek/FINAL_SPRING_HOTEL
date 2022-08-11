package com.sh.vo;

import org.apache.ibatis.type.Alias;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@ToString
@Getter @Setter @Alias("DnRev")
public class DnRev {

	private Dn dn;
	private String mealTime;
	private String week;
	private String time;
}
