package com.sh.mapper;

import org.apache.ibatis.annotations.Mapper;

import com.sh.vo.Location;
import com.sh.vo.Room;
import com.sh.vo.RoomCategory;

@Mapper
public interface RoomMapper {

	// 관리자페이지 예약현황에서 객실정보를 확인하는 용도
	Room getRoomById(int id);
	RoomCategory getRoomCategoryByNo(int no);
}
