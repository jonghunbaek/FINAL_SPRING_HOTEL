package com.sh.vo;

import org.apache.ibatis.type.Alias;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@Getter
@Setter
@ToString
@Alias("RoomInfo")

public class RoomInfo {

	private String detailImage;
	private String room;
	private String etc;
	private String service;
	private String side;
	private RoomCategory roomCategory;
}
