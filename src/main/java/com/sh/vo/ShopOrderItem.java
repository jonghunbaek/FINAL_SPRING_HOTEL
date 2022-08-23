package com.sh.vo;

import java.util.Date;

import org.apache.ibatis.type.Alias;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@Getter
@Setter
@ToString
@Alias("ShopOrderItem")
public class ShopOrderItem {

	private ShopOrder shopOrder;
	//추후 DB 변경 필요: product로부터 상품번호를 가져온다.
	private ShopProduct product;
	private int price;
	private int quantity;
	// 주문아이템 생성일과 업데이트일은 추후 DB에서 제거
	//private Date createdDate;
	//private Date updatedDate;
	// STATUS도 추후 DB에서 제거. WHY? <- ORDER에 있으므로
	// private String status;
}
