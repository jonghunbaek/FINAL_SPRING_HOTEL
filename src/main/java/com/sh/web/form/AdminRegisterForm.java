package com.sh.web.form;

import java.util.Date;

import javax.validation.constraints.Email;
import javax.validation.constraints.NotBlank;
import javax.validation.constraints.Pattern;

import org.springframework.format.annotation.DateTimeFormat;
import org.springframework.web.multipart.MultipartFile;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@Getter
@Setter
@ToString
public class AdminRegisterForm {

	@NotBlank(message = "기본정보 : 이메일은 필수 입력값입니다.")
	@Email(message = "유효한 이메일 형식이 아닙니다.")
	private String email;
	
	@NotBlank(message = "기본정보 : 비밀번호는 필수입력값입니다.")
	@Pattern(regexp = "^(?=.*[A-Za-z])(?=.*\\d)(?=.*[~!@#$%^&*()+|=])[A-Za-z\\d~!@#$%^&*()+|=]{8,16}$", message = "비밀번호는 숫자,영어대소문자, 특수문자가 1개 이상, 8글자 ~ 16글자까지 허용됩니다.")
	private String password;
	
	@NotBlank(message = "기본정보 : 이름은 필수입력값입니다.")
	@Pattern(regexp = "^[가-힣]{2,}$", message = "이름은 한글로 2글자 이상만 허용됩니다.")
	private String name;
	
	@NotBlank(message = "기본정보 : 전화번호는 필수입력값입니다.")
	@Pattern(regexp = "^\\d{2,3}-\\d{3,4}-\\d{4}$", message = "유효한 전화번호 형식이 아닙니다.")
	private String tel;

	@DateTimeFormat(pattern = "yyyy-MM-dd")
	private Date birth;
	@DateTimeFormat(pattern = "yyyy-MM-dd")
	private Date hireDate;
	
	private int postcode;
	private String address;
	private String addressDetail;
	private String grade;
	private int locationNo;
	private String gender;
	
	
	private MultipartFile profileFile;
		
}
