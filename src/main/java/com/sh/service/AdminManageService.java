package com.sh.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.sh.mapper.AdminManageMapper;
import com.sh.vo.Pagination;
import com.sh.vo.Room;

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
}
