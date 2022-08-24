package com.sh.dto;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@Getter
@Setter
@ToString
public class AdminSaleChartDto {

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
	
}
