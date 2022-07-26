package com.sh.mapper;


import java.util.Date;
import java.util.List;

import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;

import com.sh.vo.Allergy;
import com.sh.vo.Dn;
import com.sh.vo.DnCategory;
import com.sh.vo.DnInfo;
import com.sh.vo.DnMealTime;
import com.sh.vo.DnRev;
import com.sh.vo.DnSeatCountOfDate;
import com.sh.vo.Location;
import com.sh.vo.RtRev;
import com.sh.vo.RtRevCount;
import com.sh.vo.User;

@Mapper
public interface DiningMapper {

	List<Location> getAllLocations();
	Location getLocationByNo(int no);
	Location getLocationByDnNo(int dnNo);
	
	Dn getDiningByNo(int no);
	DnInfo getDiningInfoByNo(int no);
	DnCategory getDnCategoryByNo(int no);
	
	List<DnRev> getDiningRevByNo(int no);
	List<DnMealTime> getMealTimeByNo(int no);
	List<String> getTimeByParaMeters(@Param("week") String week, @Param("no") int no, @Param("mealTime") String mealTime);
	List<Allergy> getAllAllergies();
	
	List<Dn> getDiningByLocationNo(int no);
	void insertAllergySelected(@Param("rtRevNo") int rtRevNo, @Param("allergyNo") int allergyNo);
	void insertReservation(RtRev rtRev);
	
	void insertRtRevCount(RtRevCount rtRevCount);
	
	List<DnSeatCountOfDate> getDnSeatCountOfDate(@Param("no") int no, @Param("date") Date date, @Param("seatType") String seatType);
	int getTotalSeatByNo(int no);
	int getTotalRoomByNo(int no);

	RtRev getRtRevByRevNo(String no);
	void updateRtRev(RtRev rtRev);
	void deleteRtRevCount(@Param("mealTime") String mealTime,@Param("seatType") String seatType, @Param("revCount") int revCount);
	List<RtRev> getRtRevsByUserId(String userId);

}
