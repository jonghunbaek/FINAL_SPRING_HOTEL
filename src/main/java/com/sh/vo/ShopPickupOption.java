package com.sh.vo;

import org.apache.ibatis.type.Alias;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@Getter@Setter@ToString@Alias("ShopPickupOption")
public class ShopPickupOption {

	private int no;
	private String time;
}
