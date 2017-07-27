<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!-- 컨트롤러에서 주소창을 새로고침하면서 메인으로 이동시키고 싶을때 mav.setViewName("goToMain");을 치십시오. -->
<%
	response.sendRedirect(request.getContextPath()+"/main");
%>