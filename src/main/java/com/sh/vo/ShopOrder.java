package com.sh.vo;

import java.util.Date;

import org.apache.ibatis.type.Alias;

import lombok.Getter;
import lombok.ToString;
import lombok.Setter;

@Getter
@Setter
@ToString
@Alias("ShopOrder")
public class ShopOrder {

	private int no;
	private int usingPoint;
	private int totPrice;
	// TOTALPAY (DB에 추후 삽입 예정)
	//private int totPay;
	private int savingPoint;
	private int totQuantity;
	private Date createdDate;
	private Date updatedDate;
	private String status;
	private String deleted;
	private String receiver;
	private String address;
	private String message;
	private String payment;
	private String postcode;
	private User user;
	
}
