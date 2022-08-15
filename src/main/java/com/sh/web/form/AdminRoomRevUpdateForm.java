package com.sh.web.form;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@Getter
@Setter
@ToString
public class AdminRoomRevUpdateForm {

	private String no;
	private String adult;
	private String child;
	private String price;
	private String checkinDate;
	private String checkoutDate;
	private String status;
	private String request;
	
}
