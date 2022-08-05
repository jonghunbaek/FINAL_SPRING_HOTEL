package com.sh.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.sh.exception.ApplicationException;
import com.sh.mapper.AdminMapper;
import com.sh.vo.Admin;

@Service
public class AdminService {
	
	@Autowired
	private AdminMapper adminMapper;

	public Admin login(int no, String password) {
		Admin admin = adminMapper.getUserByNo(no);
		if (admin == null) {
			throw new ApplicationException("사원정보가 존재하지 않습니다.");
		}
		if (!admin.getPassword().equals(password)) {
			throw new ApplicationException("비밀번호가 일치하지 않습니다.");
		}
		return admin;
	}
	
}
