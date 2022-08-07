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

	// 사원정보 존재유무 및 비밀번호 일치여부 확인
	public Admin login(String email, String password) {
		Admin admin = adminMapper.getAdminByEmail(email);
		if (admin == null) {
			throw new ApplicationException("사원정보가 존재하지 않습니다.");
		}
		if (!admin.getPassword().equals(password)) {
			throw new ApplicationException("비밀번호가 일치하지 않습니다.");
		}
		return admin;
	}

	// 입력된 이메일의 존재여부 체크
	public int emailCheck(String email) {

		int emailCheck = adminMapper.checkAdminByEmail(email);
		System.out.println("ckeck: " + emailCheck);
		return emailCheck;
	}
	
}
