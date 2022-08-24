package com.sh.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.sh.annotation.LoginUser;
import com.sh.criteria.QnaCriteria;
import com.sh.service.InquiryService;
import com.sh.service.UserService;
import com.sh.vo.Location;
import com.sh.vo.Pagination;
import com.sh.vo.Qna;
import com.sh.vo.QnaCategory;
import com.sh.vo.User;

@Controller
@RequestMapping(path = "/inquiry")
public class InquiryController {

	@Autowired
	private InquiryService inquiryService;
	@Autowired
	private UserService userService;

	/**
	 * 고객문의
	 * 
	 * @param loginUser
	 * @param model
	 * @return
	 */
	@GetMapping(path = "/inquiryForm")
	public String inquiryForm(@LoginUser User loginUser, Model model) {
		if (loginUser != null) {
			User user = userService.getUserDetail(loginUser.getId());
			model.addAttribute("user", user);
		}
		List<QnaCategory> category = inquiryService.getAllQnaCategory();
		List<Location> location = inquiryService.getAllLocation();
		model.addAttribute("category", category);
		model.addAttribute("location", location);

		return "inquiry/inquiryForm";
	}

	/**
	 * 문의내역 입력
	 * 
	 * @param
	 * @return
	 */
	@PostMapping(path = "/addInquiry")
	public String addInquiry(@LoginUser User loginUser, Qna qna) {
		inquiryService.insertInquiry(qna);

		if (loginUser == null) {
			return "redirect:/inquiry/complete";
		}
		return "redirect:list";
	}

	@GetMapping(path = "/complete")
	public String complete() {
		return "inquiry/complete";
	}

	/**
	 * 문의내역 리스트
	 * 
	 * @param loginUser
	 * @param pageNo
	 * @param model
	 * @return
	 */
	@GetMapping(path = "/list")
	public String inquiryList(@LoginUser User loginUser,
			@RequestParam(name = "page", required = false, defaultValue = "1") String pageNo, Model model) {
		if (loginUser == null) {
			return "redirect:/login?fail=deny";
		}

		int totalRows = inquiryService.getTotalRowsByUserNo(loginUser.getNo());
		Pagination pagination = new Pagination(totalRows, Integer.parseInt(pageNo));
		List<Qna> inquiries = inquiryService.getAllQnaByUserNo(pagination, loginUser.getNo());

		model.addAttribute("inquiries", inquiries);
		model.addAttribute("pagination", pagination);

		return "inquiry/list";
	}

	/**
	 * 필터적용
	 * 
	 * @param qnaCriteria
	 * @return
	 */
	@GetMapping("/search")
	@ResponseBody
	public List<Qna> search(QnaCriteria qnaCriteria) {
		return inquiryService.searchQna(qnaCriteria);
	}

	/**
	 * 문의내역 상세페이지
	 * 
	 * @param no
	 * @param model
	 * @return
	 */
	@GetMapping(path = "/detail")
	public String detail(@RequestParam("no") int no, Model model) {
		Qna inquiry = inquiryService.getInquiryDetail(no);
		model.addAttribute("inquiry", inquiry);
		return "inquiry/detail";
	}

	/**
	 * 문의내역 수정
	 * 
	 * @param no
	 * @param model
	 * @return
	 */
	@GetMapping(path = "/modify")
	public String modifyform(@RequestParam(value = "no", required = false) int no, Model model) {
		Qna inquiry = inquiryService.getInquiryDetail(no);
		model.addAttribute("inquiry", inquiry);
		return "inquiry/modify";
	}

	/**
	 * 문의내역 수정
	 * 
	 * @param qna
	 * @return
	 */
	@PostMapping(path = "/modify")
	public String modify(Qna qna) {
		inquiryService.updateInquiry(qna);
		return "redirect:detail?no=" + qna.getNo();
	}

	/**
	 * 삭제
	 * 
	 * @param no
	 * @param model
	 * @return
	 */
	@GetMapping(path = "/delete")
	public String delete(Qna qna) {
		inquiryService.deleteInquiry(qna);
		return "redirect:list";
	}

}