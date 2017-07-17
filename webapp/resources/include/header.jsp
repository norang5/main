<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>

<html>
<head>
	<meta charset="utf-8" />
	<title>화면 상단 고정 메뉴 만드는 방법</title>
	
	<style>
		html, body {
			margin: 0px;
			padding: 0px;
			font-size: 12px;
		}
		
		#blog-header-container {
			position: static;
			top: 0px;
			left: 0px;
			right: 0px;
			width: 100%;
			height: 60px;
			background-color: none;
		}
		
		#menu-container {
			position: fixed;
			left: 0px;
			width: 100%;
			height: 60px;
			box-sizing: border-box;
			background-color: #F3F0F0;
		
			/*    -webkit-transition: padding-left 200ms linear;
		            -moz-transition: padding-left 200ms linear;
		            -ms-transition: padding-left 200ms linear;
		            -o-transition: padding-left 200ms linear;
		            transition: padding-left 200ms linear; */
		}
		
		#menu-container.fixed {
			opacity: 0.90;
			background-color: #F3F0F0;
			-webkit-box-shadow: 0 1px 5px 1px rgba(0, 0, 0, 0.2);
			box-shadow: 0 1px 5px 1px rgba(0, 0, 0, 0.2);
		}
		
		#menu-container .menu-item {
			text-decoration: none;
			positon: absolute;
			top: 20px;
		}
		
		#logo {
			padding-top: 7px;
			color: #57484f;
			float: left;
			padding-left: 20px;
			font-size: 2em;
			font-weight: bold;
		}
		
		#login {
			padding-top: 15px;
			color: #57484f;
			float: right;
			padding-right: 50px;
			font-size: 2em;
			font-weight: bold;
		}
		
		/* 
		#menu-container .menu-icon1 {
			display: block !important;
			position: absolute;
			top: -80px;
			text-decoration: none;
			font-size: 2em;
			font-weight: bold;
			color: #57484f;
		}
		
		#menu-container .menu-icon1.on {
			
			position: absolute;
			top: 20px;
			left: 700px;
		}
		
		 */
		#menu-container .menu-icon1 {
			text-decoration: none;
			font-size: 2em;
			font-weight: bold;
			color: #57484f;
			position: absolute;
			top: 20px;
			left: 700px;
		}
		
		#menu-container .menu-icon2 {
			text-decoration: none;
			font-size: 2em;
			font-weight: bold;
			color: #57484f;
			position: absolute;
			top: 20px;
			left: 900px;
		}
		
		#menu-container .menu-icon3 {
			text-decoration: none;
			font-size: 2em;
			font-weight: bold;
			color: #57484f;
			position: absolute;
			top: 20px;
			left: 1100px;
		}
		
		/* #menu-container .menu-icon2 {
			display: block !important;
			position: absolute;
			top: -80px;
			text-decoration: none;
			font-size: 2em;
			font-weight: bold;
			color: #57484f;
		}
		
		#menu-container .menu-icon2.on {
			position: absolute;
			top: 20px;
			left: 900px;
		} */
		
		/* #menu-container .menu-icon3 {
			display: block !important;
			position: absolute;
			top: -80px;
			text-decoration: none;
			font-size: 2em;
			font-weight: bold;
			color: #57484f;
		}
		
		#menu-container .menu-icon3.on {
			position: absolute;
			top: 20px;
			left: 1100px;
		} */
	</style>
</head>
<body>
	<div id="blog-header-container"></div>
	<div id="menu-container">
		<a href="./main" class="menu-item" id="logo">
			<img alt="logo" src="${pageContext.request.contextPath}/image/logo.png" width="50" />
		</a>

		<a href="./info" class="menu-icon1">about</a>
		<a href="./store" class="menu-icon2">shoes</a>
		<a href="./usedStore" class="menu-icon3">used-item</a>
		<a href="" class="menu-item" id="login">Login</a>
	</div>
	
	
	
	
	
	<script defer src="http://ajax.googleapis.com/ajax/libs/jquery/1.7.2/jquery.min.js"></script>
	<script>
		// 현재 스크롤바의 위치를 저장하는 변수 (px)
		var currentScrollTop = 0;
	
		//  window load 후 jQuery 실행
		window.onload = function() {
			// 새로고침 했을 경우를 대비한 메소드 실행
			scrollController();
	
			// 스크롤을 하는 경우에만 실행됨
			$(window).on('scroll', function() {
				scrollController();
			});
		}
	
		// 메인 메뉴의 위치를 제어하는 함수
		function scrollController() {
			currentScrollTop = $(window).scrollTop();
			if (currentScrollTop < 1) {
	
				$('#menu-container').css('top', -(currentScrollTop));
				if ($('#menu-container').hasClass('fixed')) {
					$('#menu-container').removeClass('fixed');
					$('#menu-container').addClass('satic');/* 
					$('#menu-container .menu-icon1').removeClass('on');
					$('#menu-container .menu-icon2').removeClass('on');
					$('#menu-container .menu-icon3').removeClass('on'); */
				}
			} else {
				if (!$('#menu-container').hasClass('fixed')) {
					$('#menu-container').css('top', 0);
					$('#menu-container').addClass('fixed');/* 
					$('#menu-container .menu-icon1').addClass('on');
					$('#menu-container .menu-icon2').addClass('on');
					$('#menu-container .menu-icon3').addClass('on'); */
				}
			}
		}
	</script>
</body>
</html>