package com.sh.service;

import java.io.IOException;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.sh.exception.ApplicationException;
import com.sh.mapper.DiningMapper;
import com.sh.mapper.UserMapper;
import com.sh.vo.Allergy;
import com.sh.vo.Dn;
import com.sh.vo.DnMealTime;
import com.sh.vo.DnRev;
import com.sh.vo.DnSeatCountOfDate;
import com.sh.vo.Location;
import com.sh.vo.RtRev;
import com.sh.vo.RtRevCount;
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
			rtRev.setEtcAllergy(diningReservationForm.getEtcAllergy());
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
	
	public void addRtRevCount(RtRevCount rtRevCount) {
		diningMapper.insertRtRevCount(rtRevCount);
	}
	
	// 잔여좌석 조회 결과
	public Map<String, String> lookUpSeat(Date date, int diningNo, String seatType, int adult, int child, int baby){
		
		Map<String, String> result = new HashMap<>();
		int totalCount = adult + child + baby;
		int totalSeat = 0;
		List<DnSeatCountOfDate> seatCountList = diningMapper.getDnSeatCountOfDate(diningNo, date, seatType);
		
		if(seatType.equals("table")) {
			totalSeat = diningMapper.getTotalSeatByNo(diningNo);
			for(DnSeatCountOfDate seatCount : seatCountList) {
				if((totalSeat -(totalCount + seatCount.getCount()))< 0) {
					result.put("mealTime", seatCount.getMealTime());
				}
			}
		} else {
			totalSeat = diningMapper.getTotalRoomByNo(diningNo);
			for(DnSeatCountOfDate seatCount : seatCountList) {
				if((totalSeat -(1 + seatCount.getCount()))< 0) {
					result.put("mealTime", seatCount.getMealTime());
				}
			}
		}
		return result;
	} 
	/**
	 * 비회원 예약조회
	 * @param reservationNo
	 * @param name
	 * @return 예약정보
	 */
	public RtRev getReservationNonMember(String reservationNo, String name) {
		RtRev rtRev = diningMapper.getRtRevByRevNo(reservationNo);
		if(rtRev == null) {
			throw new ApplicationException("예약번호 혹은 이름이 맞지않습니다.");
		}
		if(!rtRev.getName().equals(name)) {
			throw new ApplicationException("예약번호 혹은 이름이 맞지않습니다.");
		}
		
		return rtRev;
	}
	
	/**
	 * 주문상태 취소상태로 변경
	 * @param reservationNo
	 */
	public void deleteRtRev(String reservationNo) {
		RtRev rtRev = diningMapper.getRtRevByRevNo(reservationNo);
		if(rtRev.getStatus().equals("O")) {
			throw new ApplicationException("방문이 임박한 예약은 취소불가능합니다.");
		} else if(rtRev.getStatus().equals("D")) {
			throw new ApplicationException("이미 취소된 예약입니다.");
		} else if(rtRev.getStatus().equals("I")) {
			throw new ApplicationException("방문이 완료된 예약입니다.");
		} else {
			rtRev.setStatus("D");
			diningMapper.updateRtRev(rtRev);
		}
	}
	
	public void deleteRtRevCount(String mealTime, String seatType, int revCount) {
		diningMapper.deleteRtRevCount(mealTime, seatType, revCount);
	}

}
