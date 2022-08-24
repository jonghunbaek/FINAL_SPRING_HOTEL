package com.sh.mapper;

import org.apache.ibatis.annotations.Mapper;

import com.sh.vo.Admin;

@Mapper
public interface AdminMapper {

	Admin getAdminByEmail(String email);
	int checkAdminByEmail(String email);
	void insertAdmin(Admin admin);
	
	// 지역별 매출합계
	int getSaleSeoul();
	int getSaleBusan();
	int getSaleJeju();
	int getSaleGangreung();
	int getSaleGwangju();
	
	// 월별 매출 합계
	int getSaleJan();
	int getSaleFeb();
	int getSaleMar();
	int getSaleApr();
	int getSaleMay();
	int getSaleJun();
	
	// 타입별 매출 합계
	int getSaleStandard();
	int getSaleExecutive();
	int getSaleSuite();
}
