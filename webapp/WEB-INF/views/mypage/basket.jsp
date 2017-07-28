<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
	String ctx = request.getContextPath(); //콘텍스트명 얻어오기.
%>
<!DOCTYPE html>
<html>
<head>
	
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<title>장바구니</title>
	
</head>
<body>
	<c:if test="${!empty header}">
		
	</c:if>

	<h1>장바구니 입니다</h1>
	<br><br><br>
	<h1>반가워요!</h1>
	
</body>
</html>