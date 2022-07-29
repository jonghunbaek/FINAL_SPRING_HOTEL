package com.sh.vo;

import java.util.Date;
import org.apache.ibatis.type.Alias;
import com.fasterxml.jackson.annotation.JsonIgnore;
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
@Alias("User")
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
		private String deleted;
		private Date deletedDate;
		private double point;
  	    private int stay;
	    private Grade grade;
		
}
