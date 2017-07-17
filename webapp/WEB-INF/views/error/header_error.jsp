<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page isErrorPage = "true" %>
<!DOCTYPE html>
<html>
<head>
	
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<title>title</title>
	
</head>
<body>
	<%-- 에러 연습용 페이지
		<%@ page errorPage = "./WEB-INF/views/error/header_error.jsp" %>
		이것을 사용할 페이지에 덧붙이시오.
	 --%>
	
	<h1>ERROR !</h1>
	<br>
	<hr>
	<table>
		<tr>
			<th>원인</th>
			<td>저도 모르겠습니다.</td>
		</tr>
		<tr>
			<th>예외명</th>
			<td><%= exception.getClass().getName() %></td>
		</tr>
		<tr>
			<th>예외 메세지</th>
			<td><%= exception.getMessage() %></td>
		</tr>
		<tr>
			<th>예외 추적</th>
			<td>exception.printStackTrace()</td>
		</tr>
	</table>
	<hr>
	
	<!--
		만약 에러 페이지의 길이가 513 바이트보다 작다면,
		인터넷 익스플로러는 이 페이지가 출력하는 에러 페이지를 출력하지 않고
		자체적으로 제공하는 'HTTP 오류 메시지' 화면을 출력할 것이다.
		만약 에러 페이지의 길이가 513 바이트보다 작은데
		에러 페이지의 내용이 인터넷 익스플로러에서도 올바르게 출력되길 원한다면,
		응답 결과에 이 주석과 같은 내용을 포함시켜서
		에러 페이지의 길이가 513 바이트 이상이 되도록 해 주어야 한다.
		참고로 이 주석은 456바이트이다.
	-->
</body>
</html>