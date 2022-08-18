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

	private String locationName; //location_no
	
	@DateTimeFormat(pattern = "yyyy-MM-dd")
	private Date checkinTime; // 체크인 날짜
	@DateTimeFormat(pattern = "yyyy-MM-dd")
	private Date checkoutTime; // 체크아웃 날짜 
	
	private int adult;
	private int child;
	private String bedType;
	
	private String roomName;
	private String roomOptionName; // 옵션 - 성인조식, 엑스트라베드, 어린이 조식 
	private int roomOptionPrice; 
	private String optionCheckinTime; // 체크인시간 요청시 사용 
	private String request;
	
	private String title; // mr ms dr : vo 추가하기 
	private String name; 
	private String firstname; // 영문이름 ? ㄱ?
	private String lastname; // 영문이름 ? ㄱ?
	private String email;
	private String tel;
	private String country;
	
	private String cardType;
	private String cardNumber; // 카드 번호 암호화 
	private String cardValidThru; // 카드 유효기간 
	
}
