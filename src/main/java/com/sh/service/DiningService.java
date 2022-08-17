package com.sh.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.sh.mapper.DiningMapper;
import com.sh.vo.Allergy;
import com.sh.vo.Dn;
import com.sh.vo.DnMealTime;
import com.sh.vo.DnRev;
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
	
	public List<DnRev> getDiningRevByNo(int diningNo) {
		return diningMapper.getDiningRevByNo(diningNo);
	}
	
	public List<DnMealTime> getMealTimeByNo(int diningNo) {
		List<DnMealTime> dnMealTimes = diningMapper.getMealTimeByNo(diningNo);
		for(DnMealTime dnMealTime : dnMealTimes) {
			if(dnMealTime.getMealTime().equals("lunch")) {
				dnMealTime.setName("런치");
			} else if (dnMealTime.getMealTime().equals("dinner")) {
				dnMealTime.setName("디너");
			} else {
				dnMealTime.setName("브런치");
			}
		}
		return dnMealTimes;
	}
	
	public List<String> getTimeByParaMeters(String week, int diningNo, String mealTime) {
		return diningMapper.getTimeByParaMeters(week, diningNo, mealTime);
	}
	
	public List<Allergy> getAllAllergies() {
		return diningMapper.getAllAllergies();
	}

}
