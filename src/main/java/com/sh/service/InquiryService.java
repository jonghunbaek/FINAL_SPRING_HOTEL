package com.sh.service;

import java.util.List;

import org.springframework.beans.BeanUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.sh.mapper.InquiryMapper;
import com.sh.vo.Location;
import com.sh.vo.Qna;
import com.sh.vo.QnaCategory;
import com.sh.web.form.InquiryForm;

@Service
public class InquiryService {

	@Autowired
	private InquiryMapper inquiryMapper;
	
	/** 모든 문의사항 조회
	 * @return
	 */
	public List<Qna> getAllQna() {
		return inquiryMapper.getAllInquiry();
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
		//na qna = new Qna();
		// BeanUtils.copyProperties(inquiryForm, qna);
		System.out.println(qna);
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
	public void deleteInquiryByNo(int no) {
		inquiryMapper.deleteInquiry(no);
	}
	
	
	/** 문의사항 수정
	 * @param qna 
	 */
	public void updateInquiry(Qna qna) {
		inquiryMapper.updateInquiry(qna);
	}
}
