package com.sh.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import com.sh.criteria.RoomCriteria;
import com.sh.vo.Location;
import com.sh.vo.Pay;
import com.sh.vo.Room;
import com.sh.vo.RoomAmenity;
import com.sh.vo.RoomCategory;
import com.sh.vo.RoomInfo;
import com.sh.vo.RoomOptions;
import com.sh.vo.RoomRev;
import com.sh.vo.User;
import com.sh.web.form.RoomReservationForm;

@Mapper
public interface RoomMapper {

	// 관리자페이지 예약현황에서 객실정보를 확인하는 용도
	Room getRoomById(int id);
	RoomCategory getRoomCategoryByNo(int no);
	
	//모든 객실 유형 
	List<RoomCategory> getAllRoomCategories();
	
	// 모든 지역 
	List<Location> getAllLocations();
	
	List<Room> getAllRooms();
	
	// 지역 이름으로 지역호텔 찾기
	Location getLocationByNo(int no);
	
	// 지역이름으로 객실리스트 
	Room getRoomByLocationName(String name);
	
	// 지역별 객실  
	Room getRoomByLocationNo(int no); // 지역별 객실 리스트가 같으면? 
	
	// 지역별 객실 
	Room getRoomByLNo(int no);
	
	// 객실 유형별 객실 정보 
	Room getRoomByRoomCategoryNo(int no);
	
	//객실 이름으로 조회 
	Room getRoomByRoomName(String name);
	
	// 객실 그룹번호로 모든 객실 카테고리 조회 
	List<RoomCategory> getRoomCategoryNameByRoomGroupNo(int no);
	
	// 모든 객실 어메니티 
	List<RoomAmenity> getAllRoomAmenities();
	// 객실별 어메니티 
	RoomAmenity getRoomAmenityByCategoryNo(int no);
	
	// 모든 객실 detail
	List<RoomInfo> getAllRoomInfo();
	// 객실별 detail
	RoomInfo getRoomInfoByRoomCategoryNo(int no);
	
	// 모든 룸 옵션 - 조식, 엑스트라 베드
	List<RoomOptions> getAllRoomOptions();
	//객실별 룸 옵션 - id로 받아 roomNo은 중복일 수 있다?  
	RoomOptions getRoomOptionsByRoomId(int id);
	
	//검색 조건에 맞는 모든 객실 
	List<Room> getAllRoomsByCriteria(RoomCriteria roomCriteria); 
	
	// 객실 예약 
	void insertRoomRev(RoomReservationForm roomReservationForm);

	// 예약번호로 예약정보 가져오기
	RoomRev getRoomRevByRoomRevNo(int no);
	
	// 로케 번호로 모든 객실 반환 
	List<Room> getAllRoomByLocationNo(int no);
	
	// 객실 종류 반환 
	List<String> getRoomCategories();
	
}
