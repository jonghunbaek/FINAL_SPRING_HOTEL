package com.sh.vo;

import java.util.Date;

import org.apache.ibatis.type.Alias;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@Getter
@Setter
@ToString
@Alias("Qna")
public class Qna {

	private Integer no;
	private String title;
	private String content;
	private String answerState;
	private String answerContent;
	private Date answerCreatedDate;
	private Date answerUpdatedDate;
	private User user;
	private Integer userNo;
	private String qnaAuthor;
	private Date createdDate; 
	private Date updatedDate;
	private String deleted;
	private Integer qnaCategoryNo;
	private QnaCategory qnaCategory;
	private Integer locationNo;
	private Location location;
	
}
