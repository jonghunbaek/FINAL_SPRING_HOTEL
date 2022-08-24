package com.sh.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;

import com.sh.criteria.QnaCriteria;
import com.sh.vo.Location;
import com.sh.vo.Pagination;
import com.sh.vo.Qna;
import com.sh.vo.QnaCategory;

@Mapper
public interface InquiryMapper {
	// 문의내역 입력
	void insertInquiry(Qna qna);
	
	// 문의내역 수정
	void updateInquiry(Qna qna);
	
	// 답변내역 등록 및 수정
	void updateAnswer(Qna qna);
	
	// 문의내역 삭제
	void deleteInquiry(Qna qna);
	
	// 모든 문의내역 조회
	List<Qna> getAllInquiry(Pagination pagination);
	
	// 회원별 문의내역 조회
	List<Qna> getInquiryByUserNo(Pagination pagination, int userNo);
	
	// 회원번호로 문의내역 조회
	List<Qna> getQnaByUserNo(int userNo);
	
	// 문의내역 상세사항
	Qna getInquiryByNo(int no);
	
	// 전체 Category 정보
	List<QnaCategory> getAllQnaCategory();
	
	// Category 상세정보
	QnaCategory getQnaCategoryByNo(int no);
	
	// 지역 조회
	List<Location> getAllLocation();
	// 지역 상세정보
	Location getLocationByNo(int no);
	
	// 페이징처리 관련 
	int getQnaTotalRows();
	int getQnaTotalRowsByFilter(QnaCriteria qnaCriteria);
}
