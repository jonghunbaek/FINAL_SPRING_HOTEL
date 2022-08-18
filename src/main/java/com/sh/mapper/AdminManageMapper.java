package com.sh.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import com.sh.criteria.AdminRoomManageCriteria;
import com.sh.vo.Pagination;
import com.sh.vo.Room;
import com.sh.vo.RoomRev;
import com.sh.web.form.AdminRoomRequestUpdateForm;

@Mapper
public interface AdminManageMapper {

	int getRoomManageTotalRows();
	List<Room> getAllRoomManageList(Pagination pagination);
	
	int getTotalRowsByRoomFilter(AdminRoomManageCriteria adminRoomManageCriteria);
	List<RoomRev> filterRoom(AdminRoomManageCriteria adminRoomManageCriteria);
	
	Room getRoomRequestById(int id);
	void updateRoomRequestById(AdminRoomRequestUpdateForm adminRoomRequestUpdateForm);
	
	void fixCheckedById(String id);
	void completeCheckedById(String id);

}
