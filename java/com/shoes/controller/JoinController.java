package com.shoes.controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.shoes.dao.MemberDAO;
import com.shoes.model.JoinBean;

@Controller
public class JoinController {
	
	@Autowired
	private MemberDAO mb;
	
	@RequestMapping("join")
	public String join() {
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
	public ModelAndView welcome(HttpServletRequest request){		
		
		ModelAndView mav = new ModelAndView();
		mav.setViewName("join/welcome");
		
		String email = request.getParameter("email"); // abc@naver.com
		String passwd = request.getParameter("passwd");
		String confirm = request.getParameter("confirm");
		String name = request.getParameter("name");
		String postcode = request.getParameter("postcode");
		String jibun = request.getParameter("jibun");
		String road= request.getParameter("road");
		String address = request.getParameter("address");
		String mobile = request.getParameter("mobile");
		String mobile2 = request.getParameter("mobile2");
		
		JoinBean jb = new JoinBean();
		
		String id = email;
		if(id.length() == 0 || id.equals("")){
		}else{
			id = id.substring(0, id.indexOf('@'));
		}
		jb.setMEM_EMAIL_PK(email);
		jb.setMEM_ID(id);
		jb.setMEM_PASSWORD(passwd);
		jb.setMEM_NM(name);
		jb.setMEM_HOME_PHONE(mobile);
		jb.setMEM_CELL_PHONE(mobile2);
		jb.setMEM_ZIPCODE("");
		jb.setMEM_ADDRESS("");
		jb.setMEM_DETAIL_ADDRESS("");
		jb.setGRADE_ST_PK("회원");
		jb.setMEMBER_MILEAGE(0);
		//클라이언에서 온 정보를 jb에 담음.
		
		// month에 1을 더하는지 빼는지 출력해볼것.
		java.util.Date utilDate = new java.util.Date();
		java.sql.Date sqlDate = new java.sql.Date(utilDate.getYear(), utilDate.getMonth()+1, utilDate.getDay());
		// System.out.println(utilDate.getMonth());
		// System.out.println(sqlDate);
		jb.setMEM_JOIN_DT(sqlDate);
		
		mb.join(jb);
		
		
		
		return mav; 
	}
}
