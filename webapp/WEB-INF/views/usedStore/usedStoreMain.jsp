<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
    String ctx = request.getContextPath();    //콘텍스트명 얻어오기.
%>
<!DOCTYPE html>
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<title>중고장터</title>
	
	<jsp:include page="${ctx}/resources/include/header_bar.jsp" flush="false"/>
	<style>
		p{
			margin-top: 5px;
			padding: 0px;
			font-size: 2em;
		}
	</style>

</head>
<body>
	
	중고거래페이지<br>
	<input type="button" value="글쓰기" style="
		color: white;
		background-color: skyBlue;
		border: 1px solid black;
	" onclick="location.href='used_post_write_ck'">
	
</body>
</html>