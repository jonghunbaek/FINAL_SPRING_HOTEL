package com.sh.web.form;

import java.util.Date;

import com.sh.vo.RoomInfo;

public class RoomReservationForm {

	private String location;
	private Date checkinTime; // 체크인 날짜
	private Date checkoutTime; // 체크아웃 날짜 
	private int adult;
	private int child;
	private String bedType;
	private RoomInfo roomInfo; // 옵션 - 성인조식, 엑스트라베드, 어린이 조식
	private String optionCheckinTime; // 체크인시간 요청시 사용 
	private String request;
	private String nameKor; 
	private String nameEng; // 영문이름 ? ㄱ?
	private String Email;
	private String tel;
	private String country;
	
	private String cardType;
	private String cardNumber; // 카드 번호 암호화 
	private String cardValidThru; // 카드 유효기간 
	
	
}
