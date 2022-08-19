package com.sh.mapper;

import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;

import com.sh.vo.User;

@Mapper
public interface UserMapper {
	User getUserByEmail(String email);
	User getUserById(String id);
	User getUserByNo(int no);
	int idCheck(String id);
	int emailCheck(String email);
	void insertUser(User user);
	void updateUser(User user);
	String fineId(@Param("name") String name, @Param("email")String email);
	String finePw(@Param("id") String id, @Param("email")String email);
}
