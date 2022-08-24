package com.sh.web.form;

import java.util.List;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@Getter @Setter @ToString
public class DiningReservationForm {
	
	// 시퀀스 이용한 예약번호
	private int no;
	// 은오님한테 물어봐야함
	private String reservationNo;
	
	private String seat;
	private int adult;
	private int child;
	private int baby;
	private int diningNo;
	private String date;
	private String mealTime;
	private String visitTime;
	private String isMember;
	private String userId;
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
	private int userNo;
	
	// 선택된 날짜가 sh_rt_rev_count에 존재여부 확인
	private String revDate;
	// 선택된 날짜가 존재 할때 해당 날짜에 해당 mealtime이 존재하는지 확인
	private String checkMeal;
	
}
