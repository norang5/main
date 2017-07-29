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
	
		/* 좌측 메뉴바 */
		#mainNav{
			border: 3px solid red;
			width: 220px;
			min-width: 150px;
			
			height: 100%;
			display: flex;
			flex-direction: column;
		}
		
		/* 메뉴바내의 각 버튼들 */
		.navMenu{
			border: 3px solid green;
			height: 50px;
			
			-webkit-flex: 1;
			flex: 1;
			text-align: center;
			
			display: -webkit-flex;
			display: flex;
			-webkit-align-items: center;
			align-items: center;
			-webkit-justify-content: center;
			justify-content: center;
			
			cursor: pointer;
		}
		
		.navMenu:HOVER{
			opacity: 0.2;
		}
		
		/* 메뉴바내의 각 버튼들 속에 있는 텍스트들 */
		.menuText{
			border: 1px solid black;
		}
		
		/* 우측 내용 출력박스 */
		#mainSection{
			border: 3px solid orange;
			min-width: 400px;
			
			height: 100%;
		}
		
		/* 나머지 너비의 1/n을 채워요. */
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
			<div class="navMenu"><div class="menuText">결제 내역</div></div>
			<div class="navMenu"><div class="menuText">장바구니</div></div>
			<div class="navMenu"><div class="menuText">관심상품</div></div>
			<div class="navMenu"><div class="menuText">마일리지 사용내역</div></div>
			<div class="navMenu"><div class="menuText">내 정보관리</div></div>
			<div class="navMenu"><div class="menuText">통계</div></div>
			<div class="navMenu"><div class="menuText">재고관리</div></div>
		</nav>
		
		<script type="text/javascript">
			$(function(){
				$('#mainNav .navMenu:nth-child(1)').click({url:'<%=ctx%>/'}, loadPage);
				$('#mainNav .navMenu:nth-child(2)').click({url:'<%=ctx%>/mypage/basket'}, loadPage);
				$('#mainNav .navMenu:nth-child(3)').click({url:'<%=ctx%>/'}, loadPage);
				$('#mainNav .navMenu:nth-child(4)').click({url:'<%=ctx%>/'}, loadPage);
				$('#mainNav .navMenu:nth-child(5)').click({url:'<%=ctx%>/'}, loadPage);
				$('#mainNav .navMenu:nth-child(6)').click({url:'<%=ctx%>/'}, loadPage);
				$('#mainNav .navMenu:nth-child(7)').click({url:'<%=ctx%>/mypage/product'}, loadPage);
			});
			
			function loadPage(event){
				console.log('호출됨');
				$.ajax({
					url:event.data.url,
					contentType: "application/x-www-form-urlencoded; charset=utf-8",
					dataType:'html',
					success:function(data){
						$('#mainSection').html(data);
					}
				});
			}
		</script>
		
		<section id="mainSection" class="flex-column">
				
		
		</section>
	</div>
	
	<script>
		
	</script>
</body>
</html>