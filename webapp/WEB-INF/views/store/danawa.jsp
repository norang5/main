<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <% String category = request.getParameter("category"); 
System.out.println("danawa : "+category);%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
		<!-- <iframe sandbox src='http://api.danawa.com/api/main/product/priceList?key=66b06ff4202440875f87555d73fb48ba&mediatype=xml&charset=euckr&prodCode=1005774'> -->
		<iframe sandbox src='http://api.danawa.com/api/search/product/info?key=66b06ff4202440875f87555d73fb48ba&keyword=<%=category%>&mediatype=xml&charset=utf8'>	
		</iframe>
</body>
</html>