package com.sh.criteria;

import org.apache.ibatis.type.Alias;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@Getter
@Setter
@ToString
@Alias("AdminRoomManageCriteria")
public class AdminRoomManageCriteria {

	private String page;
	private String location;		// 변환
	private String roomCategory;	// 변환
	private String roomStatus;
	private String sort;
	private String rows;
	
	private int locationNo;
	private int roomCategoryNo;
	
	private int beginIndex;			
	private int endIndex;
	
}
