package com.sh.service;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.sh.criteria.AdminRoomRevCriteria;
import com.sh.mapper.AdminRevMapper;
import com.sh.vo.Pagination;
import com.sh.vo.RoomRev;

@Service
@Transactional
public class AdminRevService {

	@Autowired
	private AdminRevMapper adminRevMapper;
	
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
		
		String[] checkins = checkinPeriod.split("~");
		
		List<String> checkinTrim = new ArrayList<String>();
		
		for (int i=0; i<checkins.length; i++) {
			checkinTrim.add(checkins[i].trim());
		}
		
		adminRoomRevCriteria.setInStartDate(checkinTrim.get(0));
		adminRoomRevCriteria.setInEndDate(checkinTrim.get(1));
		
		// Pagination 객체 생성 후 페이지에 표시될 개수를 매개변수로 전해주고 그 값을 adminRoomRevCriteria에 담는다.
		int totalRows = adminRevMapper.getTotalRows();
		Pagination pagination = new Pagination(Integer.parseInt(adminRoomRevCriteria.getRows()) , totalRows, 1);
		
		adminRoomRevCriteria.setBeginIndex(pagination.getBeginIndex());
		adminRoomRevCriteria.setEndIndex(pagination.getEndIndex());
		
		// location, roomCategory를 int로 parse시켜준다.
		try {
	    	adminRoomRevCriteria.setLocationNo(Integer.parseInt(adminRoomRevCriteria.getLocation()));
	    	adminRoomRevCriteria.setRoomCategoryNo(Integer.parseInt(adminRoomRevCriteria.getRoomCategory()));
	    } catch(NumberFormatException e) {}
	  
		List<RoomRev> roomRev = adminRevMapper.filterRev(adminRoomRevCriteria);
		
		Map<String, Object> filter = new HashMap<String, Object>();
		filter.put("pagination", pagination);
		filter.put("roomRev", roomRev);

		return filter;
	}
}
