package com.shoes.controller;

import java.io.IOException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class JoinController {
	@RequestMapping("join")
	public String join() {
		System.out.println("왜 안돼");
		return "join/join";
	}
	
	@RequestMapping("login")
	public String login() {
		return "join/login";
	}
	@RequestMapping("id_find")
	public String IdFind(){
		return"join/id_find";
	}
	@RequestMapping("pw_find")
	public String PwFind(){
		return"join/pw_find";
	}
	@RequestMapping("welcome")
	public String welcome(){
		return"join/welcome"; 
	}
	
	

}
