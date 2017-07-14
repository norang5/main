<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<title>Header Bar</title>
	
	<style type="text/css">
		body{
			margin: 0;
		}
		
		/* inner_top_container, menu_panel이 담길 헤더 컨테이너 */
		#header_container{
			display: inline-block;
			min-height: 1px;
			min-width: 300px;
			width: 100%;
		}
		
		/* left_panel, right_panel이 담길 이너 컨테이너 */
		#inner_top_container{
			background-color: white;
			position: absolute;
			min-height: 35px;
			width: 100%;
			border-bottom: 1px solid #C6C6C6;
		}
		
		/* 로고가 담길 공간 */
		#left_panel{
			float: left;
			border: 1px solid black;
			width: 33px;
			height: 33px;
			background-size: contain;
		}
		
		/* 고객센터, 장바구니, 로그인 프로필이 담길 공간 */
		#right_panel{
			border: 1px solid black;
			float: right;
			text-align: right;
			min-width: 200px;
			right: 0px;
			line-height: 34px;
			
		}
		
		/* ul태그로 메뉴바가 위치할 공간 */
		#menu_panel{
			float: right;
			position: relative;
			left: -50%;
			margin: 0;	
			transition-duration: 1s;		
		}
		
		/* 메뉴바에서의 li태그 */
		.menu_btn{
			float: left;
			position: relative;
			left: 50%;
			list-style: none;
			margin: 0 20px;
			font-size: 1.4em;
		}
		
		/* 트랜지션 이벤트. 자바스크립트로 스크롤시 동작하도록 변경할 것. */
		#menu_panel:HOVER{
			margin-top: 40px;
			font-size: 2.5em;
		}
		
		.shopping_basket{
			background-image: url("/shoes_shop/resources/image/shopping_basket.png");
			height: 25px;
			width: 25px;
			background-size: contain;
			display: inline-block;
			vertical-align: middle;
		}
	</style>
</head>
<body>
	<header id="header_container">
		<!-- 내부 컨테이너 -->
		<article id="inner_top_container">
			<!-- 좌측 패널(로고) -->
			<article id="left_panel">
				<div style="">로고</div>
			</article>
			
			<!-- 우측 패널(고객센터/장바구니/프로필 이미지) -->
			<article id="right_panel">
				<a href="#">고객센터</a>
				<a href="#"><span class="shopping_basket"></span>장바구니</a>
				<a href="#">로그인</a>
			</article>
		</article>
		
		<!-- 메뉴 패널 -->
		<ul id="menu_panel">
			<li class="menu_btn">메뉴1</li>
			<li class="menu_btn">메뉴2</li>
			<li class="menu_btn">메뉴3</li>
			<li class="menu_btn">메뉴3</li>
		</ul>
		
	</header>
	
	<section
		style="
			background-color: skyblue;
			width: 100%;
			height: 400px;
			font-size: 2em;
		"
	>
		안녕
	
	</section>
	
	
	<script src = "https://code.jquery.com/jquery-3.2.1.min.js"></script>
	<script type="text/javascript">
		
	</script>
</body>
</html>