package com.sh.service;


import org.apache.ibatis.annotations.Param;
import java.util.UUID;
import org.springframework.beans.BeanUtils;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.sh.exception.ApplicationException;
import com.sh.mapper.UserMapper;
import com.sh.vo.Grade;
import com.sh.vo.PointHistory;
import com.sh.vo.User;
import com.sh.vo.UserPoint;
import com.sh.web.form.UserModifyForm;
import com.sh.web.form.UserRegisterForm;

import lombok.extern.slf4j.Slf4j;

@Slf4j
@Service
public class UserService {

	@Autowired
	private UserMapper userMapper;
	
	/** 유저정보 가져오기
	 * @param userid
	 * @return 유저정보 획득
	 */
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
	
	/**
	 * 카카오 로그인으로 획득한 사용자정보로 로그인처리를 수행한다.<p>
	 * 카카오 로그인은 회원가입 절차없이 카카오 로그인 API로 획득한 정보를 데이터베이스에 저장한다.<p>
	 * 카카오 로그인으로 우리 서비스를 한 번이라도 사용한 사용자는 사용자 정보가 데이터베이스에 이미 저장되어 있다.
	 * @param user 카카오 로그인으로 획득한 사용자 정보
	 * @return 사용자 정보
	 */
	public User loginWithKakao(User user) {
		User savedUser = userMapper.getUserByEmail(user.getEmail());
		log.info("카카오 로그인 아이디로 조회한 유저 정보: " + savedUser);
		if (savedUser == null) {
			user.setId(UUID.randomUUID().toString());
			userMapper.insertUser(user);
			log.info("카카오 로그인 신규 사용자 정보 등록 완료: " + user.getId() + ", " + user.getName());
		}
		return savedUser;
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
		BeanUtils.copyProperties(userRegisterForm, user);
		userMapper.insertUser(user);
	}
	
	/** 아이디 중복체크
	 * @param id
	 * @return 0 or 1 
	 */
	public int idCheck(String id) {
		int check = userMapper.idCheck(id);
		System.out.println("check:" + check);
		return check;
	}
	
	/** 이메일 중복체크
	 * @param id
	 * @return 0 or 1
	 */
	public int emailCheck(String email) {
		int check = userMapper.emailCheck(email);
		System.out.println("check:" + check);
		return check;
	}
	

	/** 아이디 찾기
	 * @param name
	 * @param email
	 * @return 사용자 아이디
	 */
	public String findId(String name, String email) {
		String fineId = userMapper.fineId(name, email);
		return fineId;
	}
	
	/** 비밀번호 찾기
	 * @param id
	 * @param email
	 * @return 사용자 비밀번호
	 */
	public String findPw(String id, String email) {
		String finePw = userMapper.finePw(id, email);
		return finePw;
	}

	/**
	 * 등급정보 조회
	 * @param id
	 * @return 등급정보
	 */
	public Grade getUserGrade(String id) {
		return userMapper.getUserGradeByUserId(id);
	}
	
	/**
	 * 포인트 정보 조회
	 * @param userNo
	 * @return 포인트정보
	 */
	public UserPoint getUserPoint(int userNo) {
		return userMapper.getUserPointByUserNo(userNo);
	}
	
	/**
	 * 포인트 이력 조회
	 * @param userNo
	 * @return 포인트이력
	 */
	public PointHistory getPointHistory(int userNo) {
		return userMapper.getUserPointHistoryByUserNo(userNo);
	}
	
	/**
	 * 프로필 수정 비밀번호 확인
	 * @param id
	 * @param password
	 * @return 유저정보
	 */
	public User checkPassword(int userNo, String password) {
		User user = userMapper.getUserByNo(userNo);
		if (!user.getPassword().equals(password)) {
			throw new ApplicationException("비밀번호가 올바르지 않습니다.");
		}
		return user;
	}
	
	/**
	 * 프로필 수정 유저정보 업데이트
	 * @param user
	 * @return 유저정보 업데이트
	 */
	public void modifyUserInfo(User user) {
		userMapper.updateUser(user);
	}
	
	/**
	 * 비밀번호 변경 폼 기존 비밀번호 확인
	 * @param id
	 * @param password
	 * @return 0 or 1
	 */
	public int passwordCheck(String id, String password) {
		return userMapper.passwordCheck(id, password); 
	}
}
