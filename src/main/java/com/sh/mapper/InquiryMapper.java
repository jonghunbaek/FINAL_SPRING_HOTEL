package com.sh.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import com.sh.vo.Location;
import com.sh.vo.Qna;
import com.sh.vo.QnaCategory;

@Mapper
public interface InquiryMapper {
	
	void insertInquiry(Qna qna);
	void updateInquiry(Qna qna);
	void deleteInquiry(int no);
	List<Qna> getAllInquiry();
	Qna getInquiryByNo(int no);
	QnaCategory getQnaCategoryByNo(int no);
	
	List<QnaCategory> getAllQnaCategory();
	List<Location> getAllLocation();
	Location getLocationByNo(int no);
}
