package com.sh.service;

import java.util.Date;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.sh.mapper.InquiryMapper;
import com.sh.vo.Qna;

@Service
public class AdminQnaService {

	@Autowired
	private InquiryMapper inquiryMapper;

	/**
	 * 답변내역 작성 및 수정
	 * 
	 * @param qna
	 */
	public void updateAnswer(Qna qna) {
		qna.setUpdatedDate(new Date());
		qna.setAnswerState("Y");
		System.out.println();
		System.out.println(qna);
		System.out.println();
		inquiryMapper.updateAnswer(qna);
	}

	/**
	 * 답변내역 삭제
	 * 
	 * @param qna
	 */
	public void deleteAnswer(Qna qna) {
		qna.setAnswerContent(null);
		qna.setAnswerState("N");
		System.out.println();
		System.out.println(qna);
		System.out.println();
		inquiryMapper.updateAnswer(qna);
	}

}
