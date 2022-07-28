package com.sh.vo;

import java.util.Date;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@Getter
@Setter
@ToString
public class PointHistory {

	private int no;
	private String title;
	private int amount;
	private Date createdDate;
	private User user;
	
}
