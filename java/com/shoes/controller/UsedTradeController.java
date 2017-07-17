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
	
	@RequestMapping("usedStore")
	public String goToUsedStore() {
		return "usedStore/usedStoreMain";
	}
	
	@RequestMapping(value="used_post_write", method=RequestMethod.GET)
	public ModelAndView usedStorePostWriteGet(){
		ModelAndView mav = new ModelAndView();
		mav.setViewName("usedStore/used_post_write");
		
		return mav;
	}
	
	@RequestMapping(value="used_post_write", method=RequestMethod.POST)
	public String usedStorePostWritePost(@ModelAttribute("usedTradePostBean") UsedTradePostTbBean bean){
		
		System.out.println(bean);
		
		return "redirect:/main";
	}
}
