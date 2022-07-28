package com.sh.vo;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@Getter
@Setter
@ToString
public class RoomAmenity {
	
	private String type;
	private String description;
	private RoomCategory roomCategory;

}
