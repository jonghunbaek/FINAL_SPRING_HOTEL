package com.sh.web.form;

import java.util.Date;

import javax.validation.constraints.Email;
import javax.validation.constraints.NotBlank;
import javax.validation.constraints.Pattern;

import org.springframework.web.multipart.MultipartFile;

import com.sh.vo.Grade;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@Getter
@Setter
@ToString
public class UserRegisterForm {
	@NotBlank(message = "이메일은 필수 입력값입니다.")
	@Email(message = "유효한 이메일 형식이 아닙니다.")
	private String email;
	
	@NotBlank(message = "아이디는 필수 입력값입니다.")
	@Pattern(regexp = "^(?=.*[A-Za-z])(?=.*\\d)[A-Za-z\\d]{5,20}$", message="아이디는 숫자,영어 5글자 ~ 20글자까지 허용됩니다." )
	private String id;
	
	@NotBlank(message ="비밀번호는 필수입력값입니다.")
	@Pattern(regexp = "^(?=.*[A-Za-z])(?=.*\\d)(?=.*[~!@#$%^&*()+|=])[A-Za-z\\d~!@#$%^&*()+|=]{8,20}$", message="비밀번호는 숫자,영어대소문자,특수문자가 1개 이상, 8글자 ~ 20글자까지 허용됩니다." )
	private String password;
	
	@NotBlank(message="이름은 필수입력값입니다.")
	@Pattern(regexp="^[가-힣]{2,}$",message="이름은 한글로 2글자 이상만 허용됩니다.")
	private String name;
	
	@NotBlank(message="전화번호는 필수입력값입니다.")
	@Pattern(regexp ="^\\d{2,3}-\\d{3,4}-\\d{4}$", message ="유효한 전화번호 형식이 아닙니다.")
	private String tel;
	private String firstName;
	private String lastName;
	private String postcode;
	private String address;
    private Date birthDay;
}
