package com.sh.mapper;


import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import com.sh.vo.Dn;
import com.sh.vo.DnInfo;
import com.sh.vo.Location;

@Mapper
public interface DiningMapper {

	List<Location> getAllLocations();
	Location getLocationByNo(int no);
	Dn getDiningByNo(int no);
	DnInfo getDiningInfoByNo(int no);
	
	List<Dn> getDiningByLocationNo(int no);
}
