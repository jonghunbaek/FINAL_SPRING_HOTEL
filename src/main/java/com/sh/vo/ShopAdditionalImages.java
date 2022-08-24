package com.sh.vo;

import org.apache.ibatis.type.Alias;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@Getter@Setter@ToString@Alias("ShopAdditionalImages")
public class ShopAdditionalImages {

	private int no;
	private String name;
	private ShopProduct shopProduct;

	public ShopAdditionalImages(int productNo) {
		this.shopProduct = new ShopProduct(productNo);
	}
}
