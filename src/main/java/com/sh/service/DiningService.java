package com.sh.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.sh.mapper.DiningMapper;
import com.sh.vo.Dn;
import com.sh.vo.Location;

@Service
@Transactional
public class DiningService {
	
	@Autowired
	private DiningMapper diningMapper;

	public List<Location> getAllLocations() {
		return diningMapper.getAllLocations();
	}
	
	public List<Dn> getDiningByLocationNo(int locationNo) {
		return diningMapper.getDiningByLocationNo(locationNo);
	}
	
	public Dn getDiningByNo(int diningNo) {
		return diningMapper.getDiningByNo(diningNo);
	}
	
	

}
