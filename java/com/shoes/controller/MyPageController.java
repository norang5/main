package com.shoes.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class MyPageController{
	@RequestMapping("mypage")
	public ModelAndView mypage(){
		ModelAndView mav = new ModelAndView("mypage/mypage_main");
		
		return mav;
	}
	
	@RequestMapping("basket")
	public ModelAndView bascket(){
		ModelAndView mav = new ModelAndView("mypage/basket");
		
		return mav;
	}
}
