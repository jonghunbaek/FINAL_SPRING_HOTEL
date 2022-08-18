package com.sh.vo;

import java.util.Date;
import org.apache.ibatis.type.Alias;
import com.fasterxml.jackson.annotation.JsonIgnore;
import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
import lombok.ToString;

@Getter
@Setter
@ToString
@NoArgsConstructor
@AllArgsConstructor
@Alias("User")
@Builder
public class User {
		
		private int no;
		private String id;
		private String password;
		private String name;
		private String firstName;
		private String lastName;
		private String email;
		private String tel;
		private String postcode;
		private String totalAddress;
		private Date createdDate;
		private Date updatedDate;
		private String deleted;
		private Date deletedDate;
		private double point;
  	    private int stay;
	    private Grade grade;
	    private Date birthDay;
	    // 로그인 구분 - 본 사이트에서 가입한 경우:normal, 카카오 로그인으로 가입한 경우: kakao다.
		private String loginType;
		private int age;
		private String gender;
		
		private String title; // roomRevForm에 사용 
		private String country; // roomRevForm에 사용 
}
