package com.sh.service;

import java.util.Date;
import java.util.List;

import org.apache.ibatis.annotations.Param;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.sh.criteria.QnaCriteria;
import com.sh.mapper.InquiryMapper;
import com.sh.vo.Location;
import com.sh.vo.Pagination;
import com.sh.vo.Qna;
import com.sh.vo.QnaCategory;

@Service
public class InquiryService {

	@Autowired
	private InquiryMapper inquiryMapper;
	
	/** 모든 문의사항 조회
	 * @return
	 */
	public List<Qna> getAllQna(Pagination pagination) {
		return inquiryMapper.getAllInquiry(pagination);
	}
	/** 고객별 문의사항 조회
	 * @return
	 */
	public List<Qna> getAllQnaByUserNo(Pagination pagination,int userNo) {
		return inquiryMapper.getAllInquiryByUserNo(pagination, userNo);
	}
	
	/** 페이징처리 관련
	 * @return
	 */
	public int getTotalRows() {
		int totalRows = inquiryMapper.getQnaTotalRows();
		return totalRows;
	}
	
	public int getTotalRowsByUserNo(Integer no) {
		int totalRows = inquiryMapper.getQnaTotalRowsByUserNo(no);
		return totalRows;
	}
		
	/** 
	 * @param qnaCriteria
	 * @return
	 */
	public List<Qna> searchQna(QnaCriteria qnaCriteria) {
		return inquiryMapper.getInquiryByCriteria(qnaCriteria);
	}
	
	/** 모든 문의사항 카테고리 조회
	 * @return
	 */
	public List<QnaCategory> getAllQnaCategory() {
		return inquiryMapper.getAllQnaCategory();
	}
	
	/** 지역 조회 
	 * @return
	 */
	public List<Location> getAllLocation() {
		return inquiryMapper.getAllLocation();
	}
	
	/** 문의사항 입력
	 * @param inquiryForm
	 * @throws Exception
	 */
	public void insertInquiry(Qna qna) {
		inquiryMapper.insertInquiry(qna);
	}
	
	/** 번호를 입력받아 해당 문의사항 내역 조회
	 * @param no 문의사항 번호
	 * @return
	 */
	public Qna getInquiryDetail(int no) {
		return inquiryMapper.getInquiryByNo(no);
	}
	
	
	/** 문의사항 삭제
	 * @param no 문의사항 번호
	 */
	public void deleteInquiry(Qna qna) {
		inquiryMapper.deleteInquiry(qna);
	}
	
	
	/** 문의사항 수정
	 * @param qna 
	 */
	public void updateInquiry(Qna qna) {
		inquiryMapper.updateInquiry(qna);
	}
	

	
}
