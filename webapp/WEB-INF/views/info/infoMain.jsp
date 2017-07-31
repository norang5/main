<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<jsp:include page="../../../resources/include/header_bar.jsp" flush="false"/>
<style>

body {
	margin: 0;
}




.scene {
	height: 100vh;
	background-size: cover;
	overflow: hidden;
	background-attachment: fixed;
}

.scene.one {
	background-image: url(image/adidas.001.png);
}

.scene.two {
	background-image: url(image/adidas.002.png);
}

.scene.three {
	background-image: url(image/adidas.003.png);
}

.scene.four {
	background-image: url(image/adidas.004.png);
}

.scene.five {
	background-image: url(image/adidas.005.png);
}

.scene.six {
	background-image: url(image/adidas.006.png);
}

.scene.seven {
	background-image: url(image/adidas.007.png);
}

.scene.eight {
	background-image: url(image/adidas.008.png);
}
.scene.nine {
	background-image: url(image/adidas.009.png);
}
.scene.ten {
	background-image: url(image/adidas.010.png);
}
.scene.eleven {
	background-image: url(image/adidas.011.png);
}


#bottom{
 font-family: 'Raleway', Arial, sans-serif;
position:fixed;
margin: 0px;
bottom: 3%;
right:2%;
text-align:center;
z-index: 10;
	width: 170px;
	height: 36px;
	border-radius: 18px;
	border: 2px solid gray;
	color: gray;
	font-weight: bold;
	font-size: 1.5em;
	text-align: center;
	text-decoration: none;



}
</style>
</head>
<body>
	<div class="scene one" id="first"></div>
	<div class="scene two"></div>
	<div class="scene three"></div>
	<div class="scene four"></div>
	<div class="scene five"></div>
	<div class="scene six" id="first"></div>
	<div class="scene seven"></div>
	<div class="scene eight"></div>
	<div class="scene nine"></div>
	<div class="scene ten"></div>
	<div class="scene eleven">
	<a href="#first" id="bottom">back to top</a></div>
</body>
</html>