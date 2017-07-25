<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<style>

.items{
border: 1px solid gray;
margin:10px;
padding:10px;
}
}

</style>
</head>
<body>
<div id="postList">
<table class="items" Style="cursor:hand;" onclick="location.href='./nmd'">

<tr>
	<td><img src="./image/nmd02.jpg" width="200px" height="200px"></td>
</tr>

<tr>
<td><!-- 포스트 제목 --></td>
</tr>

<tr>
<td><%-- ${Common_NAME} --%></td>
</tr>

<tr>
<td><%-- ${PRDT_PRICE}&nbsp;원 --%></td>

</tr>
</table>
</div>
<script
	src="http://ajax.googleapis.com/ajax/libs/jquery/1.6.4/jquery.min.js"
	type="text/javascript"></script>
<script type="text/javascript">


	$(function() {

					var newitem = $(".items").clone();
			
					
					for(var i=0; i<5/* postList.size() */; i++){
						
					$("newitem td:eq(1)").append($('post'));
					$("newitem td:eq(2)").append($('post'));
					$("newitem td:eq(3)").append($('post'));
					$("#postList").append(newitem);
						
					}
			
	});
</script>
</body>
</html>