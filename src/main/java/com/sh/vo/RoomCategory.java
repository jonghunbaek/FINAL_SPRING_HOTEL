package com.sh.vo;

import org.apache.ibatis.type.Alias;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
import lombok.ToString;

@Getter
@Setter
@ToString
@Alias("RoomCategory")
@AllArgsConstructor
@NoArgsConstructor
public class RoomCategory {

	private RoomCategory roomCategory;
	private String name;
	private Category category;
	private int roomGroupNo;
}
