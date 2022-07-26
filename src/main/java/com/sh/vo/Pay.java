package com.sh.vo;


import org.apache.ibatis.type.Alias;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@Getter
@Setter
@ToString
@Alias("Pay")
public class Pay {

	private String cardType;
	private String cardNumber;
	private String validDate;
	private RoomRev roomRev; //room_rev_no
	
}
