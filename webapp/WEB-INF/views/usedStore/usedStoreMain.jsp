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
	<title>중고거래 게시판</title>
	
	<jsp:include page="${ctx}/resources/include/header_bar.jsp" flush="false" />
	<style>
		body{
			background-color: #F2F4F7;
		}
		
		#list_wrap{
			list-style:none;
			margin: 0 auto;
		}
		
		@media(min-width: 600px){
			.post{
				width: 90%;
			}
		}
		
		@media(min-width: 750px){
			.post{
				width: 47%;
			}
		}
		
		@media(min-width: 1000px){
			.post{
				width: 30%;
			}
		}
		
		@media(min-width: 1600px){
			.post{
				width: 23%;
			}
		}
		
		.post{
			float: left;
			background-color: white;
			box-sizing: border-box;
			margin: 3px;
			border-radius: 5px;
			cursor: pointer;
			min-width: 250px;
			border: 1px solid #DEE3EB;
		}
		
		.innerPost{
			padding: 10px;
			width: 100%;
			height: 100%;
			box-sizing: border-box;
		}
		
		.overlay{
			position: absolute;
			width: 100%;
			height: 100%;
			opacity: 0.15;
			background-color: black;
			box-sizing: border-box;
			display: none;
			transition-duration: 0.5s;
			border-radius: 5px;
		}
		
		#paging_bar{
			min-width:20px;
			text-align: center;
			margin: 10px;
		}
		
		#paging_bar_ui{
			font-size: 2em;
		}
	</style>
</head>
<body>

	중고거래페이지
	<br>
	<c:choose>
		<%-- 비로그인 상태라면 로그인 하라고 알림 --%>
		<c:when test="${null eq userEmail}">
			<input	style="
					color: white;
					background-color: skyBlue;
					border: 1px solid black;
				"
				type="button" value="글쓰기"
				onclick="javascript: loginCheck()">
		</c:when>
		<%-- 로그인 상태라면 글쓰기 페이지로 이동--%>
		<c:when test="${!empty userEmail}">
			<input	style="
					color: white;
					background-color: skyBlue;
					border: 1px solid black;
				"
				type="button" value="글쓰기"
				onclick="location.href='used_post_write_ck'">	
		</c:when>
	</c:choose>
		
	<script type="text/javascript">
		function loginCheck(){
				alert('로그인이 필요한 기능입니다.');
		}
	</script>	
		
	<c:choose>
		<c:when test="${null eq usedTradePostTbBeanList.get(0).UTP_SQ_PK}">
			<h2>등록된 게시글이 없습니다</h2>
		</c:when>
		<c:otherwise>
			<section id="list_wrap">
				<c:forEach var="item" items="${usedTradePostTbBeanList}" varStatus="status">
					<article class="post">
						<input type="hidden" class="UTP_SQ_PK" name="UTP_SQ_PK" value="${item.UTP_SQ_PK}">
						<div class="overlay">
							
						</div>
						<div class="innerPost">
							<img src="${mainImgList[status.index]}" width="100%">
							<table style="width: 100%;">
								<tr>
									<td colspan="3"  style="text-align: left;">${item.UTP_TITLE}</td><%-- 상품 대표 이미지 --%>
								</tr>
								<tr>
									<td style="text-align: left;">${item.DISTRICT_PK}</td>		<%-- 지역명 --%>
									<td style="text-align: center;">${item.PRDT_SIZE_PK}mm</td>	<%-- 치수명 --%>
									<td style="text-align: right;">${item.USED_ST_GRADE_PK}</td>	<%-- 상품상태 --%>
								</tr>
							</table>
						</div>
					</article>
				</c:forEach>
			</section>
		</c:otherwise>
	</c:choose>
	
	<script src="./resources/js/imagesloaded.pkgd.min.js"></script>
	<script src="https://unpkg.com/masonry-layout@4.2.0/dist/masonry.pkgd.min.js"></script>	<!-- Masonry 플러그인 -->
	<!-- Masonry 처리 스크립트 -->
	<script type="text/javascript">
		$(function() {
			var $grid = $('#list_wrap').masonry({
				itemSelector: ".post",
				gutter: 10,
				fitWidth: true
			});
			
			// 이렇게 해두면 이미지로딩이 완료된 후에, Masonry를 적용한다.
			$grid.imagesLoaded().progress(function(){
				$grid.masonry('layout');
			});
		});
	</script>
	
	<script type="text/javascript">
		$(function(){
			// 게시글 클릭시 이동
			$('.post').click(function(){
				var UTP_SQ_PK = $(this).find('.UTP_SQ_PK').val();
				console.log("UTP_SQ_PK: " + UTP_SQ_PK);
				$(location).attr('href', 'usedPostDetail?UTP_SQ_PK=' + UTP_SQ_PK);
			});
		});
	
		/* 게시글에 마우스 올릴시 어두워지는 효과 */
		$('.post').mouseover(function(){
			//console.log("마우스 올라감");
			$(this).find('.overlay').css({
				'display':'block'
			});
		});
		
		$('.post').mouseleave(function(){
			//console.log("마우스 나감");
			$(this).find('.overlay').css({
				'display':'none'
			});
		});
	</script>
	
	<!-- 페이지 번호 출력 -->
	<c:if test="${not empty paginationInfo}">
		<!-- 전자정부프레임웤의 커스텀 태그로써, jsFunction은 페이지 번호 클릭시 호출될 함수를 의미함 -->
		<div id="paging_bar">
			<span id="paging_bar_ui">
				<ui:pagination paginationInfo = "${paginationInfo}" type="text" jsFunction="fn_search"/>
			</span>
		</div>
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
			$('#pageNoForm').submit();	// 전송!
		}
	</script>

</body>
</html>