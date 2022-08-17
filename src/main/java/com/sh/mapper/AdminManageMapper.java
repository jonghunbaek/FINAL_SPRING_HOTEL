package com.sh.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import com.sh.vo.Pagination;
import com.sh.vo.Room;

@Mapper
public interface AdminManageMapper {

	int getRoomManageTotalRows();
	List<Room> getAllRoomManageList(Pagination pagination);

}
