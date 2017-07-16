package com.shoes.controller;

import java.io.IOException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class JoinController{
	@RequestMapping("join")
	public String join(){
		return "join/join";
	}

	@RequestMapping("login")
	public String login(){
		return "join/login";
	}

	@RequestMapping("id_find")
	public String IdFind(){
		return "join/id_find";
	}

	@RequestMapping("pw_find")
	public String PwFind(){
		return "join/pw_find";
	}

	@RequestMapping("welcome")
	public String welcome(HttpServletRequest request){

		String email = request.getParameter("email");
		System.out.println(email);

		String passwd = request.getParameter("passwd");
		System.out.println(passwd);

		String confirm = request.getParameter("confirm");
		System.out.println(confirm);

		String name = request.getParameter("name");
		System.out.println(name);

		String postcode = request.getParameter("postcode");
		System.out.println(postcode);

		String jibun = request.getParameter("jibun");
		System.out.println(jibun);

		String road = request.getParameter("road");
		System.out.println(road);

		String address = request.getParameter("address");
		System.out.println(address);

		String mobile = request.getParameter("mobile");
		System.out.println(mobile);

		String mobile2 = request.getParameter("mobile2");
		System.out.println(mobile2);

		return "join/welcome";
	}
}
