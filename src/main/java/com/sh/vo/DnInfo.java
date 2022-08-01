package com.sh.vo;

import java.util.Date;

import org.apache.ibatis.type.Alias;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@Getter @Setter @ToString
@Alias("DnInfo")
public class DnInfo {

	private int diningNo;
	private String main;
	private String detail;
	private String location;
	private Date time;
	private String tel;
	private String room;
	private int seat;
	private String foodimage1;
	private String foodimage2;
	private String foodimage3;
	private String lunchPdf;
	private String dinnerPdf;
	private String notice;
	
}
