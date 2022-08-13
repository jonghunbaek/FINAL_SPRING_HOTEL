package com.sh.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import com.sh.criteria.AdminRoomRevCriteria;
import com.sh.vo.Pagination;
import com.sh.vo.RoomRev;

@Mapper
public interface AdminRevMapper {

	List<RoomRev> getAllRoomRevList(Pagination pagination);
	int getTotalRows();
	List<RoomRev> filterRev(AdminRoomRevCriteria adminRoomRevCriteria);


	
}
