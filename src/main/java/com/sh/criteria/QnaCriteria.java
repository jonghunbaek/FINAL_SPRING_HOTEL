package com.sh.criteria;

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
	private String answerState;
	private String keyword;
	private String sort;
	private String rows;
	
	private int beginIndex;			
	private int endIndex;
}
