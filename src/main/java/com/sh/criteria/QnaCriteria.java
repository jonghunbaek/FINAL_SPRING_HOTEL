package com.sh.criteria;

import com.sh.vo.Pagination;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@Getter
@Setter
@ToString
public class QnaCriteria {
	
	private String search;
	private String page;
	private Integer userNo;
	private String state;
	private String keyword;
	private Pagination pagination;
}
