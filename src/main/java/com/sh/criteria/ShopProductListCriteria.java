package com.sh.criteria;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@Getter
@Setter
@ToString
public class ShopProductListCriteria {

	private int mainCategoryNo;
	private int subCategoryNo;
	private int locationNo;
	private String sort;
}
