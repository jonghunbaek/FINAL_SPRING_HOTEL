package com.sh.vo;


import org.apache.ibatis.type.Alias;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@Getter @Setter @ToString @Alias("DnSeatCountOfDate")
public class DnSeatCountOfDate {

	private int count;
	private String mealTime;
	
	
}
