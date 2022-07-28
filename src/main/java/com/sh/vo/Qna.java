package com.sh.vo;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@Getter
@Setter
@ToString
public class Qna {

	private int no;
	private String title;
	private String content;
	private String answerState;
	private String answerContent;
	private User user;
	private QnaCategory qnaCategory;
}
