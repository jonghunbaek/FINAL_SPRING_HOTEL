package com.sh.criteria;

import org.apache.ibatis.type.Alias;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@Getter
@Setter
@ToString
@Alias("AdminRoomRevCriteria")
public class AdminRoomRevCriteria {

	private String search;
	private String page;
	private String keyword;
	private String location;		// 변환
	private String roomCategory;	// 변환
	private String revStatus;
	private String checkinPeriod;
	private String sortRev;
	private String sortCheckin;
	private String rows;
	
	private int locationNo;
	private int roomCategoryNo;
	
	private int beginIndex;			
	private int endIndex;
	
	private String inStartDate;
	private String inEndDate;	
}
