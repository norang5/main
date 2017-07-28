package com.shoes.controller;

import javax.servlet.http.HttpServletRequest;

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
	public ModelAndView bascket(HttpServletRequest request){
		ModelAndView mav = new ModelAndView("mypage/basket");
		
		// 파라미터로 header에 값이 담겨오면 jsp페이지에 헤더를 인클루드 한다.
		String header = request.getParameter("header");
		
		if(header != null){
			mav.addObject("header", true);
		}
		
		return mav;
	}
	
	
}
