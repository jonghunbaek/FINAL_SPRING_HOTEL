package com.sh.vo;

import org.apache.ibatis.type.Alias;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@Getter
@Setter
@ToString
@Alias("RoomCategory")
public class RoomCategory {

	private RoomCategory RoomCategory;
	private String name;
	private Category category;
	private int roomGroupNo;
}
