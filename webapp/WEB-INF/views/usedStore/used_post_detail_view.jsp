<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%
	String ctx = request.getContextPath(); //콘텍스트명 얻어오기.
%>
<!DOCTYPE html>
<html>
<head>
	
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<title>title</title>
	
	
	<style type="text/css">
		html{
			height: 100%;
		}
		
		body{
			height: 100%;
			background-color: #F2F4F7;
		}
		
		#mainSection{
			width: 1000px;
			margin: 0 auto;
		}
		
		#topInfo{
			margin-top: 8px;
			background-color: #FFFFFF;
			border: 1px solid #DEE3EB;
			padding: 10px;
			text-align: right;
			font-size: 0.8em;
		}
		
		#info{
			margin-top: 8px;
			background-color: #FFFFFF;
			border: 1px solid #DEE3EB;
			padding: 10px;
		}
		
		table{
			border-collapse: collapse;
			width: 100%;
		}
		
		table td{
			background-color: #F9FAFC;
			border: 1px solid #E3E7EE;
			padding: 10px;
		}
		
		#alert{
			margin-top: 8px;
			background-color: #FFFFFF;
			border: 1px solid #DEE3EB;
			padding: 10px;
		}
		
		#prdtBody{
			margin-top: 8px;
			background-color: #FFFFFF;
			border: 1px solid #DEE3EB;
			padding: 15px;
		}
	
	</style>
</head>
<body>
	<jsp:include page="${ctx}/resources/include/header_bar.jsp" flush="false" />
	
	<section id="mainSection">
		<article id="topInfo">
			<div>글번호 ${usedTradePostTbBean.UTP_SQ_PK}</div>
			<div>작성일 ${usedTradePostTbBean.UTP_REPORTING_DT}</div>
			<div>조회수 ${usedTradePostTbBean.UTP_CNT}</div>
			<div>신고 ${usedTradePostTbBean.UTP_NOTIFY_NUMBER}</div>
		</article>
		<article id="info">
			<div style="
						background-color: white;
						font-size: 1.5em;
						font-weight: bold;
						text-align: center;
						margin-bottom: 8px;
			">${usedTradePostTbBean.UTP_TITLE}</div>
			<table>
				<tr>
					<td>${usedTradePostTbBean.USED_TRADE_ST_PK}</td>
				</tr>
				<tr>
					<td>${usedTradePostTbBean.DISTRICT_PK}</td>
				</tr>
				<tr>
					<td>${usedTradePostTbBean.PRDT_SIZE_PK}</td>
				</tr>
				<tr>	
					<td>${usedTradePostTbBean.USED_ST_GRADE_PK}</td>
				</tr>
				<tr>	
					<td>${usedTradePostTbBean.MEM_EMAIL_PK}</td>
				</tr>
			</table>
		</article>
		<article id="alert">
			유의사항!
		</article>
		<article id="prdtBody">
			${usedTradePostTbBean.UTP_BODY}
		</article>
		<div style="
			text-align: right;
			font-size: 0.8em;
		">최종 수정일 ${usedTradePostTbBean.UTP_FIN_MODIF_DT}</div>
	</section>
	
	
</body>
</html>