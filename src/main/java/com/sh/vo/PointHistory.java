package com.sh.vo;

import java.util.Date;

import org.apache.ibatis.type.Alias;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
import lombok.ToString;

@Getter
@Setter
@ToString
@NoArgsConstructor
@AllArgsConstructor
@Alias("PointHistory")
public class PointHistory {

	private int no;
	private String title;
	private int earned;
	private int used;
	private Date createdDate;
	private int userNo;
	
}
