<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<jsp:include page="../../../resources/include/header_bar.jsp" flush="false" />
<style>

.order_done_text{
text-decoration: none;
margin:20px;
display:inline-block;
color: black;
}

#order_done{
text-align: center;
}

img{
position:static;
margin:auto;
}
</style>
</head>
<body>
<div id="order_done">
<img src="image/19.jpg"></br>
<h2 class="order_done_text">주문이 완료되었습니다! *^^*</h2>
</br>
<a class="order_done_text" href="./store"><h3>다른상품 구경가기</h3></a>
<a class="order_done_text" href="./nmd"><h3>주문내역보기</h3></a>
</div>
</body>
</html>