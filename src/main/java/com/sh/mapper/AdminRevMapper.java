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

	// 예약 상세정보 room_id에 따른 체크인,아웃 기간 조회
	List<RoomRev> getPeriodByNo(int revNo);

	// 선택된 예약정보 삭제
	void deleteCheckedByNo(String revNo);

	// 매일 밤 12:00시 정각에 실행 돼 체크인 당일, 전일인 예약상태를 '임박(O)'으로 변경
	void changeRevStatus();


	
}
