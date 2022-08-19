package com.sh.mapper;


import java.util.List;

import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;

import com.sh.vo.Allergy;
import com.sh.vo.AllergySelected;
import com.sh.vo.Dn;
import com.sh.vo.DnInfo;
import com.sh.vo.DnMealTime;
import com.sh.vo.DnRev;
import com.sh.vo.Location;
import com.sh.vo.RtRev;

@Mapper
public interface DiningMapper {

	List<Location> getAllLocations();
	Location getLocationByNo(int no);
	Location getLocationByDnNo(int dnNo);
	
	Dn getDiningByNo(int no);
	DnInfo getDiningInfoByNo(int no);
	List<DnRev> getDiningRevByNo(int no);
	List<DnMealTime> getMealTimeByNo(int no);
	List<String> getTimeByParaMeters(@Param("week") String week, @Param("no") int no, @Param("mealTime") String mealTime);
	List<Allergy> getAllAllergies();
	
	List<Dn> getDiningByLocationNo(int no);
	void insertAllergySelected(@Param("rtRevNo") int rtRevNo, @Param("allergyNo") int allergyNo);
	void insertReservation(RtRev rtRev);
}
