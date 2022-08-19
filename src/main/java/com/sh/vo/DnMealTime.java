package com.sh.vo;

import org.apache.ibatis.type.Alias;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@ToString
@Getter @Setter @Alias("DnMealTime")
public class DnMealTime {

	private String mealTime;
	private String name;
}
