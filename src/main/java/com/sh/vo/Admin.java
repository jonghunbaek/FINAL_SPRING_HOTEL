package com.sh.vo;

import java.util.Date;

import org.apache.ibatis.type.Alias;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
import lombok.ToString;

@Getter
@Setter
@ToString
@NoArgsConstructor
@AllArgsConstructor
@Alias("Admin")
public class Admin {

	private int no;
	private String password;
	private String email;
	private String tel;
	private String grade;
	private String name;
	private Date birth;
	private String address;
	private int postcode;
	private Date hireDate;
	private Date createdDate;
	private Date updatedDate;
}
