<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>아이디/비밀번호 찾기</title>
<script type="text/javascript" src="http://code.jquery.com/jquery-3.2.0.min.js" ></script>
<script type="text/javascript">
$(function(){
	  $('.btn_show').click(function(){
	    $('.btn_email').show();
	    $('.btn_mobile').hide();
	  });
	  $('.btn_hide').click(function(){
	    $('.btn_email').hide();
	    $('.btn_mobile').show();
	  });
	});
</script>
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
.btn_mobile{
		display: none;
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
	<hr/>
	<section> 
		<a href="/shoes_shop/id_find"><input type="button" value="아이디 찾기" id="idfindbtn"></a>
		<a href="/shoes_shop/pw_find"><input type="button" value="비밀번호 찾기"></a>
		<br/>
		<hr/>
		<input type="radio" class="btn_show" name="a" checked="checked">show
		<input type="radio" class="btn_hide" name="a" >hide
		<form action="">
			<div class="btn_nm">이름<input type="text"></div>
			<div class="btn_email">이메일<input type="text"></div>
			<div class="btn_mobile">휴대폰</div>
			<div><input type="submit" value="확인"></div>
		</form>
	</section>

</body>
</html>