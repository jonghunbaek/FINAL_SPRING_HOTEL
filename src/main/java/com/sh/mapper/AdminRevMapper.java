package com.sh.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import com.sh.criteria.AdminDnRevCriteria;
import com.sh.criteria.AdminRoomRevCriteria;
import com.sh.vo.Dn;
import com.sh.vo.DnCategory;
import com.sh.vo.Pagination;
import com.sh.vo.RoomRev;
import com.sh.vo.RtRevCount;
import com.sh.web.form.AdminAddRevForm;
import com.sh.web.form.AdminRoomRevUpdateForm;
import com.sh.web.form.DiningReservationForm;

@Mapper
public interface AdminRevMapper {
	
	// 매일 밤 12:00시 정각에 실행 돼 체크인 당일, 전일인 예약상태를 '임박(O)'으로 변경
	void changeRevStatus();

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
	
	// 신규 객실예약 등록
	void insertNewRoomRev(AdminAddRevForm adminAddRevForm);
	
	// 다이닝예약가능 날짜 조회
	List<RtRevCount> getRtSelectableDate(AdminDnRevCriteria adminDnRevCriteria);

	// 선택된 날짜가 sh_rt_rev_count에 존재하는지 확인 --> 처음 날짜 선택시
	String getRevDateBySelectedDate(AdminDnRevCriteria adminDnRevCriteria);
	// 선택된 날짜가 sh_rt_rev_count에 존재하는지 확인 --> 신규 다이닝 예약등록시
	String getRevDateBySelectedDateInAddRev(DiningReservationForm diningReservationForm);
	// 선택된 날짜가 존재할 때 해당 날짜의 mealTime이 존재하는 지 확인
	String checkSelectedMeal(DiningReservationForm diningReservationForm);
	
	// 다이닝 넘버 가져오기
	Dn getDnByNo(AdminDnRevCriteria adminDnRevCriteria);
	DnCategory getDnCategoryByNo(int no);

	// 선택된 날짜가 없을때 mealtime을 가져온다.
	List<String> getMealTimeByRevIsNot(AdminDnRevCriteria adminDnRevCriteria);
	// 선택된 날짜가 있을때 mealtime을 가져온다.
	List<String> getMealTimeByRevIs(AdminDnRevCriteria adminDnRevCriteria);

	// 선택될 날짜가 없을때 visittime을 가져온다. ---------> 일단 보류
	List<String> getVisitTimeByRevIsNot(AdminDnRevCriteria adminDnRevCriteria);

	// 신규 다이닝예약 등록
	void insertNewDiningRev(DiningReservationForm diningReservationForm);

	

	

	

}
