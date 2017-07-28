<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%
	String ctx = request.getContextPath(); //콘텍스트명 얻어오기.
%>
<!DOCTYPE html>
<html>
<head>
	
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<title>마이페이지-메인</title>
	
	<style type="text/css">
		html, body{
			width: 100%;
			height: 100%;
		}
	
		#mainContainer{
			display:-webkit-flex;
			display:flex;
			margin: 0 auto;
			width: 1000px;
			height: 100%;
		}
	
		/* 여유 공간이 있으면 width까지 늘어나고,
		여유 공간이 없으면 min-width까지 줄어들지만
		그 이하로 더 작아지지는 않아요. */
		#mainNav{
			border: 3px solid red;
			width: 220px;
			min-width: 150px;
			
			height: 100%;
		}
		
		
		#mainSection{
			border: 3px solid orange;
			min-width: 400px;
			
			height: 100%;
		}
		
		/* 나머지 너비의 1/1을 채워요. */
		.flex-column{
			-webkit-flex: 1;
			flex: 1;
		}
	</style>
	
</head>
<body>
	<jsp:include page="${ctx}/resources/include/header_bar.jsp" flush="false" >
		<jsp:param name="enableSpread"		value="false"/>
	</jsp:include>
	
	<div id="mainContainer">
		<nav id="mainNav">
			
		</nav>
		
		<section id="mainSection" class="flex-column">
				
		
		</section>
	</div>
</body>
</html>