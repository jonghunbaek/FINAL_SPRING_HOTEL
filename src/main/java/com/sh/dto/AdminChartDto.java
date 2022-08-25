package com.sh.dto;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@Getter
@Setter
@ToString
public class AdminChartDto {

	private int saleLocation;
	
	private int saleSeoul;
	private int saleBusan;
	private int saleJeju;
	private int saleGangreung;
	private int saleGwangju;
	
	
	private int saleJan;
	private int saleFeb;
	private int saleMar;
	private int saleApr;
	private int saleMay;
	private int saleJun;

	private int saleStandard;
	private int saleExecutive;
	private int saleSuite;
	
	private int totalSaleByType;
	private double standardPer;
	private double executivePer;
	private double suitePer;
	
	private int revSeoul;
	private int revBusan;
	private int revJeju;
	private int revGangreung;
	private int revGwangju;
	
	private int revJan;
	private int revFeb;
	private int revMar;
	private int revApr;
	private int revMay;
	private int revJun;
	
	private int revStan;
	private int revExec;
	private int revSuit;
	
	private int totalRevByType;
	private double revStanPer;
	private double revExecPer;
	private double revSuitPer;
	
	
}
