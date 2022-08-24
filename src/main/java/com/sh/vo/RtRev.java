package com.sh.vo;

import java.util.Date;

import org.apache.ibatis.type.Alias;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@Getter @Setter @ToString @Alias("RtRev")
public class RtRev {
	
	private String reservationNo;
	private String userId;
	private String userNo;
	private int no;
	private int adult;
	private int child;
	private int baby;
	private String isVisit;
	private String visitTime;
	private Date visitDate;
	private String seatType;
	private String request;
	private Date createdDate;
	private Date updatedDate;
	private Dn dn;
	private User user;
	private String mealTime;
	private String isMember;
	private String isAllergy;
	private String etcAllergy;
	private String name;
	private String email;
	private String tel;
	private String cardSort;
	private String status;
	private int cardNum1;
	private int cardNum2;
	private int cardNum3;
	private int cardNum4;
	private int cardExpiryMonth;
	private int cardExpiryYear;
}
