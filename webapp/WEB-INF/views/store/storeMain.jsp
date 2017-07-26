
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>

<jsp:include page="../../../resources/include/header_bar.jsp"
	flush="false" />
<style>
@import url(https://fonts.googleapis.com/css?family=Raleway:300,700);

@import
	url(https://code.ionicframework.com/ionicons/2.0.1/css/ionicons.min.css)
	;

a {
	text-decoration: none;
	font-family: 'Raleway', Arial, sans-serif;
	font-weight: bold;
	color: black;
}

#background {
	positon: relative;
	z-index: -300;
	margin: 0;
	padding:0;
}

figure {
	left: 220px;
	position: relative;
	z-index: 100;
	font-family: 'Raleway', Arial, sans-serif;
	top: -855px;
	float: left;
	width: 300px;
}

#ultra, #yeezy, #superstar {
	
}

#nmd, #stan, #tubular {
	
}

.pic {
	max-width: 300px;
	position: relative;
	z-index: 100;
	overflow: hidden;
	margin: 100px;
	display: inline-block;
	animation: anima 2s;
	backface-visibility: hidden;
}

.pic-3d {
	/*   perspective: 500; */
	transform-style: preserve-3d
}

.pic-caption {
	z-index: 100;
	cursor: default;
	position: absolute;
	margin: 0;
	width: 300px;
	height: 300px;
	background: none;
	padding-top: 80px;
	text-align: center;
	filter: alpha(opacity = 0);
	opacity: 0;
}

.pic-image {
	position: relative;
	z-index: 100;
	transform: scale(1);
}

.pic:hover .pic-image {
	position: relative;
	z-index: 100;
	transform: scale(0.9);
	opacity: 0.7;
}

.pic-title {
	font-size: 3em;
}

a, a:hover, .pic .pic-image, .pic-caption, .pic:hover .pic-caption, .pic:hover img
	{
	transition: all 0.5s ease;
	cursor: pointer;
}

a, a:hover {
	
}

.pic:hover .open-right {
	filter: alpha(opacity = 100);
	opacity: 1;
	user-select: none;
	touch-callout: none;
	tap-highlight-color: transparent
}

.open-right {
	transform: rotateY(-180deg);
	left: 0;
	top: 0
}

.pic:hover .open-right {
	transform: rotateY(0deg)
}

@media screen and (max-width: 560px) {
	.pic {
		max-width: 400px;
		max-height: 300px;
		display: block;
		animation: none;
		margin: 10px auto
	}
}

#second_page{
position:relative;
margin:0;
padding:0;
}

#back_menu{
position:fixed;
bottom:15px;
}

</style>
</head>
<body>

<div id="store_menu">
	<img id="background" src="./image/store_main.png" width=1900px;
		height=850px;>

	<figure class="pic pic-3d">
		<a href="./ultraboost"><img class="pic-image" id="ultra"
			src="./image/ultra_main.png" width=300px; alt="ultraboost" /> <span
			class="pic-caption open-right">
				<h1 class="pic-title">Ultra Boost</h1></a>
		</span>
	</figure>

	<figure class="pic pic-3d">
		<a href="./superstar"><img class="pic-image" id="superstar"
			src="./image/super_main.png" width=300px; alt="superstar" /> <span
			class="pic-caption open-right">
				<h1 class="pic-title">Super Star</h1></a>
		</span>
	</figure>


	<figure class="pic pic-3d">
		<a href="./yeezyboost"><img class="pic-image" id="yeezy"
			src="./image/yeezy_main.png" width=300px; alt="yeezyboost" /> <span
			class="pic-caption open-right">
				<h1 class="pic-title">Yeezy Boost</h1></a>
		</span>
	</figure>

	<figure class="pic pic-3d">
		<a href="./nmd"><img class="pic-image" id="nmd"
			src="./image/nmd_main.png" width=300px; alt="nmd" /> <span
			class="pic-caption open-right">
				<h1 class="pic-title">NMD</h1></a>
		</span>
	</figure>

	<figure class="pic pic-3d">
		<a href="./stansmith"><img class="pic-image" id="stan"
			src="./image/stan_main.png" width=300px; alt="stansmith" /> <span
			class="pic-caption open-right">
				<h1 class="pic-title">Stan Smith</h1></a>
		</span>
	</figure>

	<figure class="pic pic-3d">
		<a href="./tubular"><img class="pic-image" id="tubular"
			src="./image/superstar.png" width=300px; alt="tubular" /> <span
			class="pic-caption open-right">
				<h1 class="pic-title">Tubular</h1></a>
		</span>
	</figure>
</div>
<div id="second_page">
<jsp:include page="./store_category.jsp" flush="false" />
</div>





<a href="#top" id="back_menu"></br></br></br>신발 카테고리 보기</a>
</div>

</body>
</html>