package com.sh.mapper;

import org.apache.ibatis.annotations.Mapper;

import com.sh.vo.Grade;
import com.sh.vo.PointHistory;
import com.sh.vo.User;
import com.sh.vo.UserPoint;

@Mapper
public interface UserMapper {

	User getUserByEmail(String email);
	User getUserById(String id);
	int idCheck(String id);
	int emailCheck(String email);
	int passwordCheck(String id, String password);
	void insertUser(User user);
	void updateUser(User user);
	Grade getUserGradeByUserId(String id);
	UserPoint getUserPointByUserNo(int userNo);
	PointHistory getUserPointHistoryByUserNo(int userNo);
	
	// 관리자페이지 예약현황에서 고객상세정보 확인용도
	User getUserByNo(int no);
}
