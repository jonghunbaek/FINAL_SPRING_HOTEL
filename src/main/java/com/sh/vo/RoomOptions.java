package com.sh.vo;

import org.apache.ibatis.type.Alias;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@Getter
@Setter
@ToString
@Alias("RoomOptions")
public class RoomOptions {

	private int no;
	private String name;
	private int price;
	
}
