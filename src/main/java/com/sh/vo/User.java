package com.sh.vo;

import java.util.Date;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@Getter
@Setter
@ToString
public class User {
	
	private int no;
	private String id;
	private String password;
	private String name;
	private String email;
	private String tel;
	private String address;
	private Date createdDate;
	private Date updatedDate;
	private Date deletedDate;
	private double point;
	private int stay;
	private Grade grade;

}
