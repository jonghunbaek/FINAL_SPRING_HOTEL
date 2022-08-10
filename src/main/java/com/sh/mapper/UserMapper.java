package com.sh.mapper;

import org.apache.ibatis.annotations.Mapper;

import com.sh.vo.User;

@Mapper
public interface UserMapper {
	User getUserByEmail(String email);
	User getUserById(String id);
	int idCheck(String id);
	int emailCheck(String email);
	void insertUser(User user);
	void updateUser(User user);
	
	// 관리자페이지 예약현황에서 고객상세정보 확인용도
	User getUserByNo(int no);
}
