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
import com.sh.mapper.AdminRevMapper;
import com.sh.mapper.RoomMapper;
import com.sh.mapper.UserMapper;
import com.sh.vo.Dn;
import com.sh.vo.Pagination;
import com.sh.vo.Room;
import com.sh.vo.RoomRev;
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
	
	// 매일 밤 12:00시 정각에 실행 돼 체크인 당일, 전일인 예약상태를 '임박(O)'으로 변경
	@Scheduled(cron = "0 0 0 * * *")
	public void changeRevStatus() {
		adminRevMapper.changeRevStatus();
	}
	
	public List<User> getUserByName(String keyword) {
		return userMapper.getUserByName(keyword);
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
	public void insertNewDiningRev(DiningReservationForm diningReservationForm) {
	
		// 선택된 날짜가 sh_rt_rev_count에 존재하는지 체크하여 form에 담는다
		diningReservationForm.setRevDate(adminRevMapper.getRevDateBySelectedDateInAddRev(diningReservationForm));
		diningReservationForm.setCheckMeal(adminRevMapper.checkSelectedMeal(diningReservationForm));
		
		adminRevMapper.insertNewDiningRev(diningReservationForm);
		
		System.out.println("test------------seat-----------" + diningReservationForm.getSeat());
		System.out.println("test-----------adult------------" + diningReservationForm.getAdult());
		System.out.println("test-----------child------------" + diningReservationForm.getChild());
		System.out.println("test-----------baby------------" + diningReservationForm.getBaby());
		System.out.println("test-----------diningNo------------" + diningReservationForm.getDiningNo());
		System.out.println("test-----------date------------" + diningReservationForm.getDate());
		System.out.println("test-----------mealTime------------" + diningReservationForm.getMealTime());
		System.out.println("test-----------visitTime------------" + diningReservationForm.getVisitTime());
		System.out.println("test-----------request------------" + diningReservationForm.getRequest());
		System.out.println("test-----------userNo------------" + diningReservationForm.getUserNo());
		System.out.println("test-----------isAllergy------------" + diningReservationForm.getIsAllergy());
		System.out.println("test-----------etcAllergy------------" + diningReservationForm.getEtcAllergy());
	}
	
	// ------------------------------------------객실, 다이닝 예약현황 ----------------------------------------------
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

	public Map<String, Object> filterRev(AdminRoomRevCriteria adminRoomRevCriteria) {
		
		// daterangepicker에서 yyyy-mm-dd ~ yyyy-mm-dd 형식으로 넘어오는 String을 분리 시켜준다.
		// String을 Date타입으로 parse시키지 않는 이유는 첫째, java에서의 Date타입이 db에서 적용되나 헷갈려서 --> 추후 검색 더 해보자
		// 둘째, 값이 많은 수가 아니기때문에 db에서 to_date로 충분히 조회가 가능하기때문 
		String checkinPeriod = adminRoomRevCriteria.getCheckinPeriod();
		
		if (checkinPeriod == null || checkinPeriod == "") {
			 System.out.println("checkinPeriod:-------" + checkinPeriod);
		} else {
			
			String[] checkins = checkinPeriod.split("~");
			
			List<String> checkinTrim = new ArrayList<String>();
			
			for (int i=0; i<checkins.length; i++) {
				checkinTrim.add(checkins[i].trim());
			}
			
			adminRoomRevCriteria.setInStartDate(checkinTrim.get(0));
			adminRoomRevCriteria.setInEndDate(checkinTrim.get(1));
		}
		
		// location, roomCategory를 int로 parse시켜준다.
		try {
	    	adminRoomRevCriteria.setLocationNo(Integer.parseInt(adminRoomRevCriteria.getLocation()));
	    	adminRoomRevCriteria.setRoomCategoryNo(Integer.parseInt(adminRoomRevCriteria.getRoomCategory()));
	    } catch(NumberFormatException e) {}
	  
		// Pagination 객체 생성 후 페이지에 표시될 개수를 매개변수로 전해주고 그 값을 adminRoomRevCriteria에 담는다.
		int totalRows = adminRevMapper.getTotalRowsByFilter(adminRoomRevCriteria);
		
		if (adminRoomRevCriteria.getPage() == null || adminRoomRevCriteria.getPage() == "") {
			adminRoomRevCriteria.setPage("1");
		}
		
		int currentPage = Integer.parseInt(adminRoomRevCriteria.getPage());
			
		Pagination pagination = new Pagination(Integer.parseInt(adminRoomRevCriteria.getRows()) , totalRows, currentPage);

		adminRoomRevCriteria.setBeginIndex(pagination.getBeginIndex());
		adminRoomRevCriteria.setEndIndex(pagination.getEndIndex());
		
		List<RoomRev> roomRev = adminRevMapper.filterRev(adminRoomRevCriteria);
		
		Map<String, Object> filter = new HashMap<String, Object>();
		filter.put("pagination", pagination);
		filter.put("roomRev", roomRev);

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
}
