package com.sh.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import com.sh.vo.Admin;
import com.sh.vo.RoomRev;
import com.sh.vo.RtRev;

@Mapper
public interface AdminMapper {

	Admin getAdminByEmail(String email);
	int checkAdminByEmail(String email);
	void insertAdmin(Admin admin);
	
	// 지역별 매출합계
	int getSaleByLocation(int locationNo);
	
	int getSaleSeoul();
	int getSaleBusan();
	int getSaleJeju();
	int getSaleGangreung();
	int getSaleGwangju();
	
	// 월별 매출 합계
	int getSaleJan(int locationNo);
	int getSaleFeb(int locationNo);
	int getSaleMar(int locationNo);
	int getSaleApr(int locationNo);
	int getSaleMay(int locationNo);
	int getSaleJun(int locationNo);
	
	// 타입별 매출 합계
	int getSaleStandard(int locationNo);
	int getSaleExecutive(int locationNo);
	int getSaleSuite(int locationNo);
	
	// 지역별 예약수
	int getRevSeoul();
	int getRevBusan();
	int getRevJeju();
	int getRevGangreung();
	int getRevGwangju();
	
	// 월별 예약수 합계
	int getRevJan(int locationNo);
	int getRevFeb(int locationNo);
	int getRevMar(int locationNo);
	int getRevApr(int locationNo);
	int getRevMay(int locationNo);
	int getRevJun(int locationNo);
	
	// 타입별 예약수 합계
	int getRevStandard(int locationNo);
	int getRevExecutive(int locationNo);
	int getRevSuite(int locationNo);
	
	// 임박한 예약리스트 가져오기
	List<RoomRev> getRoomRevListByLocation(int locationNo);
	List<RtRev> getRtmRevListByLocation(int locationNo);
}
