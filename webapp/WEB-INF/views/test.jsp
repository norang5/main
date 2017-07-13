<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<title>Insert title here</title>
	
	<script src="//code.jquery.com/jquery-3.2.1.min.js"></script>
</head>
<body>
	<script type="text/javascript">
		function call(){
			console.log("클릭");	
		}
		
		function myFunction(){
			console.log("시작");
			
			$.ajax({
				type: "GET",
				url: "/shoes_shop/testajax",
				contentType: "application/x-www-form-urlencoded; charset=utf-8",
				data:{
					'a':'123',
					'b':'345'
				},
				datatype: "text",
				success:function(data){
					console.log('Ajax로 데이터 받아오기 성공');
					console.log(data);
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
	</script>
	
	안녕하세요.
	<input type="button" value="클릭버튼" onclick="myFunction()">
</body>
</html>