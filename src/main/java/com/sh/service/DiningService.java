package com.sh.service;

import java.io.IOException;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;
import java.util.Random;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.sh.mapper.DiningMapper;
import com.sh.mapper.UserMapper;
import com.sh.vo.Allergy;
import com.sh.vo.AllergySelected;
import com.sh.vo.Dn;
import com.sh.vo.DnMealTime;
import com.sh.vo.DnRev;
import com.sh.vo.Location;
import com.sh.vo.RtRev;
import com.sh.web.form.DiningReservationForm;

@Service
@Transactional
public class DiningService {
	
	@Autowired
	private DiningMapper diningMapper;
	
	@Autowired
	private UserMapper userMapper;

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

	//예약정보 저장하기
	public void addReservation(DiningReservationForm diningReservationForm) throws ParseException, IOException {
		RtRev rtRev = new RtRev();
		
		rtRev.setReservationNo(diningReservationForm.getReservationNo());
		rtRev.setAdult(diningReservationForm.getAdult());
		rtRev.setChild(diningReservationForm.getChild());
		rtRev.setBaby(diningReservationForm.getBaby());
		rtRev.setVisitTime(diningReservationForm.getVisitTime());
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
		Date nDate = new Date(sdf.parse(diningReservationForm.getDate()).getTime());
		rtRev.setVisitDate(nDate);
		rtRev.setSeatType(diningReservationForm.getSeat());
		rtRev.setRequest(diningReservationForm.getRequest());
		rtRev.setDn(diningMapper.getDiningByNo(diningReservationForm.getDiningNo()));
		rtRev.setIsMember(diningReservationForm.getIsMember());
		rtRev.setIsAllergy(diningReservationForm.getIsAllergy());
		if(diningReservationForm.getIsMember().equals("Y")) {
			rtRev.setUser(userMapper.getUserById(diningReservationForm.getUserId()));
		}
		rtRev.setMealTime(diningReservationForm.getMealTime());
		rtRev.setName(diningReservationForm.getName());
		rtRev.setEmail(diningReservationForm.getEmail());
		rtRev.setTel(diningReservationForm.getTel());
		rtRev.setCardSort(diningReservationForm.getCardSort());
		rtRev.setCardNum1(diningReservationForm.getCardNum1());
		rtRev.setCardNum2(diningReservationForm.getCardNum2());
		rtRev.setCardNum3(diningReservationForm.getCardNum3());
		rtRev.setCardNum4(diningReservationForm.getCardNum4());
		rtRev.setCardExpiryMonth(diningReservationForm.getCardExpiryMonth());
		rtRev.setCardExpiryYear(diningReservationForm.getCardExpiryYear());
		
		diningMapper.insertReservation(rtRev);
		
		if(diningReservationForm.getIsAllergy().equals("Y")) {
			List<Integer> allergyNos = diningReservationForm.getAllergyNos();
			for(Integer allergyNo : allergyNos) {
				int rtRevNo = rtRev.getNo();
				int allergy = allergyNo;
				diningMapper.insertAllergySelected(rtRevNo, allergy);
			}
		}
	}
	
	//diningNo로 locationNo조회
	public int getLocationNoByDiningNo(int diningNo) {
		int locationNo = diningMapper.getLocationByDnNo(diningNo).getNo();
		
		return locationNo;
	}


}
