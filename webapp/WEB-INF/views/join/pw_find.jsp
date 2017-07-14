<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
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
	<script src="//code.jquery.com/jquery-3.2.1.min.js"></script>
	<script type="text/javascript">
		function findId(){
			<%-- Ajax로 ~~데이터를 받아오는 함수 --%>
			console.log("Ajax 시작");
			
			var userId = $('#userId').val();
			var userPw = $('#userPw').val();
			
			$.ajax({
				type: "GET",
				url: "/shoes_shop/id_find",
				contentType: "application/x-www-form-urlencoded; charset=utf-8",
				data:{
					'userId':userId,
					'userPw':userPw
				},
				datatype: "text",
				success:function(data){
					console.log('Ajax로 데이터 받아오기 성공');
					console.log(data)
				},
				error:function(request, status, error){
					console.log(	'에러코드 : ' + request.status + '\n'
							+	'메시지 :' + request.responseText + '\n'
							+	'에러 : ' + error + '\n'
							+	'상태 : ' + status
					);
					return;
				},
				beforeSend: function(){
					// Ajax요청하기 전에 수행할 코드.
					// 주로 로딩이미지를 띄워줌
				},
				complete: function(){
					// Ajax 응답까지 받았을때 수행할 코드.
					// 위에서 띄운 로딩이미지를 없엘때 사용.
				}
			});
		}
		
		$(document).on('click', '#idfindbtn', function(){
 			$('#idfindview').append(
						'<table>'
					+		'<tr>'
					+			'<td>아이디</td><td><input type="text" id="userId"></td>'
					+		'</tr>'
					+		'<tr>'
					+			'<td>이메일로 찾기</td><td><input type="text" id="userPw"></td>'
					+		'</tr>'
					+		'<tr>'
					+			'<td><input type="button" value="확인" id="findId"></td><td><input type="button" value="비밀번호 찾기"></td>'
					+		'</tr>'
					+	'</table>'
			);

			return false;
		});
		
		$(document).on('click', '#findId', function(){
			findId();
			return false;
		});
		
	</script>
	<header>
		<img src="/shoes_shop/resources/image/find.jpg">
		<h2>FIND PASSWORD</h2>
		<h3>비밀번호 찾기</h3>
		<h5>가입하신 방법에 따라 비밀번호 찾기가 가능합니다.</h5>
	</header>
	<hr />
	<section> <input type="button" value="아이디 찾기" id="idfindbtn"> <input type="button" value="비밀번호 찾기">
		<br>
		<input type="radio" id="email">이메일 <input type="radio"
			id="mobile">휴대폰번호
		<hr>
		<div id="idfindview"></div>
	</section>

</body>
</html>