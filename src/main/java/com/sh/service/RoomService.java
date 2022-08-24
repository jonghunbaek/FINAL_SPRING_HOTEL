package com.sh.service;

import java.io.IOException;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.sh.criteria.RoomCriteria;
import com.sh.mapper.RoomMapper;
import com.sh.mapper.UserMapper;
import com.sh.vo.Location;
import com.sh.vo.Room;
import com.sh.vo.RoomAmenity;
import com.sh.vo.RoomCategory;
import com.sh.vo.RoomInfo;
import com.sh.vo.RoomOptions;
import com.sh.vo.RoomRev;
import com.sh.web.form.RoomReservationForm;

@Service
@Transactional
public class RoomService {

	@Autowired
	private RoomMapper roomMapper;
	@Autowired
	private UserMapper userMapper;
	
	// 모든 카테고리 
	public List<RoomCategory> getAllRoomCategories(){
		return roomMapper.getAllRoomCategories();
	}
	
	//모든 지역
	public List<Location> getAllLocations(){
		return roomMapper.getAllLocations();
	}
	
	
	// 모든 객실 어메니티 
	public List<RoomAmenity> getAllRoomAmenities(){
		return roomMapper.getAllRoomAmenities();
	}

	// 모든 객실 정보
	public List<RoomInfo> getAllRoomInfo(){
		return roomMapper.getAllRoomInfo();
	}

	// 모든 객실 추가 옵션 - 조식, 엑스트라베드 
	public List<RoomOptions> getAllAddRoomOptions(){
		return roomMapper.getAllRoomOptions();
	}
	
	//모든 객실 반환 
	public List<Room> getAllRooms(){
		return roomMapper.getAllRooms();
	}
	
	// 조건에 맞는 모든 객실 
	public List<Room> searchRoom(RoomCriteria roomCriteria){
		//List<Room> rooms = roomMapper.getroomByc
		return roomMapper.getRoomsByCriteria(roomCriteria);
	}
	
	// no로 지역 찾기 
	public Location getLocationByNo(int no) {
		return roomMapper.getLocationByNo(no);
	}
	
	// 지역 no로 객실 찾기
	public Room getRoomByLNo(int no) {
		return roomMapper.getRoomByLNo(no);
	}
	
	//객실 카테고리 no로 객실 찾기 
	public Room getRoomByRoomCategoryNo(int no) {
		return roomMapper.getRoomByRoomCategoryNo(no);
	}
	
	// 객실 이름으로 객실 찾기 
	public Room getRoomByRoomName(String name) {
		return roomMapper.getRoomByRoomName(name);
	}
	
	// 객실 카테고리 넘버로 객실 어메니티 
	public RoomAmenity getRoomAmenityByRoomCategoryNo(int no) {
		return roomMapper.getRoomAmenityByCategoryNo(no);
	}
	
	// 객실 카테고리 넘버로 객실정보 
	public RoomInfo getRoomInfoByRoomCategoryNo(int no) {
		return roomMapper.getRoomInfoByRoomCategoryNo(no);
	}
	
	// 객실 아이디로 룸 추가옵션 가져오기 
	public RoomOptions getRoomOptionsByRoomId(int id) {
		return roomMapper.getRoomOptionsByRoomId(id);
	}
	
	
	
//	사용자정보 + 예약 폼 을 db에 전달 
	public void addNewReservation(RoomReservationForm roomReservationForm) throws IOException{

		RoomRev roomrev = new RoomRev();
		roomrev.setAdult(roomReservationForm.getAdult());
		roomrev.setChild(roomReservationForm.getChild());
		roomrev.setTotalPrice(roomReservationForm.getTotalPrice());
		roomrev.setRoomPrice(roomReservationForm.getRoomPrice());
		roomrev.setCheckinTime(roomReservationForm.getCheckinTime());
		roomrev.setCheckoutTime(roomReservationForm.getCheckoutTime());
		roomrev.setRoomName(roomReservationForm.getRoomName());
		roomrev.setRequest(roomReservationForm.getRequest());
		roomrev.setBedType(roomReservationForm.getBedType());
		roomrev.setLocationName(roomReservationForm.getLocationName());
		roomrev.setUserTitle(roomReservationForm.getTitle());
		roomrev.setUserName(roomReservationForm.getUserName());
		roomrev.setFirstName(roomReservationForm.getFirstName());
		roomrev.setLastName(roomReservationForm.getLastName());
		roomrev.setEmail(roomReservationForm.getEmail());
		roomrev.setTel(roomReservationForm.getTel());
		roomrev.setCountry(roomReservationForm.getCountry());
		roomrev.setOptionAdultBf(roomReservationForm.getOptionAdultBf());
		roomrev.setOptionChildBf(roomReservationForm.getOptionChildBf());
		roomrev.setExtraBed(roomReservationForm.getExtraBed());
		roomrev.setOptionTotalPrice(roomReservationForm.getOptionTotalPrice());
		roomrev.setCardType(roomReservationForm.getCardType());
		roomrev.setCardNumber1(roomReservationForm.getCardNumber1());
		roomrev.setCardNumber2(roomReservationForm.getCardNumber2());
		roomrev.setCardNumber3(roomReservationForm.getCardNumber3());
		roomrev.setCardNumber4(roomReservationForm.getCardNumber4());
		roomrev.setValidMonth(roomReservationForm.getCardValidMonth());
		roomrev.setValidYear(roomReservationForm.getCardValidYear());
		
		
		roomMapper.insertRoomRev(roomReservationForm);
		
	}
	
	// 객실 예약번호로 객실 예약 조회 
	public RoomRev getRoomRevByRoomRevNo(int no) {
		return roomMapper.getRoomRevByRoomRevNo(no);
	}


	public List<Room> getRoomByLocationNo(int no) {
		return roomMapper.getAllRoomByLocationNo(no);
	}

	public List<RoomCategory> getRoomCategoryByGroupNo(int roomGroupNo) {
		return roomMapper.getRoomCategoryByGroupNo(roomGroupNo);
	}

}
