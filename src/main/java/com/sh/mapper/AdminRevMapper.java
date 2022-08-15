package com.sh.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import com.sh.criteria.AdminRoomRevCriteria;
import com.sh.vo.Pagination;
import com.sh.vo.RoomRev;
import com.sh.web.form.AdminRoomRevUpdateForm;

@Mapper
public interface AdminRevMapper {

	List<RoomRev> getAllRoomRevList(Pagination pagination);
	
	// 페이징처리 전체 개수 
	int getTotalRows();
	int getTotalRowsByFilter(AdminRoomRevCriteria adminRoomRevCriteria);
	
	// 조건별 예약정보 조회
	List<RoomRev> filterRev(AdminRoomRevCriteria adminRoomRevCriteria);

	// 예약정보 상세조회
	RoomRev getRoomRevDetailByNo(int revNo);

	// 예약 상세정보 수정
	void updateRoomRevDetailByNo(AdminRoomRevUpdateForm adminRoomRevUpdateForm);


	
}
