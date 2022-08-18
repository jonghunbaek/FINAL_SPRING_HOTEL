package com.sh.web.form;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@Getter
@Setter
@ToString
public class AdminRoomRequestUpdateForm {

	private String id;
	private String price;
	private String discountPrice;
	private String request;

	private int priceInt;
	private int discountPriceInt;
	
	public int getIntPrice() {
		return Integer.parseInt(price.replace(",", ""));
	}
	
	public int getIntDiscountPrice() {
		return Integer.parseInt(discountPrice.replace(",", ""));
	}
	
}
