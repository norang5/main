
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

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

#firstLine {
position: static;
	display:inline;

}

#secondLine {
position: static;
display:inline;

}

.Maps01{
position: static;
width: 440px;
margin:40px 80px ;
padding:0px;
display: inline-block;
border:1px solid gray;
}

.Maps02{
position: static;
width: 440px;
margin:40px 80px ;
display: inline-block;
padding:0px;

border:1px solid gray;
}

iframe{
margin:20px;
margin-top:0px;
}

.location {
	text-decoration: none;
	color: black;
	font-family: 'Raleway', Arial, sans-serif;
	margin: 30px;
}
p{
	text-decoration: none;
	color: black;
	font-family: 'Raleway', Arial, sans-serif;
	margin: 30px;
}

#offline{
text-align: center;
margin:50px;
}
</style>
<body>

<h1 id="offline">오프라인 매장 안내</h1>
<section id="firstLine">
	<div class=Maps01>
		<h3 class="location">명동점</h3>
<p>
서울시 중구 충무로1가 22-5 (02-756-7321)</p>
		<iframe
			src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3162.712138775473!2d126.98253031571359!3d37.56184533215364!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x357ca2f05ec1f021%3A0x38c23f2125ad176c!2z7JWE65SU64uk7IqkIOuqheuPmeygkA!5e0!3m2!1sko!2skr!4v1501236778694"
			width="400" height="500" frameborder="0" style="border: 0"
			allowfullscreen></iframe>
	</div>
	<div class=Maps01>
		<h3 class="location">홍대점</h3>
<p>서울시 마포구 동교동 홍익로6길 27 (02-338-6346)</p>
		<iframe
			src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d25299.136624071834!2d126.94921257885188!3d37.56938422260256!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x357c98c33dc6fa8f%3A0xd203374f3771d25!2z7JWE65SU64uk7IqkIOyYpOumrOyngOuEkOyKpCDtmY3rjIA!5e0!3m2!1sko!2skr!4v1501236813787"
			width="400" height="500" frameborder="0" style="border: 0"
			allowfullscreen></iframe>
	</div>
	<div class=Maps01>
		<h3 class="location">신촌 현대백화지점</h3>

<p>서울시 서대문구 창천동 30-33 (02-3145-1518)</p>

		<iframe
			src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3162.956224536423!2d126.93364631571347!3d37.55609513248288!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x357c9895ae787a0b%3A0xa706531351dc3fe2!2z7JWE65SU64uk7IqkIO2YhOuMgOyLoOy0jOyYpOumrOyngOuEkOyKpA!5e0!3m2!1sko!2skr!4v1501236830371"
			width="400" height="500" frameborder="0" style="border: 0"
			allowfullscreen></iframe>
		
	</div>
	
	</section>
	
	<section id = "secondLine">
	<div class=Maps02>
		<h3 class="location">강남 신세계백화지점</h3>
<p>서울시 서초구 반포동 19-3 (02-3479-1935)</p>
		<iframe
			src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3165.1488110211208!2d127.00194671571238!3d37.50440823544064!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x357ca17bb0ab3c75%3A0xee3ab9988c7c8e2a!2z7JWE65SU64uk7IqkIOqwleuCqOyLoOyEuOqzhA!5e0!3m2!1sko!2skr!4v1501237103990"
			width="400" height="500" frameborder="0" style="border: 0"
			allowfullscreen></iframe>

	</div>

	<div class=Maps02>
		<h3 class="location">압구정점</h3>
<p>서울시 강남구 신사동 662-2 (02-547-0325)</p>
		<iframe
			src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d25309.137692375334!2d127.05532567881677!3d37.53993055322358!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x357ca387b8656917%3A0xfd7751eb160ad955!2sadidas+Originals+Store+Seoul+Apgujeong+2!5e0!3m2!1sko!2skr!4v1501236907291"
			width="400" height="500" frameborder="0" style="border: 0"
			allowfullscreen></iframe>
	</div>

	<div class=Maps02>
		<h3 class="location">영등포 타임스퀘어점</h3>
<p> 서울시 영등포동4가 441-13 (02-2638-2632)</p>
		<iframe
			src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d25309.137692375334!2d127.05532567881677!3d37.53993055322358!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x357c9efb5c308621%3A0x59b787a64743b3f!2z7JWE65SU64uk7IqkIOyYpOumrOyngOuEkO2DgOyehOyKpO2AmOyWtOygkA!5e0!3m2!1sko!2skr!4v1501236930807"
			width="400" height="500" frameborder="0" style="border: 0"
			allowfullscreen></iframe>

	</div>
</section>
</body>