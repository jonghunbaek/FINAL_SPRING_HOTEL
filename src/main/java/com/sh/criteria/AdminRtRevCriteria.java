package com.sh.criteria;

import org.apache.ibatis.type.Alias;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@Getter
@Setter
@ToString
@Alias("AdminRtRevCriteria")
public class AdminRtRevCriteria {
	
	private String search;
	private String page;
	private String keyword;
	private String location;		
	private String restaurant;	
	private String revStatus;
	private String visitDate;
	private String isAllergy;
	private String mealTime;
	private String sortRev;
	private String sortVisit;
	private String rows;
	
	private int locationNo;
	private int roomCategoryNo;
	
	private int beginIndex;			
	private int endIndex;
	
	private String inStartDate;
	private String inEndDate;
}
