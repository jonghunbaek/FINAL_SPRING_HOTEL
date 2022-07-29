package com.sh.vo;

import org.apache.ibatis.type.Alias;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@Getter
@Setter
@ToString
@Alias("UserPoint")
public class UserPoint {

	private int no;
	private User user;
	private int totPoint;
	private int usedPoint;
	private int ablePoint;
	
}
