package com.sh.web.form;

import javax.validation.constraints.Email;
import javax.validation.constraints.NotBlank;

import lombok.AllArgsConstructor;
import lombok.NoArgsConstructor;

@NoArgsConstructor
@AllArgsConstructor
public class UserModifyForm {

	@NotBlank(message = "이메일을 입력해주세요")
	@Email(message = "유효한 이메일 형식이 아닙니다.")
	private String email;
    
	@NotBlank(message = "전화번호를 입력해주세요")
    private String tel;

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getTel() {
		return tel;
	}

	public void setTel(String tel) {
		this.tel = tel;
	}
    
	
}
