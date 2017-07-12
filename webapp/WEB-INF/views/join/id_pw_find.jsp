<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<title>아이디/비밀번호 찾기</title>
<style type="text/css">
	header {
		text-align: center;
	}
	section{
		text-align: center;
	}
</style>
</head>
<body>
	<header>
		<h2>FIND PASSWORD</h2>
		<h3>비밀번호 찾기</h3>
		<h5>가입하신 방법에 따라 비밀번호 찾기가 가능합니다.</h5>
	</header>
	<hr/>
	<section>
		<input type="button" value="아이디 찾기" > 
		<input type="button" value="비밀번호 찾기">
		<br> 	
		<input type="radio" id="email">이메일
		<input type="radio" id="mobile">휴대폰번호
	</section>
	 
</body>
</html>