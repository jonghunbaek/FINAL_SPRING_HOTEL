package com.sh.mapper;

import org.apache.ibatis.annotations.Mapper;

import com.sh.vo.Admin;

@Mapper
public interface AdminMapper {

	Admin getUserByNo(int no);
}
