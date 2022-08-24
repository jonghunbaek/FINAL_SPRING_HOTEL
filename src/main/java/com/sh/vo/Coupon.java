package com.sh.vo;

import java.util.Date;

import org.apache.ibatis.type.Alias;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

@Getter
@Setter
@NoArgsConstructor
@AllArgsConstructor
@Alias("Coupon")
public class Coupon {

	private int no;
	private String title;
	private Date createdDate;
	private Date useableDate;
	private int userNo;
	
}
