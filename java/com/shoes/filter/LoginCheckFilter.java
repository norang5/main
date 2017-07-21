package com.shoes.filter;

import java.io.IOException;

import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

public class LoginCheckFilter implements Filter{

	@Override
	public void destroy(){
		
		
	}

	@Override
	public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain)
			throws IOException, ServletException{
		HttpServletRequest req = (HttpServletRequest)request;
		HttpServletResponse res = (HttpServletResponse)response;
		HttpSession session = req.getSession();
		
		String email = (String)session.getAttribute("userEmail");
		String url = req.getHeader("REFERER");	// 클라이언트가 요청을 보내온 이전 URL을 얻음.
												// 주소창에 직접 쳐서 들어온 경우엔  null 값 반환?
		
		if(email == null || email.equals("")){
			System.out.println("[필터] 다음의 URL로부터 비로그인 유저의 접근이 있었습니다\n" + url);
			req.getRequestDispatcher("/").forward(req, res);	// index 페이지로 이동
		}else{
			System.out.println("[필터] 다음의 URL로부터 로그인 유저의 접근이 있었습니다\n" + url);
		}
	}

	@Override
	public void init(FilterConfig arg0) throws ServletException{
		
		
	}

}
