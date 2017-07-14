<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>로그인</title>
<style type="text/css">
header {
	width: 1000px;
	text-align: center;
}

section {
	width: 1000px;
	text-align: center;
	margin : 5px;
}

h2 {
	margin: -5px;
}
	
}
</style>
</head>
<body>
	<header> <img src="/shoes_shop/resources/image/loginLogo.jpg">
			 <h2>MEMBER</h2>
			 <img src="/shoes_shop/resources/image/loginLogo2.jpg">
	</header>
	
	<section>
	<form>
		<tr>
			<td><input type="text" style="width: 300px; height: 35px; margin: 2px;"
				placeholder="id"></td>
			<br>
			<td><input type="password" style="width: 300px; height: 35px; margin: 2px;"
				placeholder="password"></td>
			<br>
			<td><input type="submit" value="LOGIN" id="login"
				style="width: 306px; height: 30px; margin: 1px;; background-color: black; color: white;"></td>
			<br>
			<td>
			<input type="button" value="아이디 찾기"></td>
			<td><input type="button" value="비밀번호 찾기"></td>
		</tr>
	</form>
	</section>
</body>
</html>