<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>아이디/비밀번호 찾기</title>
<style type="text/css">
header {
	text-align: center;
}

section {
	text-align: center;
}
h2{
	margin: 0;
}
</style>

</head>
<body>
	<header>
		<img src="/shoes_shop/resources/image/find.jpg">
		<h2>FIND ID</h2>
		<h3>아이디 찾기</h3>
		<h5>가입하신 방법에 따라 아이디 찾기가 가능합니다.</h5>
	</header>
	<hr />
	<section> <input type="button" value="아이디 찾기" id="idfindbtn"> <input type="button" value="비밀번호 찾기">
		<br>
		<input type="radio" id="email">이메일 <input type="radio"
			id="mobile">휴대폰번호
		<hr>
		<form>
			<tr>
				<td>이름</td>
				<td style="width: "><input type="text" ></td>
				<td>이메일로 찾기</td>
				<td style="width: "><input type="text" ></td>
				<td><input type="submit" value="확인"></td>
			</tr>
		</form>
	</section>

</body>
</html>