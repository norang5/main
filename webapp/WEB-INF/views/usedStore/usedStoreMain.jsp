<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
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
		
	</style>
</head>
<body>
	
	중고거래페이지<br>
	<input type="button" value="글쓰기" style="
		color: white;
		background-color: skyBlue;
		border: 1px solid black;
	" onclick="location.href='used_post_write_ck'">
	<hr>
	<c:forEach var="item" items="${usedTradePostTbBeanList}" varStatus="status">
		<table>
			<tr>
				<td>대표이미지</td><td><img src="${mainImgList[status.index]}"/></td>
			</tr>
			<tr>
				<td>글번호</td><td>${item.UTP_SQ_PK}</td>
			</tr>
			<tr>
				<td>제목</td><td>${item.UTP_TITLE}</td>
			</tr>
			<tr>
				<td>내용</td><td>${item.UTP_BODY}</td>
			</tr>
			<tr>
				<td>작성일</td><td>${item.UTP_REPORTING_DT}</td>
			</tr>
		</table>
		<hr>
	</c:forEach>
	
</body>
</html>