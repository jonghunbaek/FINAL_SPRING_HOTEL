package com.sh.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.SessionAttributes;

import com.sh.annotation.LoginUser;
import com.sh.service.AdminQnaService;
import com.sh.service.AdminService;
import com.sh.service.InquiryService;
import com.sh.vo.Pagination;
import com.sh.vo.Qna;
import com.sh.vo.User;

@Controller
@RequestMapping("/admin")
@SessionAttributes("LOGIN_ADMIN")
public class AdminQnaController {

	@Autowired
	private AdminQnaService adminQnaService;
	@Autowired
	private InquiryService inquiryService;
	
	/** 문의내역 리스트
	 * @param loginUser
	 * @param pageNo
	 * @param model
	 * @return
	 */
	@GetMapping(path = "/inquiry")
	public String inquiryList(@RequestParam(name = "page" , required = false, defaultValue = "1") String pageNo, Model model) {
		
		int totalRows = inquiryService.getTotalRows();
		Pagination pagination = new Pagination(totalRows, Integer.parseInt(pageNo));
		List<Qna> inquiries = inquiryService.getAllQna(pagination);
		
		model.addAttribute("inquiries",inquiries);
		model.addAttribute("pagination",pagination);
		
		return "/admin/inquiry/inquiry";
	}
	
	/** 문의내역 상세페이지
	 * @param no
	 * @param model
	 * @return
	 */
	@GetMapping(path ="/detail")
	public String detail(@RequestParam("no") int no, Model model) {
		Qna inquiry = inquiryService.getInquiryDetail(no); 
		model.addAttribute("inquiry", inquiry);
		return "/admin/inquiry/detail";
	}
	

	/** 답변등록 페이지
	 * @param no
	 * @param model
	 * @return
	 */
	@GetMapping(path ="/answerForm")
	public String answerForm(@RequestParam(value="no", required=false) int no, Model model) {
		Qna inquiry = inquiryService.getInquiryDetail(no); 
		model.addAttribute("inquiry", inquiry);
		return "/admin/inquiry/answerForm";
	}
	
	/** 답변등록
	 * @param qna
	 * @return
	 */
	@PostMapping(path="/answerForm")
	public String addAnswer(Qna qna) {
		adminQnaService.updateAnswer(qna);
		return "redirect:/admin/detail?no="+qna.getNo();
	}
	
	/** 답변내역 수정
	 * @param no
	 * @param model
	 * @return
	 */
	@GetMapping(path="/modify")
	public String modifyform(@RequestParam(value="no", required=false) int no, Model model) {
		Qna inquiry = inquiryService.getInquiryDetail(no); 
		model.addAttribute("inquiry", inquiry);
		return "admin/inquiry/modify";
	}
	
	/** 답변내역 수정
	 * @param qna
	 * @return
	 */
	@PostMapping(path="/modify")
	public String modify(Qna qna) {
		adminQnaService.updateAnswer(qna);
		return "redirect:/admin/detail?no="+qna.getNo();
	}
	
	/** 답변삭제
	 * @param no
	 * @return
	 */
	@GetMapping(path="/delete")
	public String deleteAnswer(Qna qna) {
		adminQnaService.deleteAnswer(qna);
		return "redirect:/admin/detail?no="+qna.getNo();
	}
}
