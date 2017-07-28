package com.shoes.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class MyPageController{
	@RequestMapping("basket")
	public ModelAndView bascket(){
		ModelAndView mav = new ModelAndView("mypage/basket");
		
		return mav;
	}
}
