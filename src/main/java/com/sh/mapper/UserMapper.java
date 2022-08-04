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
}
