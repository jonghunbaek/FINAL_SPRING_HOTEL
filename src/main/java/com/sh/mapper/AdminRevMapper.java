package com.sh.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import com.sh.vo.RoomRev;

@Mapper
public interface AdminRevMapper {

	List<RoomRev> getAllRoomRevList();


	
}
