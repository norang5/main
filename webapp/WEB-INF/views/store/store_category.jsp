<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<% String category = request.getParameter("category"); 
System.out.println(category);%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<style>

#postList{
margin-top:100px;

}


.items{
position:relative;
border: 1px solid gray;
margin:40px;
padding:10px;
display: inline-block;
cursor: pointer;
}

tr, td{
padding: 3px;
}

#category, h2{

padding:60px;
}

</style>
</head>
<body>

<div id="postList">
<h2 id="category"><%=category%></h2>
<c:choose>
	<c:when test="${null eq postTitleList.get(0).PP_TITLE}">
			<h2>판매중인 상품이 없습니다</h2>
		</c:when>
		
		<c:otherwise>
		<c:forEach var="item" items="${categoryPrdtList}" varStatus="status">
			<table class="items" onclick="location.href='./nmd'">

				<tr>
					<td><img src="./image/nmd02.jpg" width="300px" height="300px"></td>
				</tr>

				<tr>
					<td>${postTitleList.get(status.index).PP_TITLE}</td>
				</tr>

				<tr>
					<td><h3>${item.PCI_PRDT_NAME}</h3></td>
				</tr>

				<tr>
				<td>${priceList.get(status.index)}&nbsp;원부터</td>
				</tr>
			</table>
		</c:forEach>
</c:otherwise>
	</c:choose> 	
</div>
<!-- <script
	src="http://ajax.googleapis.com/ajax/libs/jquery/1.6.4/jquery.min.js"
	type="text/javascript"></script>
<script type="text/javascript">

	$(function() {
	
		var newitem = null;
		var list = new Array(); 
			<c:forEach items="${Common_NAME_List}" var="item">
				list.push("${item}");
			</c:forEach>
		
			$.each(list, function(index, item){
				var output = '';
				
				output += '<h1>'+item+'</h1>';
				output += '</a>';
				
				document.body.innerHTML += output;
			});
			
			
			
	/* for(var i=0; i<5; i++){
		
		newitem = $(".items:last").clone();
		
		newitem.find("td:eq(1)").html('value');
		newitem.find("td:eq(2)").html(list.[1]);
		newitem.find("td:eq(3)").html('${PRDT_PRICE}&nbsp;원');
		$("#postList").append(newitem);
			
		}
		
		$(".items:first").hide(); */
	
	}); 
	
</script> -->
</body>
</html>