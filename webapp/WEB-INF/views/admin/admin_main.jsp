
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

.button{

text-decoration: none;
color:black;
font-family: 'Raleway', Arial, sans-serif;
margin:60px;
display:block;
font-size: 40px;

}

</style>
<body>
<a class="button" href="./addProduct">새로운 상품 등록하기</a>
<a class="button" href="./addPost">상품 판매글 등록하기</a>
</body>