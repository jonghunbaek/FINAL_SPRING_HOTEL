package com.sh.service;

import java.io.File;
import java.io.FileOutputStream;
import java.io.InputStream;
import java.util.UUID;

import javax.validation.Valid;

import org.springframework.beans.BeanUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.util.FileCopyUtils;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.multipart.MultipartFile;

import com.sh.exception.ApplicationException;
import com.sh.mapper.UserMapper;
import com.sh.vo.User;
import com.sh.web.form.UserRegisterForm;

@Service
public class UserService {

	@Autowired
	private UserMapper userMapper;
	
	public User getUserDetail(String userid) {
		return userMapper.getUserById(userid);
	}
	
	
	/** 로그인
	 * @param id 아이디
	 * @param password 비밀번호
	 * @return 인증된 사용자 정보
	 */
	public User login(String id, String password) {
		User user = userMapper.getUserById(id);
		if (user == null) {
			throw new ApplicationException("아이디 혹은 비밀번호가 올바르지 않습니다.");
		}
		if (!user.getPassword().equals(password)) {
			throw new ApplicationException("아이디 혹은 비밀번호가 올바르지 않습니다.");
		}
		return user;
	}


	/** 회원가입
	 * @param userRegisterForm
	 */
	public void addNewUser(UserRegisterForm userRegisterForm) {
			
		User user = userMapper.getUserByEmail(userRegisterForm.getEmail());
			if (user != null) {
		throw new RuntimeException("이미 사용중인 이메일입니다.");
		}
		
		user = new User();
		BeanUtils.copyProperties(userRegisterForm, user); // userRegisterForm값이 User로 복사된다.
		
		userMapper.insertUser(user);
	}
}
