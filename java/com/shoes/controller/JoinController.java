package com.shoes.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.shoes.dao.MemberDAO;
import com.shoes.model.JoinBean;
import com.shoes.model.PwFindAskBean;

@Controller
public class JoinController {
	@Autowired
	private MemberDAO mb;

	@RequestMapping("join")
	public ModelAndView join() {

		List<PwFindAskBean> pwfind = mb.getPwFindAskBeanList();

		ModelAndView mav = new ModelAndView();
		mav.addObject("pwfind", pwfind);
		mav.setViewName("join/join");
		return mav;
	}
	
	@RequestMapping(value="emailDuplicateCheck", method=RequestMethod.POST)
	public void emailDuplicateCheck(HttpServletRequest request, HttpServletResponse response){
		JoinBean joinBean = mb.getMemberTbMemEmailPk(request.getParameter("MEM_EMAIL_PK"));
		response.setCharacterEncoding("utf-8");
		try{
			PrintWriter out = response.getWriter();
			
			if(joinBean == null){
				out.print("없음");
			}else{
				out.print("존재함");
			}
		}catch(IOException e){
			e.printStackTrace();
		}
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
	public ModelAndView welcome(HttpServletRequest request, JoinBean bean, HttpSession session) {

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
		
		session.setAttribute("userEmail", bean.getMEM_EMAIL_PK());
		
		mav.addObject("name", bean.getMEM_EMAIL_PK());
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
		
		String toHere = "";
		if(joinBean == null){
			toHere = "join/login";
			System.out.println("로그인실패");
			
			return toHere;
		}
		
		if ((email.equals(joinBean.getMEM_EMAIL_PK()) == true) && (pw.equals(joinBean.getMEM_PASSWORD()) == true)) {
			System.out.println("로그인성공");

			session.setAttribute("userEmail", email);
			toHere = "join/loginSuccess";	// 여기서 바로 main으로 이동하면 주소창이 /login으로 계속 남아있는 문제가 발생하므로 .jsp에서 재요청하도록 코딩.
		} else {
			toHere = "join/login";
			System.out.println("로그인실패");
		}

		return toHere;
	}

	@RequestMapping(value = "logout")
	public void logout(HttpServletRequest request, HttpSession session, HttpServletResponse response) {
		session.removeAttribute("userEmail");

		String url = request.getHeader("REFERER"); // 클라이언트가 요청을 보내온 페이지의
													// URL알아내는 방법.
		
		System.out.println("로그아웃 페이지로 들어오기 전 url은: " + url);
		
		String toHere = "/main"; // index로 이동
		if (url != null) {
			url = url.substring(url.indexOf("//") + 2).substring(
						request.getServerName().length()
						+ 1
						+ (request.getServerPort() + "").length()
						+ request.getContextPath().length()
					);
			
			toHere = url; // 이전 페이지로 이동(새로고침 효과)*
		}
		
		System.out.println("로그아웃 페이지에서 이동시킬 url은: " + toHere);
		
		try{
			response.sendRedirect(request.getContextPath() + toHere);
		}catch(IOException e){
			e.printStackTrace();
		}
	}

	/*
	 * 아이디 찾기 참고용 코드
	 * 
	 * @RequestMapping("idfind") public ModelAndView login(HttpServletRequest
	 * request) { // 중대한 문제! 이메일 찾는건데 이메일을 입력받고 있다. ModelAndView mav = new
	 * ModelAndView(); String email = request.getParameter("email"); String name
	 * = request.getParameter("name"); JoinBean bean =
	 * mb.getMemberTbIdEmail("getMemberTbIdEmail", email, name);
	 * 
	 * if(bean.getMEM_EMAIL_PK().equals(email) &&
	 * bean.getMEM_NM().equals(name)){ mav.setAddObject("member", bean);
	 * mav.setViewName(""); }else{ mav.setViewName(""); }
	 * 
	 * return mav; }
	 */

}
