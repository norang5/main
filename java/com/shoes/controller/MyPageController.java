package com.shoes.controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class MyPageController{
	@RequestMapping("mypage/main")
	public ModelAndView mypage(HttpServletRequest request){
		ModelAndView mav = new ModelAndView("mypage/mypage_main");
		
		String menuUrl =  request.getParameter("page");
		System.out.println("메뉴Url: " + menuUrl);
		if(menuUrl != null && !menuUrl.equals("")){
			switch(menuUrl){
				case "basket":
					mav.addObject("menuUrl", request.getContextPath() + "/mypage/basket");
					break;
				case "chart":
					mav.addObject("menuUrl", request.getContextPath() + "/mypage/chart");
					break;
				case "interest":
					mav.addObject("menuUrl", request.getContextPath() + "/mypage/interest");
					break;
				case "mileage_history":
					mav.addObject("menuUrl", request.getContextPath() + "/mypage/mileage_history");
					break;
				case "my_info":
					mav.addObject("menuUrl", request.getContextPath() + "/mypage/my_info");
					break;
				case "payment_info":
					mav.addObject("menuUrl", request.getContextPath() + "/mypage/payment_info");
					break;
				case "product":
					mav.addObject("menuUrl", request.getContextPath() + "/mypage/product");
					break;
				default:
					
					break;
			}
			
			System.out.println("메뉴Url 실행됨.");
		}
		
		return mav;
	}
	
	@RequestMapping("mypage/basket")
	public ModelAndView bascket(){
		ModelAndView mav = new ModelAndView("mypage/basket");
		return mav;
	}
	
	@RequestMapping("mypage/chart")
	public ModelAndView chart(){
		ModelAndView mav = new ModelAndView("mypage/chart");
		return mav;
	}
	
	@RequestMapping("mypage/interest")
	public ModelAndView interest(){
		ModelAndView mav = new ModelAndView("mypage/interest");
		return mav;
	}
	
	@RequestMapping("mypage/mileage_history")
	public ModelAndView mileageHistory(){
		ModelAndView mav = new ModelAndView("mypage/mileage_history");
		return mav;
	}
	
	@RequestMapping("mypage/my_info")
	public ModelAndView myInfo(){
		ModelAndView mav = new ModelAndView("mypage/my_info");
		return mav;
	}
	
	@RequestMapping("mypage/payment_info")
	public ModelAndView paymentInfo(){
		ModelAndView mav = new ModelAndView("mypage/payment_info");
		return mav;
	}
	
	@RequestMapping("mypage/product")
	public ModelAndView proudct(){
		ModelAndView mav = new ModelAndView("mypage/product");
		return mav;
	}
}
