package com.sh.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.sh.exception.ApplicationException;
import com.sh.mapper.UserMapper;
import com.sh.vo.User;

@Service
public class UserService {

	@Autowired
	private UserMapper userMapper;
	
	public User getUserDetail(String userid) {
		return userMapper.getUserById(userid);
	}
	
	
	/**
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
	
}
