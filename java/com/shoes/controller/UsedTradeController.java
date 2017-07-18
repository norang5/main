package com.shoes.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.shoes.dao.UsedTradeDAO;
import com.shoes.model.UsedTradePostTbBean;

@Controller
public class UsedTradeController{
	
	@Autowired
	private UsedTradeDAO dao;
	
	// 중고장터로 이동
	@RequestMapping("usedStore")
	public String goToUsedStore() {
		return "usedStore/usedStoreMain";
	}
	
	// 중고거래글 작성 페이지로 이동
	@RequestMapping(value="used_post_write", method=RequestMethod.GET)
	public ModelAndView usedStorePostWriteGet(){
		ModelAndView mav = new ModelAndView();
		mav.setViewName("usedStore/used_post_write");
		
		return mav;
	}
	
	// 중고거래글 작성후에, 그 데이터가 서버로 전송될때.
	@RequestMapping(value="used_post_write", method=RequestMethod.POST)
	public String usedStorePostWritePost(@ModelAttribute("usedTradePostBean") UsedTradePostTbBean bean){
		
		System.out.println(bean);
		
		return "redirect:/main";
	}
}
