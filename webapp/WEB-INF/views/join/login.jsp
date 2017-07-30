<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>로그인</title>
<style type="text/css">

html, body{
	width: 100%;
	height: 100%;
	padding: 0;
	margin: 0;
}

section {
	text-align: center;
	margin: 0 auto;
	box-sizing: border-box;
	width: 330px;
	height: 240px;
	position: absolute;
	top: 50%;
	left: 50%;
	margin-top: -180px;
	margin-left: -165px;
}

</style>
</head>
<body>
	<section>
		<img src="/shoes_shop/resources/image/loginLogo.jpg"><br>
		<form method="post">
			<input type="text" name="email" style="width: 300px; height: 35px; margin: 2px;"placeholder="email"><br>
			<input type="password" name="password" style="width: 300px; height: 35px; margin: 2px;"placeholder="password"><br>
			<input type="submit" value="LOGIN" 
				style="width: 306px; height: 30px; margin: 1px;; background-color: black; color: white;"><br>
		</form>
		<div id="id_pw_find">
				<a href="/shoes_shop/join"><img src="/shoes_shop/resources/image/join.png"></a>
				<a href="/shoes_shop/id_find"><img src="/shoes_shop/resources/image/id_find.jpg" name="id_find"></a>
				<a href="/shoes_shop/pw_find"><img src="/shoes_shop/resources/image/pw_find.jpg" name="pw_find"></a>
		</div>
	</section>
</body>
</html>