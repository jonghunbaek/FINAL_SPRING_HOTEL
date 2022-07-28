package com.sh.vo;

import java.util.Date;

import org.apache.ibatis.type.Alias;

import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
@Alias("RoomRev")
public class RoomRev {

	private int no;
	private int adult;
	private int child;
	private int totalPrice;
	private String checkin;
	private Date checkinTime;
	private String checkout;
	private Date checkoutTime;
	private String request;
	private Date createdDate;
	private Date updatedDate;
	private User user;
}
