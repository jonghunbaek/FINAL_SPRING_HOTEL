package com.sh.criteria;

import org.apache.ibatis.type.Alias;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@Getter
@Setter
@ToString
@Alias("AdminDnRevCriteria")
public class AdminDnRevCriteria {

	private String location;
	private String dnCategory;
	private String seatType;
	private String adult;
	private String child;
	private String date;
}
