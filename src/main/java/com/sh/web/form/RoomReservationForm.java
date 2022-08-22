package com.sh.web.form;

import java.util.Date;

import org.springframework.format.annotation.DateTimeFormat;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;


@Getter
@Setter
@ToString
public class RoomReservationForm {

	private int revNo; // 예약번호  
	private String locationName; //location_no
	
	@DateTimeFormat(pattern = "yyyy-MM-dd")
	private Date checkinTime; // 체크인 날짜
	@DateTimeFormat(pattern = "yyyy-MM-dd")
	private Date checkoutTime; // 체크아웃 날짜 
	
	private int adult;
	private int child;
	private String bedType;
	
	private String roomName;
	private int optionAdultBf; // 옵션 - 성인조식
	private int optionChildBf; // 옵션 - 어린이 조식 
	private int extraBed; // 옵션 - 엑스트라베드 
	private int optionTotalPrice; // 옵션  총 가격 
	private String optionCheckinTime; // 체크인시간 요청시 사용 
	private String request;
	
	private String title; // mr ms dr 
	private String userName; // 한글이름 
	private String firstName; // 영문이름 
	private String lastName; // 영문이름 
	private String email;
	private String tel;
	private String country; // 여권 나라 
	
	private String cardType;
	private int cardNumber1; // 카드 번호 암호화 
	private int cardNumber2; // 카드 번호 암호화 
	private int cardNumber3; // 카드 번호 암호화 
	private int cardNumber4; // 카드 번호 암호화 
	private int cardValidMonth; // 카드 유효기간 
	private int cardValidYear;
	
	private int totalPrice; // 총 금액  
	
	private int userNo; 
	private String isM; // 회/비회
	
	
	//27
	
}
