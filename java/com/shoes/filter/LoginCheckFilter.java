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

import org.springframework.web.util.UrlPathHelper;

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
		/*
			리퍼러 값: http://localhost:8090/shoes_shop/usedStore
			getRequestURL() 값: http://localhost:8090/shoes_shop/used_post_write_ck
			getRequestURI() 값: /shoes_shop/used_post_write_ck
			getContextPath() 값: /shoes_shop
			getServletPath() 값: /used_post_write_ck
			getServerName() 값: localhost
			getServerPort() 값: 8090
			getProtocol() 값: HTTP/1.1
			urlPathHelper 값: /shoes_shop/used_post_write_ck
			toURL: used_post_write_ck
		*/
		
		// 클라이언트가 요청을 보내온 이전 URL을 얻음.
		// 주소창에 직접 쳐서 들어온 경우엔  null 값 반환.
		String referURL = req.getHeader("REFERER");
		String fromURL = "/";
		
		if(referURL != null){
			fromURL = referURL.substring(referURL.indexOf("//") + 2).substring(
					req.getServerName().length()
					+ 1
					+ (req.getServerPort() + "").length()
					+ req.getContextPath().length()
			);
			System.out.println("프롬유알엘" + fromURL);
		}
		
		// 클라이언트가 이동을 요청한 URL 알아내기
		UrlPathHelper urlPathHelper = new UrlPathHelper();
		String originalURL = urlPathHelper.getOriginatingRequestUri(req);
		String toURL =  originalURL.substring(req.getContextPath().length() + 1);
		
		if(email == null || email.equals("")){
			System.out.println("[필터] 다음의 URL로부터 비로그인 유저의 접근이 있었습니다\n" + referURL);
			//req.getRequestDispatcher(fromURL).forward(req, res);
			res.sendRedirect(req.getContextPath() + fromURL);
			
		}else{
			System.out.println("[필터] 다음의 URL로부터 로그인 유저의 접근이 있었습니다\n" + referURL);
			req.getRequestDispatcher(toURL).forward(req, res);
		}
	}

	@Override
	public void init(FilterConfig arg0) throws ServletException{
		
		
	}

}
