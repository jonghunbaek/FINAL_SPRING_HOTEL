package com.sh.web.form;

import java.util.Date;
import java.util.List;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@Getter @Setter @ToString
public class DiningReservationForm {
	
	private String seat;
	private int adult;
	private int child;
	private int baby;
	private int diningNo;
	private String date;
	private String mealTime;
	private String visitTime;
	private String isMember;
	private String isAllergy;
	private List<Integer> allergyNos;
	private String etcAllergy;
	private String request;
	private String nameTitle;
	private String name;
	private String email;
	private String tel;
	private String cardSort;
	private int cardNum1;
	private int cardNum2;
	private int cardNum3;
	private int cardNum4;
	private int cardExpiryMonth;
	private int cardExpiryYear;
	
	
}
