<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
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
			margin: 0 auto 50px auto;
		}
		
		#topInfo{
			margin-top: 8px;
			background-color: #FFFFFF;
			border: 1px solid #DEE3EB;
			padding: 10px;
			text-align: right;
			font-size: 0.8em;
			display: table;
			width: 100%;
			box-sizing: border-box;
		}
		
		.tableCell{
			display: table-cell;
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
			overflow: scroll;
		}
		
		.noneHyper{
			text-decoration: none;
		}
		
		.gray_post_btn{
			background-color: 
		}
		
		#commentBox{
			margin-top: 20px;
			background-color: #FFFFFF;
			border: 1px solid #DEE3EB;
			padding: 15px;
		}
	</style>
</head>
<body>
	<jsp:include page="${ctx}/resources/include/header_bar.jsp" flush="false" >
		<jsp:param name="enableSpread"		value="false"/>
	</jsp:include>
	
	<section id="mainSection">
		<input type="hidden" id="UTP_SQ_PK" name="UTP_SQ_PK" value="${usedTradePostTbBean.UTP_SQ_PK}"/>
		<article id="topInfo">
			<div class="tableCell" style="text-align: left">
				<div>글번호 ${usedTradePostTbBean.UTP_SQ_PK}</div>
				<div>조회수 ${usedTradePostTbBean.UTP_CNT}</div>
			</div>
			<div class="tableCell" style="text-align: right">
				<div>작성일 ${usedTradePostTbBean.UTP_REPORTING_DT}</div>
				<div>신고 ${usedTradePostTbBean.UTP_NOTIFY_NUMBER}</div>
			</div>
			
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
					<td>${usedTradePostTbBean.PRDT_SIZE_PK} mm</td>
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
			<span style="color: orange;">※ 중고 직거래시 유의사항!</span><br>
			사기에 주의하세요.
		</article>
		<article id="prdtBody">
			${usedTradePostTbBean.UTP_BODY}
		</article>
		<div style="
			text-align: right;
			font-size: 0.8em;
		">최종 수정일 ${usedTradePostTbBean.UTP_FIN_MODIF_DT}</div>
		<a href="used_post_write_ck?UTP_SQ_PK=${usedTradePostTbBean.UTP_SQ_PK}" class="noneHyper gray_post_btn" style="
			color: black;
		">수정</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
		<a href="#" class="noneHyper gray_post_btn" onclick="javascript: deleteSubmit()" style="
			color: black;
		">삭제</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
		<a href="usedStore" class="noneHyper gray_post_btn" style="
			color: black;
		">목록으로</a>
		
		<article id="commentBox">
			<c:choose>
            			<c:when test="${null eq userEmail}">
            				<textarea id="UTPC_BODY" rows="4" cols="100" placeholder="로그인이 필요한 기능입니다." readonly="readonly"></textarea>
					<a href="login">로그인</a>
            			</c:when>
            			<c:when test="${!empty userEmail}">
            				<textarea id="UTPC_BODY" rows="4" cols="100" placeholder="댓글 내용을 입력하세요."></textarea>
					<a href="#" onclick="javascript: commentSubmit()">등록</a>
            			</c:when>
            			<c:otherwise>
					<span style="color: white;">error</span>
				</c:otherwise>
            		</c:choose>
			
			<table>
					<tr>
						<td>중고거래 댓글 식별번호</td>
						<td>이메일</td>
						<td>중고거래 댓글 식별번호2</td>
						<td>내용</td>
						<td>작성일</td>
						<td>최종수정일</td>
						<td>중고거래 게시글 식별번호</td>
						<td>신고횟수</td>
					</tr>
				<c:forEach var="item" items="${utpCommentTbBeanList}" varStatus="status">
					<tr>
						<td>${item.UTPC_SQ_PK}</td>
						<td>${item.MEM_EMAIL_PK}</td>
						<td>${item.UTP_SQ_PK}</td>
						<td>${item.UTPC_BODY}</td>
						<td>${item.UTPC_REPORTING_DT}</td>
						<td>${item.UTPC_FIN_MODIF_DT}</td>
						<td>${item.UTPC_SQ_PK_FK}</td>
						<td>${item.UTPC_NOTIFY_NUMBER}</td>
					</tr>
				</c:forEach>
			</table>
			
		</article>
	</section>
	
	<script type="text/javascript">
		function deleteSubmit(){
			var UTP_SQ_PK = $('#UTP_SQ_PK').val();
			
			$.ajax({
				type: "POST",
				url: "/shoes_shop/usedStoreDelete",
				contentType: "application/x-www-form-urlencoded; charset=utf-8",
				data:{
					'UTP_SQ_PK': UTP_SQ_PK
				},
				datatype: "text",
				success:function(data){
					console.log(data);
					
					if(data == '삭제성공'){
						alert('삭제되었습니다.');
						location.href="usedStore";
					}else if(data == '삭제실패'){
						alert('실패, 다시 시도해 주세요.');
					}else{
						alert('알 수 없는 오류');
					}
				},
					error:function(request, status, error){
					console.log(	'에러코드 : ' + request.status + '\n'
							+	'메시지 :' + request.responseText + '\n'
							+	'에러 : ' + error + '\n'
							+	'상태 : ' + status
					);
					return;
				}
			});
		}
		
		function commentSubmit(){
			var UTP_SQ_PK = $('#UTP_SQ_PK').val();
			var UTPC_BODY = $('#UTPC_BODY').val();
			
			$.ajax({
				type: "POST",
				url: "/shoes_shop/usedAddComment",
				contentType: "application/x-www-form-urlencoded; charset=utf-8",
				data:{
					'UTP_SQ_PK': UTP_SQ_PK,
					'UTPC_BODY': UTPC_BODY
				},
				datatype: "text",
				success:function(data){
					console.log(data);
					
					if(data == ''){
						//alert('등록되었습니다.');
						history.go(0);	// 현재 페이지 새로고침
					}else if(data == ''){
						//alert('실패, 다시 시도해 주세요.');
					}else{
						//alert('알 수 없는 오류');
					}
				},
					error:function(request, status, error){
					console.log(	'에러코드 : ' + request.status + '\n'
							+	'메시지 :' + request.responseText + '\n'
							+	'에러 : ' + error + '\n'
							+	'상태 : ' + status
					);
					return;
				}
			});
		}
	</script>
	
</body>
</html>
