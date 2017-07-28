package com.shoes.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class MyPageController{
	@RequestMapping("mypage/main")
	public ModelAndView mypage(){
		ModelAndView mav = new ModelAndView("mypage/mypage_main");
		
		return mav;
	}
	
	@RequestMapping("mypage/basket")
	public ModelAndView bascket(){
		ModelAndView mav = new ModelAndView("mypage/basket");
		
		return mav;
	}
}
