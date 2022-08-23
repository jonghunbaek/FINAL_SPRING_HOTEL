package com.sh.web.form;

import java.text.SimpleDateFormat;
import java.util.Date;

import javax.validation.constraints.Email;
import javax.validation.constraints.Min;
import javax.validation.constraints.NotBlank;
import javax.validation.constraints.NotEmpty;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Past;
import javax.validation.constraints.Pattern;

import org.springframework.format.annotation.DateTimeFormat;

import lombok.AllArgsConstructor;
import lombok.NoArgsConstructor;

@NoArgsConstructor
@AllArgsConstructor
public class UserRegisterForm {
	
	@NotBlank(message = "이메일은 필수 입력값입니다.")
	@Email(message = "유효한 이메일 형식이 아닙니다.")
	private String email;
	private String email1;
    private String email2;
    
	@NotBlank(message = "아이디는 필수 입력값입니다.")
	@Pattern(regexp = "^(?=.*[A-Za-z])[a-zA-Z0-9]{5,20}$", message="아이디는 숫자,영어 5글자 ~ 20글자까지 허용됩니다." )
	private String id;
	
	@NotBlank(message ="비밀번호는 필수입력값입니다.")
	@Pattern(regexp = "^(?=.*[A-Za-z])(?=.*\\d)(?=.*[~!@#$%^&*()+|=])[A-Za-z\\d~!@#$%^&*()+|=]{8,20}$", message="비밀번호는 숫자,영어대소문자,특수문자가 1개 이상, 8글자 ~ 20글자까지 허용됩니다." )
	private String password;
	
	@NotBlank(message="이름은 필수입력값입니다.")
	@Pattern(regexp="^[가-힣]{2,}$",message="이름은 한글로 2글자 이상만 허용됩니다.")
	private String name;
	
	@NotEmpty(message="전화번호는 필수입력값입니다.")
	//@Pattern(regexp ="^\\d{2,3}-\\d{3,4}-\\d{4}$", message ="유효한 전화번호 형식이 아닙니다.")
	private String tel;
	private String tel1;
	private String tel2;
	private String tel3;
	
	private String firstName;
	private String lastName;
	private String postcode;
	
	private String totalAddress;
	private String address;
	private String detailAddress;

	@DateTimeFormat(pattern = "yyyyMMdd")
	@Past()
    private Date birthDay;
    @Pattern(regexp = "^\\d{4}$", message = "")
    private String year;
	private String month;
	@Pattern(regexp = "^\\d{2}$", message = "")
	private String day;
    
    @NotEmpty
	public String getEmail() {
	 if (email1=="" || email2==""){
		  email="";
	  }else{
		  email=email1+"@"+email2;
	  }
	  return email;
    }
	public void setEmail(String email) {
		this.email = email;
	}
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	
	@NotEmpty
	public String getTel() {
		if (tel1=="" || tel2=="" || tel3==""){
			tel="";
		} else {
			tel=tel1+"-"+tel2+"-"+tel3;
		}
		return tel;
	}
	public void setTel(String tel) {
		this.tel = tel;
	}
	public String getFirstName() {
		return firstName;
	}
	public void setFirstName(String firstName) {
		this.firstName = firstName;
	}
	public String getLastName() {
		return lastName;
	}
	public void setLastName(String lastName) {
		this.lastName = lastName;
	}
	public String getPostcode() {
		return postcode;
	}
	public void setPostcode(String postcode) {
		this.postcode = postcode;
	}
	
	public String getTotalAddress() {
		totalAddress = address + " " + detailAddress;
		return address;
	}
	public void setTotalAddress(String totalAddress) {
		this.totalAddress = totalAddress;
	}
	public Date getBirthDay() throws Exception{
		String dateStr = "";
		dateStr = year + month + day;
		Date birthDay = null;
		SimpleDateFormat input = new SimpleDateFormat("yyyyMMdd");
		birthDay = input.parse(dateStr);
		return birthDay;
	}
	public void setBirthDay(Date birthDay) {
		this.birthDay = birthDay;
	}
	public String getEmail1() {
		return email1;
	}
	public void setEmail1(String email1) {
		this.email1 = email1;
	}
	public String getEmail2() {
		return email2;
	}
	public void setEmail2(String email2) {
		this.email2 = email2;
	}
	public String getTel1() {
		return tel1;
	}
	public void setTel1(String tel1) {
		this.tel1 = tel1;
	}
	public String getTel2() {
		return tel2;
	}
	public void setTel2(String tel2) {
		this.tel2 = tel2;
	}
	public String getTel3() {
		return tel3;
	}
	public void setTel3(String tel3) {
		this.tel3 = tel3;
	}
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	public String getDetailAddress() {
		return detailAddress;
	}
	public void setDetailAddress(String detailAddress) {
		this.detailAddress = detailAddress;
	}
	public String getYear() {
		return year;
	}
	public void setYear(String year) {
		this.year = year;
	}
	public String getMonth() {
		return month;
	}
	public void setMonth(String month) {
		this.month = month;
	}
	public String getDay() {
		return day;
	}
	public void setDay(String day) {
		this.day = day;
	}
    
    
}
