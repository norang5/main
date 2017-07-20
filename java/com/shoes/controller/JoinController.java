package com.shoes.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

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

	@RequestMapping("id_find")
	public String IdFind() {
		return "join/id_find";
	}

	@RequestMapping("pw_find")
	public String PwFind() {
		return "join/pw_find";
	}

	@RequestMapping("welcome")
	public ModelAndView welcome(HttpServletRequest request, JoinBean bean) {

		System.out.println(bean);

		ModelAndView mav = new ModelAndView();
		mav.setViewName("join/welcome");

		// 1.email에 공백이거나 공백이있거나 특수문자가 있는지 확인한다.alert창을 띄운다.
		// 2.서버는 email칸을 제외한 나머지 칸들은 입력내용을 유지시킨다.
		// 3.비밀번호는 4자리이상 12자리 이하만 허락을 한다.
		// 4.비밀번호에 공백이들어가 있거나 한글이 들어가게 되면 alert 창을 띄운다.
		// 5.주소는 우편번호 찾기를 통하여 필수로 등록하도록 한다.
		// 6.상세주소는 null값을 허용한다.
		// 7.전화번호와 휴대폰번호 중 하나는 필수등록하게 한다.

		String id = bean.getMEM_EMAIL_PK();
		if (id.length() == 0 || id.equals("")) {
			// 클라이언트쪽에서 처리함
		} else {
			id = id.substring(0, id.indexOf('@'));
		}

		bean.setMEM_ID(id);
		bean.setGRADE_ST_PK("일반회원");
		bean.setMEM_JOIN_DT(new java.sql.Date(new java.util.Date().getTime()));

		System.out.println(bean);

		mb.insertMemberTb(bean);

		return mav;
	}

	@RequestMapping("login")
	public String login() {
		return "join/login";
	}

	@RequestMapping(value = "login", method = RequestMethod.POST)
	public String login(HttpServletRequest request, HttpSession session) {
		String email = request.getParameter("email");
		String pw = request.getParameter("password");

		JoinBean joinBean = mb.login(email);
		
		String toHere="";
		if (	(email.equals(joinBean.getMEM_EMAIL_PK()) == true)
			&&	(pw.equals(joinBean.getMEM_PASSWORD()) == true)	){
			System.out.println("로그인성공");
			
			session.setAttribute("userEmail",email);
			toHere = "main";
		} else {
			toHere = "join/login";
			System.out.println("로그인실패");
		}
		
		return toHere;
	}
}
