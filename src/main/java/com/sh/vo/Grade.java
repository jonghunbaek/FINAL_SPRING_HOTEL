package com.sh.vo;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@Getter
@Setter
@ToString
public class Grade {
	
	private String grade;
	private double minPoint;
	private double maxPoint;
	private int minStay;
	private int maxStay;
	private double discountRate;
	private double pointRateRoom;
	private double pointRateDn;
	private String etc;

}
