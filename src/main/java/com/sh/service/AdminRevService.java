package com.sh.service;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.scheduling.annotation.Scheduled;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.sh.criteria.AdminDnRevCriteria;
import com.sh.criteria.AdminRoomRevCriteria;
import com.sh.criteria.AdminRtRevCriteria;
import com.sh.mapper.AdminRevMapper;
import com.sh.mapper.RoomMapper;
import com.sh.mapper.UserMapper;
import com.sh.vo.AllergySelected;
import com.sh.vo.Dn;
import com.sh.vo.Pagination;
import com.sh.vo.Room;
import com.sh.vo.RoomRev;
import com.sh.vo.RtRev;
import com.sh.vo.RtRevCount;
import com.sh.vo.User;
import com.sh.web.form.AdminAddRevForm;
import com.sh.web.form.AdminRoomRevUpdateForm;
import com.sh.web.form.DiningReservationForm;

@Service
@Transactional
public class AdminRevService {

	@Autowired
	private AdminRevMapper adminRevMapper;
	
	@Autowired
	private UserMapper userMapper;
	
	@Autowired
	private RoomMapper roomMapper;
	
	/**
	 * 매일 밤 12:00시에 예약일이 당일, 전일인 예약상태를 '임박(O)'으로 변경
	 */
	@Scheduled(cron = "0 0 0 * * *")
	public void changeRevStatus() {
		adminRevMapper.changeRevStatus();
	}
	
	/**
	 * 예약 등록 페이지 고객 검색
	 * @param keyword
	 * @return
	 */
	public List<User> getUserByName(String keyword) {
		return userMapper.getUserByName(keyword);
	}
	
	/**
	 * 페이징 처리에 필요한 데이터 가공
	 * @param adminRoomRevCriteria
	 * @return
	 */
	public Pagination getPageInfo(AdminRoomRevCriteria adminRoomRevCriteria){
		if (adminRoomRevCriteria.getPage() == null || adminRoomRevCriteria.getPage() == "") {
			adminRoomRevCriteria.setPage("1");
		}
		
		return new Pagination(Integer.parseInt(adminRoomRevCriteria.getRows())
							  ,adminRevMapper.getTotalRowsByFilter(adminRoomRevCriteria)
							  ,Integer.parseInt(adminRoomRevCriteria.getPage()));
	}
	
	/**
	 * SQL에 사용하기 위한 데이터 처리
	 * @param adminRoomRevCriteria
	 * @return
	 */
	public AdminRoomRevCriteria parseData(AdminRoomRevCriteria adminRoomRevCriteria) {
		String checkinPeriod = adminRoomRevCriteria.getCheckinPeriod();
		String locationNo = adminRoomRevCriteria.getLocation();
		String roomCategoryNo = adminRoomRevCriteria.getRoomCategory();
		
		if (checkinPeriod != null && checkinPeriod != "") {
			String[] checkins = checkinPeriod.split("~");
			adminRoomRevCriteria.setInStartDate(checkins[0].trim());
			adminRoomRevCriteria.setInEndDate(checkins[1].trim());
		}
		if ((locationNo != null && locationNo != "") && (roomCategoryNo != null && roomCategoryNo != "")) {
			adminRoomRevCriteria.setLocationNo(Integer.parseInt(locationNo));
	    	adminRoomRevCriteria.setRoomCategoryNo(Integer.parseInt(roomCategoryNo));
		}
		return adminRoomRevCriteria;
	}
	
	// ------------------------------------------객실 신규예약추가 ----------------------------------------------
	public List<Room> getAllRoomByFilter(AdminRoomRevCriteria adminRoomRevCriteria) {
		
		String[] period = adminRoomRevCriteria.getCheckinPeriod().split("~");
		List<String> periodTrim = new ArrayList<String>();
		
		for (int i=0; i<period.length; i++) {
			periodTrim.add(period[i].trim());
		}
		
		adminRoomRevCriteria.setInStartDate(periodTrim.get(0));
		adminRoomRevCriteria.setInEndDate(periodTrim.get(1));
		
		return roomMapper.getAllRoomByFilter(adminRoomRevCriteria);
	}

	public void insertNewRoomRev(AdminAddRevForm adminAddRevForm) {
		
		String[] period = adminAddRevForm.getCheckinPeriod().split("~");
		List<String> periodTrim = new ArrayList<String>();
		
		for (int i=0; i<period.length; i++) {
			periodTrim.add(period[i].trim());
		}
	
		adminAddRevForm.setStartDate(periodTrim.get(0));
		adminAddRevForm.setEndDate(periodTrim.get(1));
		
		String totalPrice = adminAddRevForm.getTotalPrice().replace(",", "");
		adminAddRevForm.setTotalPrice(totalPrice);
		
		adminRevMapper.insertNewRoomRev(adminAddRevForm);
	}
	
	// ------------------------------------------다이닝 신규예약추가 ----------------------------------------------
	public Map<String, Object> getRtSelectableDate(AdminDnRevCriteria adminDnRevCriteria) {
		Dn dn = adminRevMapper.getDnByNo(adminDnRevCriteria);
		List<RtRevCount> selectableDate = adminRevMapper.getRtSelectableDate(adminDnRevCriteria);
		
		Map<String, Object> dnDate = new HashMap<String, Object>();
		
		dnDate.put("dn", dn);
		dnDate.put("selectableDate", selectableDate);
		System.out.println("test");
		return dnDate;
	}
	
	public List<String> getMealTime(AdminDnRevCriteria adminDnRevCriteria) {
		String revDate = adminRevMapper.getRevDateBySelectedDate(adminDnRevCriteria);
		
		if (revDate == null) {
			List<String> mealTimeIsNot = adminRevMapper.getMealTimeByRevIsNot(adminDnRevCriteria);
			return mealTimeIsNot;
		} else {
			List<String> mealTimeIs = adminRevMapper.getMealTimeByRevIs(adminDnRevCriteria);
			return mealTimeIs;
		}
	}
	
	/**
	 * 레스토랑 신규 예약 추가
	 * @param diningReservationForm
	 */
	public void insertNewDiningRev(DiningReservationForm diningReservationForm) {
		diningReservationForm = checkRevCountByDateAndMeal(diningReservationForm);
		adminRevMapper.insertNewDiningRev(diningReservationForm);
		
		if (diningReservationForm.getIsAllergy() == "Y") {
			adminRevMapper.insertAllergyToSelected(diningReservationForm);
		}
		
		if (diningReservationForm.getRevDate() == null || diningReservationForm.getRevDate() == " ") {
			adminRevMapper.insertNewRtRevCount(diningReservationForm);
			return;
		}
		adminRevMapper.updateRtRevCount(diningReservationForm);
	}
	
	/**
	 * 선택된 날짜, 식사 타임에 기존 자리수 카운팅 데이터 존재 여부 조회
	 * @param diningReservationForm
	 * @return
	 */
	public DiningReservationForm checkRevCountByDateAndMeal(DiningReservationForm diningReservationForm) {
		diningReservationForm.setRevDate(adminRevMapper.getRevDateBySelectedDateInAddRev(diningReservationForm));
		return diningReservationForm;
	}
	// ------------------------------------------객실 예약현황 ----------------------------------------------
	// 페이징처리에 필요한 전체 개수 
	public int getTotalRows() {
		int totalRows = adminRevMapper.getTotalRows();
		return totalRows;
	}

	// 전체 예약리스트 가져오기
	public List<RoomRev> getAllRoomRevList(Pagination pagination) {
		List<RoomRev> roomRev = adminRevMapper.getAllRoomRevList(pagination);
		return roomRev;
	}

	// daterangepicker에서 yyyy-mm-dd ~ yyyy-mm-dd 형식으로 넘어오는 String을 분리 시켜준다.
	// String을 Date타입으로 parse시키지 않는 이유는 첫째, java에서의 Date타입이 db에서 적용되나 헷갈려서 --> 추후 검색 더 해보자
	// 둘째, 값이 많은 수가 아니기때문에 db에서 to_date로 충분히 조회가 가능하기때문 
	
	/**
	 * 객실 예약현황 조건 별 페이지 요청
	 * @param adminRoomRevCriteria
	 * @return
	 */
	public Map<String, Object> filterRev(AdminRoomRevCriteria adminRoomRevCriteria) {
		adminRoomRevCriteria = parseData(adminRoomRevCriteria);
		Pagination pagination = getPageInfo(adminRoomRevCriteria);
		adminRoomRevCriteria.setBeginIndex(pagination.getBeginIndex());
		adminRoomRevCriteria.setEndIndex(pagination.getEndIndex());
		
		Map<String, Object> filter = new HashMap<String, Object>();
		filter.put("pagination", pagination);
		filter.put("roomRev", adminRevMapper.filterRev(adminRoomRevCriteria));
		return filter;
	}

	public RoomRev getRoomRevDetailByNo(int revNo) {
		return adminRevMapper.getRoomRevDetailByNo(revNo);
	}

	public void updateRoomRevDetailByNo(AdminRoomRevUpdateForm adminRoomRevUpdateForm) {
		
		String[] period = adminRoomRevUpdateForm.getCheckinPeriod().split("~");
		List<String> periodTrim = new ArrayList<String>();
		
		for (int i=0; i<period.length; i++) {
			periodTrim.add(period[i].trim());
		}
		
		adminRoomRevUpdateForm.setCheckinDate(periodTrim.get(0));
		adminRoomRevUpdateForm.setCheckoutDate(periodTrim.get(1));
		adminRoomRevUpdateForm.setPriceInt(adminRoomRevUpdateForm.getIntPrice());
		
		adminRevMapper.updateRoomRevDetailByNo(adminRoomRevUpdateForm);	
	}

	public List<RoomRev> getPeriodByNo(int revNo) {	
		return adminRevMapper.getPeriodByNo(revNo);
	}

	public void deleteCheckedByNo(List<String> revNos) {
		for (String revNo : revNos) {
			adminRevMapper.deleteCheckedByNo(revNo);			
		}
	}
	
	// ------------------------------------------다이닝 예약현황 ----------------------------------------------
	public int getTotalRowsDn() {
		int totalRows = adminRevMapper.getTotalRowsDn();
		return totalRows;
	}

	public List<RtRev> getAllRtRevList(Pagination pagination) {
		List<RtRev> rtmRev = adminRevMapper.getAllRtRevList(pagination);
		return rtmRev;
	}

	public Map<String, Object> filterRevRt(AdminRtRevCriteria adminRtRevCriteria) {
		String visitDate = adminRtRevCriteria.getVisitDate();
		
		if (visitDate == null || visitDate == "") {
			 System.out.println("checkinPeriod:-------" + visitDate);
		} else {
			
			String[] dates = visitDate.split("~");
			
			List<String> dateTrim = new ArrayList<String>();
			
			for (int i=0; i<dates.length; i++) {
				dateTrim.add(dates[i].trim());
			}
			
			adminRtRevCriteria.setInStartDate(dateTrim.get(0));
			adminRtRevCriteria.setInEndDate(dateTrim.get(1));
		}
	  
		// Pagination 객체 생성 후 페이지에 표시될 개수를 매개변수로 전해주고 그 값을 adminRoomRevCriteria에 담는다.
		int totalRows = adminRevMapper.getTotalRowsByFilterRt(adminRtRevCriteria);
		
		if (adminRtRevCriteria.getPage() == null || adminRtRevCriteria.getPage() == "") {
			adminRtRevCriteria.setPage("1");
		}
		
		int currentPage = Integer.parseInt(adminRtRevCriteria.getPage());
			
		Pagination pagination = new Pagination(Integer.parseInt(adminRtRevCriteria.getRows()) , totalRows, currentPage);

		adminRtRevCriteria.setBeginIndex(pagination.getBeginIndex());
		adminRtRevCriteria.setEndIndex(pagination.getEndIndex());
		
		List<RtRev> rtRev = adminRevMapper.filterRevRt(adminRtRevCriteria);
		
		Map<String, Object> filter = new HashMap<String, Object>();
		filter.put("pagination", pagination);
		filter.put("rtRev", rtRev);

		return filter;
	}

	public Map<String, Object> getRtRevDetailByNo(int revNo) {
		
		List<AllergySelected> allergySelected = adminRevMapper.getAllergySelectedByNo(revNo);  
		RtRev rtRev =  adminRevMapper.getRtRevDetailByNo(revNo);
		
		Map<String, Object> results = new HashMap<String, Object>();
		results.put("allergySelected", allergySelected);
		results.put("rtRev", rtRev);
		
		return results;
	}
}
