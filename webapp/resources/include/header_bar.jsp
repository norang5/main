<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
	/*
		이런식으로 사용하세요.
		<jsp:include page="header_bar.jsp">
			<jsp:param name="enableSpread"		value="true"/>
			<jsp:param name="backgroundColor"	value="white"/>
			<jsp:param name="borderBottomColor"	value="#C6C6C6"/>
			<jsp:param name="rightMenuColor"	value="black"/>
			<jsp:param name="centerMenuSmallColor"	value="black"/>
			<jsp:param name="centerMenuBigColor"	value="white"/>
		</jsp:include>
	*/

	request.setCharacterEncoding("utf-8");
	
	// 헤더바의 메뉴 펼치기 기능을 켤 것인지 말 것인지.(기본값: true-펼친다)
	String enableSpreadStr = request.getParameter("enableSpread");
	boolean enableSpread = true;
	if(enableSpreadStr == null || enableSpreadStr == ""){
		enableSpread = true;
	}else{
		// true나 false외의 문자라면 그냥 false로 치환된다.
		enableSpread = Boolean.parseBoolean(enableSpreadStr);
	}
	
	// 헤더바의 배경색(기본색상: 하양)
	String innerTopContainerBackgroundColor = request.getParameter("backgroundColor");
	if(innerTopContainerBackgroundColor == null || innerTopContainerBackgroundColor == ""){
		innerTopContainerBackgroundColor = "white";
	}
	
	// 헤더바의 아래쪽 테두리색(기본색상: 연한 회색)
	String innerTopContainerBorderBottomColor = request.getParameter("borderBottomColor");
	if(innerTopContainerBorderBottomColor == null || innerTopContainerBorderBottomColor == ""){
		innerTopContainerBorderBottomColor = "#C6C6C6";
	}
	
	// 오른쪽 부분(고객센터/장바구니/로그인) 글자색(기본색상: 검정)
	String rightPanelBtnColor = request.getParameter("rightMenuColor");
	if(rightPanelBtnColor == null || rightPanelBtnColor == ""){
		rightPanelBtnColor = "black";
	}
	
	// 스크롤하여 메뉴바가 접혔을때의 글자색(기본색상: 검정)
	String menuBtnSmallColor = request.getParameter("centerMenuSmallColor");
	if(menuBtnSmallColor == null || menuBtnSmallColor == ""){
		menuBtnSmallColor = "black";
	}
	
	// 페이지 최상단에서 메뉴바가 펼쳐졌을때의 글자색(기본색상: 검정)
	String menuBtnBigColor = request.getParameter("centerMenuBigColor");
	if(menuBtnBigColor == null || menuBtnBigColor == ""){
		menuBtnBigColor = "black";	
	}
%>

<!DOCTYPE html>
<html>
<head>
	
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<title>Header Bar</title>
	
	<style type="text/css">
	
		body{
			margin: 0;
		}
		
		#static_header_container{
			height: 20px;
			transition-duration: 0.5s;
			min-width: 800px;
		}
		
		/* inner_top_container, inner_bottom_container가 담길 헤더 컨테이너 */
		#fixed_header_container{
			display: inline-block;
			width: 100%;
			position: fixed;
			top: 0;
			min-width: 800px;
		}
		
		/* left_panel, right_panel이 담길 이너 컨테이너 */
		#inner_top_container{
			display: inline-block;
			width: 100%;
			position: absolute;
			top: 0;
			background-color: <%= innerTopContainerBackgroundColor %>;
			border-bottom: 1px solid <%= innerTopContainerBorderBottomColor %>;
		}
		
		/* 로고가 담길 좌측 패널 */
		#left_panel{
			display: inline-block;
			background-size: contain;
			max-height: 20px;
			margin-left: 10px;
		}
		
		/* 고객센터, 장바구니, 로그인 프로필이 담길 우측 패널 */
		#right_panel{
			display: inline-block;
			position: absolute;
			right: 0;
			margin-right: 10px;
		}
		
		/* 메뉴바가 담길 이너 컨테이너 */
		#inner_bottom_container{
			position: relative;
			width: 100%;
			text-align: center;
			padding: 0;
			margin-top: 0px;
			transition-duration: 0.05s;
		}
		
		#inner_bottom_container ul{
			display: inline-block;
			position: relative;
			left: -100px;
			padding: 0;
			margin: 0;
			transition-duration: 2s;
		}
		
		.menu_btn{
			float: left;
			list-style: none;
			margin: 0 20px;
			font-size: 1em;
			transition-duration: 0.5s;
			color: black;
		}
		
		.menu_btn a{
			text-decoration: none;
			cursor: pointer;
			color: none;
		}
		
		.shopping_basket{
			background-image: url("/shoes_shop/resources/image/shopping_basket.png");
			height: 20px;
			width: 20px;
			background-size: contain;
			display: inline-block;
			vertical-align: middle;
		}
		
		.right_panel_btn_color{
			color: <%= rightPanelBtnColor %>;
		}
		
	</style>
</head>
<body>
	<header id="static_header_container">
	
	</header>
	<header id="fixed_header_container">
		<!-- 내부 컨테이너 -->
		<article id="inner_top_container">
			<!-- 좌측 패널(로고) -->
			<article id="left_panel">
				<a href="./main">
					<div	href="./main"
						style="
							width: 25px;
							height: 25px;
							background-size: contain;
							background-image: url('${pageContext.request.contextPath}/image/logo.png');
						"
					></div>
				</a>
			</article>
			
			<!-- 우측 패널(고객센터/장바구니/프로필 이미지) -->
			<nav id="right_panel">
				<a href="#" class="right_panel_btn_color">고객센터</a>
				<a href="#" class="right_panel_btn_color"><span class="shopping_basket"></span>장바구니</a>
				<a href="#" class="right_panel_btn_color">로그인</a>
			</nav>
		</article>
		
		<!-- 메뉴 패널 -->
		<nav id="inner_bottom_container">
			<ul>
				<!-- 이곳에 메뉴를 등록하세요. -->
				<li class="menu_btn"><a href="./info">about</a></li>
				<li class="menu_btn"><a href="./store">shoes</a></li>
				<li class="menu_btn"><a href="./usedStore">used-item</a></li>
			</ul>
		</nav>
	</header>
	
	<script src = "https://code.jquery.com/jquery-3.2.1.min.js"></script>
	<c:if test="<%=enableSpread%>">
		<script type="text/javascript">
			var disScroll;
			
			var lastScrollTop = 0;
			var menuHiddenPosition = 40; // 스크롤바의 포지션 값이 이 위치 이상일때 메뉴를 접는다.
			
			$(function(){
				didScroll = true;
				
				// 스크롤 이벤트가 발생하면 실행.
				$(window).scroll(function(event){
					didScroll = true;
				});
			});
			
			// 500ms 마다 스크롤 이벤트가 있었는지 확인
			setInterval(function(){
				if(didScroll){
					scrollHandler();
					didScroll = false;
				}
			}, 250);
			
			function scrollHandler(){
				// 현재 스크롤 바의 최상단 위치 저장.
				var st = $(this).scrollTop();
				console.log('currentScrollTop: ' + st);
				
				// 스크롤 바가 페이지 상단에 위치했다면 메뉴를 펼침.
				if (st < menuHiddenPosition){
					(menuHiddenPosition > 30) ? menuHiddenPosition = 1 : menuHiddenPosition = 40;
					$('#static_header_container').css({
						'height':'80px'
					});
					
					$('#inner_bottom_container').css({
						'margin-top':'30px',
					});
					
					$('.menu_btn').css({
						'font-size':'2em',
						'color':'<%= menuBtnBigColor %>',
						'margin':'0 20px'
					});
					
					$('#inner_bottom_container ul').css({
						'left':'0px'
					});
					
					$('.menu_btn a').css({
						'cursor':'pointer'
					});
				}else{
				// 스크롤 바가 페이지 하단에 위치했다면 메뉴를 접음.
					
					$('#inner_bottom_container').css({
						'margin-top':'0px',
					});
				
					$('.menu_btn').css({
						'font-size':'1em',
						'color':'<%= menuBtnSmallColor %>',
						'margin':'0 25px',
					});
				
					$('#static_header_container').css({
						'height':'20px'
					});
				
					$('#inner_bottom_container ul').css({
						'left':'-100px'
					});
				}
				
				// '지난 스크롤 바 위치'에 '현재 스크롤 바 위치'를 저장.
				lastScrollTop = st;
			}
		</script>
	</c:if>
</body>
</html>