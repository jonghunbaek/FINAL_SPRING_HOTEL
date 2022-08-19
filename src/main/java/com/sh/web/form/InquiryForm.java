package com.sh.web.form;

import java.util.Date;

import com.sh.vo.Location;
import com.sh.vo.QnaCategory;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
import lombok.ToString;

@NoArgsConstructor
@AllArgsConstructor
@Getter
@Setter
@ToString
public class InquiryForm {

	private QnaCategory qnaCategory; 
	private String title;
	private String content;
	private String name;
	private String email;
	private String tel;
	private Location location;
}
