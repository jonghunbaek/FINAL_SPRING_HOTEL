package com.sh.service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.sh.criteria.AdminRoomManageCriteria;
import com.sh.mapper.AdminManageMapper;
import com.sh.vo.Pagination;
import com.sh.vo.Room;
import com.sh.vo.RoomRev;
import com.sh.web.form.AdminRoomRequestUpdateForm;

@Service
public class AdminManageService {

	@Autowired
	private AdminManageMapper adminManageMapper;
	
	// 페이징처리에 필요한 전체 개수 
	public int getRoomManageTotalRows() {
		int totalRows = adminManageMapper.getRoomManageTotalRows();
		return totalRows;
	}

	// 전체 객실리스트 가져오기
	public List<Room> getAllRoomManageList(Pagination pagination) {
		
		List<Room> room = adminManageMapper.getAllRoomManageList(pagination);
		return room;
	}

	public Map<String, Object> filterRoom(AdminRoomManageCriteria adminRoomManageCriteria) {
		
		try {
	    	adminRoomManageCriteria.setLocationNo(Integer.parseInt(adminRoomManageCriteria.getLocation()));
	    	adminRoomManageCriteria.setRoomCategoryNo(Integer.parseInt(adminRoomManageCriteria.getRoomCategory()));
	    } catch(NumberFormatException e) {}
	  
		// Pagination 객체 생성 후 페이지에 표시될 개수를 매개변수로 전해주고 그 값을 adminRoomRevCriteria에 담는다.
		int totalRows = adminManageMapper.getTotalRowsByRoomFilter(adminRoomManageCriteria);
		
		if (adminRoomManageCriteria.getPage() == null || adminRoomManageCriteria.getPage() == "") {
			adminRoomManageCriteria.setPage("1");
		}
		
		int currentPage = Integer.parseInt(adminRoomManageCriteria.getPage());
			
		Pagination pagination = new Pagination(Integer.parseInt(adminRoomManageCriteria.getRows()) , totalRows, currentPage);

		adminRoomManageCriteria.setBeginIndex(pagination.getBeginIndex());
		adminRoomManageCriteria.setEndIndex(pagination.getEndIndex());
		
		List<RoomRev> room = adminManageMapper.filterRoom(adminRoomManageCriteria);
		
		Map<String, Object> filter = new HashMap<String, Object>();
		filter.put("pagination", pagination);
		filter.put("rooms", room);
		
		return filter;
	}

	public Room getRoomRequestById(int id) {
		return adminManageMapper.getRoomRequestById(id);
	}

	public void updateRoomRequestById(AdminRoomRequestUpdateForm adminRoomRequestUpdateForm) {
		
		adminRoomRequestUpdateForm.setPriceInt(adminRoomRequestUpdateForm.getIntPrice());
		adminRoomRequestUpdateForm.setDiscountPriceInt(adminRoomRequestUpdateForm.getIntDiscountPrice());
		adminManageMapper.updateRoomRequestById(adminRoomRequestUpdateForm);
	}

	public void fixCheckedById(List<String> ids) {
	
		for (String id : ids) {
			adminManageMapper.fixCheckedById(id);			
		}
	}

	public void completeCheckedById(List<String> ids) {
		for (String id : ids) {
			adminManageMapper.completeCheckedById(id);			
		}	
	}
}
