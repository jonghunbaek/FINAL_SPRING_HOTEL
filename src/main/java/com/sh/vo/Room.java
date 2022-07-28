package com.sh.vo;

import java.util.Date;
import org.apache.ibatis.type.Alias;
import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@Getter
@Setter
@ToString
@Alias("Room")

public class Room {
	
	private int id;
	private int no;
	private String name;
	private int price;
	private int discountPrice;
	private String rev;
	private Date checkinPeriod;
	private String image;
	private Location location;
	private RoomCategory roomCategory; 

}
