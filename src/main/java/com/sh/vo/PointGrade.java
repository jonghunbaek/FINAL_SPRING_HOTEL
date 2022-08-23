package com.sh.vo;

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
@Alias("PointGrade")
public class PointGrade {

	private int userPoint;
	private int annualStay;
	private String grade;
	private int minPoint;
	private int maxPoint;
	private int minStay;
	private int maxStay;
	private int remainPoint;
	private int remainStay;
	
}
