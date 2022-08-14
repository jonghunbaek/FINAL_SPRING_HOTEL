package com.sh.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import com.sh.vo.Location;
import com.sh.vo.Room;
import com.sh.vo.RoomAmenity;
import com.sh.vo.RoomCategory;
import com.sh.vo.RoomInfo;
import com.sh.vo.RoomOptions;
import com.sh.vo.RoomRev;

@Mapper
public interface RoomMapper {

	// 관리자페이지 예약현황에서 객실정보를 확인하는 용도
	Room getRoomById(int id);
	RoomCategory getRoomCategoryByNo(int no);
	
	//모든 객실 종류 List
	List<RoomCategory> getAllRoomCategories();
	
	// 지역별 호텔 
	List<Location> getAllLocations();
	Location getLocationByNo(int no);
	
	// 객실별 정보 
	Room getRoomByRoomCategoryNo(int no);
	List<Room> getRoomByLocationNo(int no); // 지역별 객실 리스트가 같으면? 
	List<RoomAmenity> getRoomAmenityByRoomCategoryNo(int no);
	List<RoomInfo> getRoomInfoByRoomCategoryNo(int no);
	
	// 객실 예약 
	RoomRev getRoomRevByRoomRevNo(int no);
	void insertRoomRev(RoomRev roomRev);
	void updatedRoomRev(RoomOptions roomOptions); // 옵션 추가 

	
	
}
