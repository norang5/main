<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<style>

.items{
position:relative;
border: 1px solid gray;
margin:20px;
padding:10px;
display: inline-block;
}

tr, td{
padding: 3px;
}

</style>
</head>
<body>

<div id="postList">
		<c:forEach var="item" items="${Common_NAME_List}" varStatus="status">
			<table class="items" Style="cursor: hand;" onclick="location.href='./nmd'">

				<tr>
					<td><img src="./image/nmd02.jpg" width="300px" height="300px"></td>
				</tr>

				<tr>
					<td>${POST_NAME_List[status.index]}</td>
				</tr>

				<tr>
					<td><h3>${item}</h3></td>
				</tr>

				<tr>
					<td>${PRDT_PRICE}</td>
				</tr>
			</table>
		</c:forEach>
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