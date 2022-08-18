package com.sh.vo;

import java.util.Date;

import org.apache.ibatis.type.Alias;

import com.fasterxml.jackson.annotation.JsonFormat;

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
	
	@JsonFormat(pattern = "yyyy-MM-dd", timezone = "Asia/Seoul")
	private Date checkinTime;
	private String checkout;
	
	@JsonFormat(pattern = "yyyy-MM-dd", timezone = "Asia/Seoul")
	private Date checkoutTime;
	private String request;
	private String status;
	
	@JsonFormat(pattern = "yyyy-MM-dd", timezone = "Asia/Seoul")
	private Date createdDate;
	
	@JsonFormat(pattern = "yyyy-MM-dd", timezone = "Asia/Seoul")
	private Date updatedDate;
	private User user;
	private Room room;

	private String optionCheckinTime;
	
	private Pay pay;
	private String bedType;
}
