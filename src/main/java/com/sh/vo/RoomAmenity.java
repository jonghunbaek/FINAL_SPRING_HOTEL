package com.sh.vo;

import org.apache.ibatis.type.Alias;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@Getter
@Setter
@ToString
@Alias("RoomAmenity")

public class RoomAmenity {

	private String type;
	private String description;
	private RoomCategory roomCategory;
	
}
