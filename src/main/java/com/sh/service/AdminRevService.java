package com.sh.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.sh.mapper.AdminRevMapper;
import com.sh.vo.RoomRev;

@Service
public class AdminRevService {

	@Autowired
	private AdminRevMapper adminRevMapper;
	
	public List<RoomRev> getAllRoomRevList() {
		List<RoomRev> roomRev = adminRevMapper.getAllRoomRevList();
		return roomRev;
	}

}
