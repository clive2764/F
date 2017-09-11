package com.steppe.nomad;


import org.slf4j.Logger; 
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.steppe.nomad.bean.Test;
import com.steppe.nomad.service.FstManagrment;

@Controller
public class TestController {
	
	private static final Logger logger = LoggerFactory.getLogger(TestController.class);
	@Autowired
	private FstManagrment fm;
	private ModelAndView mav;

	
	@RequestMapping(value = "/showFstList")
	public ModelAndView showFstList(Test test) {
		System.out.println("시험 리스트");
		mav=new ModelAndView();
		mav=fm.execute(test, 1);
		return mav;
	}
	
	@RequestMapping(value = "/showFstDetail")
	public ModelAndView showFstDetail() {
		System.out.println("시험 디테일");
		mav=new ModelAndView();
		mav=fm.execute(1); 
		return mav;
	}
	
	@RequestMapping(value = "/insertFst")
	public ModelAndView insertFst() {
		System.out.println("시험문제 추가");
		mav=new ModelAndView();
		mav=fm.execute(2); 
		return mav;
	}
	
	@RequestMapping(value = "/goInsertFst")
	public ModelAndView goInsertFst() {
		System.out.println("문제추가 페이지");
		mav=new ModelAndView();
		mav.setViewName("fstInsert");		
		return mav;
	}
	
	@RequestMapping(value = "/goUpdateFst")
	public ModelAndView UpdateFst() {
		System.out.println("문제수정 페이지");
		mav=new ModelAndView();
		mav=fm.execute(3); 		
		return mav;
	}
	
	@RequestMapping(value = "/updateFst")
	public ModelAndView updateFst() {
		System.out.println("시험문제 수정");
		mav=new ModelAndView();
		mav=fm.execute(4); 		
		return mav;
	}
	
	@RequestMapping(value = "/deleteFst")
	public ModelAndView deleteFst() {
		System.out.println("시험문제 삭제");
		mav=new ModelAndView();
		mav=fm.execute(5); 		
		return mav;
	}
	
	@RequestMapping(value = "/fst")
	public ModelAndView fst() {
		System.out.println("자격시험 페이지");
		mav=new ModelAndView();
		mav.setViewName("fst");		
		return mav;
	}
}
