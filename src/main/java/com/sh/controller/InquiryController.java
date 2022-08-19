package com.sh.controller;

import java.io.Console;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.sh.annotation.LoginUser;
import com.sh.service.InquiryService;
import com.sh.service.UserService;
import com.sh.vo.Qna;
import com.sh.vo.User;
import com.sh.web.form.InquiryForm;

@Controller
@RequestMapping(path="/inquiry")
public class InquiryController {

	@Autowired
	private InquiryService inquiryService;
	@Autowired
	private UserService userService;
	
		/** 문의내역 입력
		 * @param inquiryForm
		 * @return
		 */
		@PostMapping(path ="/addInquiry")
		public String addInquiry(@LoginUser User loginUser, Qna qna) {
			System.out.println(loginUser);
			inquiryService.insertInquiry(qna);
			
			return "redirect:list";
		}
		
		/** 문의내역 리스트
		 * @param model
		 * @return
		 */
		@GetMapping(path = "/list")
		public String inquiryList(Model model) {
			List<Qna> inquiries = inquiryService.getAllQna();
			model.addAttribute("inquiries",inquiries);
			return "inquiry/list";
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
			return "inquiry/detail";
		}
		
		/** 문의내역 수정
		 * @param no
		 * @param model
		 * @return
		 */
		@GetMapping(path="/modify")
		public String modifyform(@RequestParam(value="no", required=false) int no, Model model) {
			Qna inquiry = inquiryService.getInquiryDetail(no); 
			model.addAttribute("inquiry", inquiry);
			return "inquiry/modify";
		}
		
		/** 문의내역 수정
		 * @param qna
		 * @return
		 */
		@PostMapping(path="/modify")
		public String modify(Qna qna) {
			inquiryService.updateInquiry(qna);
			return "redirect:detail?no="+qna.getNo();
		}

		/** 삭제
		 * @param no
		 * @param model
		 * @return
		 */
		@GetMapping(path="/delete")
		public String delete(@RequestParam("no") int no) {
			inquiryService.deleteInquiryByNo(no);
			return "redirect:list";
		}
}