<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!-- 페이징 처리시 필요한 전자정부 태그 라이브러리 -->
<!-- 이 태그에서 에러가 날시엔 egovframework.rte.ptl.mvc-3.5.0.jar 파일을 톰캣-lib에 직접 넣을것 -->
<%@ taglib prefix="ui" uri="http://egovframework.gov/ctl/ui" %>
<%
	String ctx = request.getContextPath(); //콘텍스트명 얻어오기.
%>
<!DOCTYPE html>
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<title>중고장터</title>
	
	<jsp:include page="${ctx}/resources/include/header_bar.jsp" flush="false" />
	<style>
	</style>
	
	<!-- jQuery -->
	<script src="https://code.jquery.com/jquery-3.2.1.min.js"></script>
</head>
<body>

	중고거래페이지
	<br>
	<input	style="
			color: white;
			background-color: skyBlue;
			border: 1px solid black;
		"
		type="button" value="글쓰기"
		onclick="location.href='used_post_write_ck'">
	<hr>

	<ul id="list_wrap">
		<c:forEach var="item" items="${usedTradePostTbBeanList}" varStatus="status">
			<li>
				<table>
					<tr>
						<td>대표이미지</td>
						<td><img src="${mainImgList[status.index]}" width="300px"/></td>
					</tr>
					<tr>
						<td>글번호</td>
						<td>${item.UTP_SQ_PK}</td>
					</tr>
					<tr>
						<td>제목</td>
						<td>${item.UTP_TITLE}</td>
					</tr>
				<%--	<tr>
						<td>내용</td><td>${item.UTP_BODY}</td>
					</tr> --%>
					<tr>
						<td>작성일</td>
						<td>${item.UTP_REPORTING_DT}</td>
					</tr>
					<tr>
						<td>최종수정일</td>
						<td>${item.UTP_FIN_MODIF_DT}</td>
					</tr>
					<tr>
						<td>조회수</td>
						<td>${item.UTP_CNT}</td>
					</tr>
					<tr>
						<td>신고횟수</td>
						<td>${item.UTP_NOTIFY_NUMBER}</td>
					</tr>
					<tr>
						<td>거래상태명</td>
						<td>${item.USED_TRADE_ST_PK}</td>
					</tr>
					<tr>
						<td>지역명</td>
						<td>${item.DISTRICT_PK}</td>
					</tr>
					<tr>
						<td>치수명</td>
						<td>${item.PRDT_SIZE_PK}</td>
					</tr>
					<tr>
						<td>상태등급</td>
						<td>${item.USED_ST_GRADE_PK}</td>
					</tr>
					<tr>
						<td>이메일</td>
						<td>${item.MEM_EMAIL_PK}</td>
					</tr>
				</table>
			</li>
		</c:forEach>
	</ul>
	
	<script src="https://unpkg.com/masonry-layout@4.2.0/dist/masonry.pkgd.min.js"></script>	<!-- Masonry 플러그인 -->
	
	<!-- Masonry 처리 스크립트 -->
	<script type="text/javascript">
		$(function() {
			$('#list_wrap').masonry({
				columnWidth : 10
			});
		});
	</script>
	
	
	<!-- 페이지 번호 출력 -->
	<c:if test="${not empty paginationInfo}">
		<!-- 전자정부프레임웤의 커스텀 태그로써, jsFunction은 페이지 번호 클릭시 호출될 함수를 의미함 -->
		<ui:pagination paginationInfo = "${paginationInfo}" type="text" jsFunction="fn_search"/>
	</c:if>

	<form action="usedStore" method="post" id="pageNoForm">
		<!-- 현재 페이지 번호를 저장하는 히든 태그 -->
		<input type="hidden" id="currentPageNo" name="currentPageNo" value=""/>
	</form>
	
	<!-- 전자정부 페이징 처리 스크립트 -->
	<script type="text/javascript">
		// 페이지 번호 클릭시 현재 페이지 번호를 함께 전송하도록 만든 함수.
		function fn_search(pageNo){
			console.log("pageNo: " + pageNo);
			$('#currentPageNo').attr('value', pageNo);
			$('#pageNoForm').submit();
			// 전송!
		}
	</script>

</body>
</html>