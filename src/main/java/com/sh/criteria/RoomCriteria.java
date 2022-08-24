package com.sh.criteria;

import java.util.List;

import org.apache.ibatis.type.Alias;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@Getter
@Setter
@ToString
@Alias("RoomCriteria")
public class RoomCriteria {

	private String sort; // 정렬기준
	private int lowPrice;
	private int highPrice;
	private List<String> tags;
	private Integer roomCategoryNo;
	private int roomGroupNo;
}
