<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>

<style>
table {
	top: 20vh;
	width: 50vw;
	height: 60vh;
	margin: auto;
	text-align: center;
}

button{
float: right;
}

#button {
	text-align: center;
}

h2 {
	text-align: center;
}
</style>
<script
	src="http://ajax.googleapis.com/ajax/libs/jquery/1.6.4/jquery.min.js"
	type="text/javascript"></script>
<script type="text/javascript">


	$(function() {
		//항목추가 버튼 클릭시
		$("#addForm").click(
				function() {
					// item 의 최대번호 구하기
					var lastItemNo = $("#info tr:last").attr("class").replace("item", "");
					var newitem = $("#info tr:eq(1)").clone();
					
					newitem.removeClass();
					newitem.find("td:eq(0)").attr("rowspan", "1");
					newitem.addClass("item" + (parseInt(lastItemNo) + 1));
					newitem.find("input:eq(0)").attr("name","PRDTList["+(parseInt(lastItemNo) + 1)+"].PRDT_COLOR");
					newitem.find("select:eq(0)").attr("name","PRDTList["+(parseInt(lastItemNo) + 1)+"].PRDT_SIZE_PK");
					newitem.find("input:eq(1)").attr("name","PRDTList["+(parseInt(lastItemNo) + 1)+"].PRDT_PRICE");
					newitem.find("input:eq(2)").attr("name","PRDTList["+(parseInt(lastItemNo) + 1)+"].PRDT_AMT");
					$("#info").append(newitem);
						
					/* <input id="PRDTList[0].PRDT_COLOR" name="PRDTList[0].PRDT_COLOR" >
					
					$(".item"+(parseInt(lastItemNo) + 1)+" #input0").attr("path","PRDTList["+(parseInt(lastItemNo) + 1)+"].PRDT_COLOR");
					$(".item"+(parseInt(lastItemNo) + 1)+" #input1").attr("path","PRDTList["+(parseInt(lastItemNo) + 1)+"].PRDT_SIZE_PK");
					$(".item"+(parseInt(lastItemNo) + 1)+" #input2").attr("path","PRDTList["+(parseInt(lastItemNo) + 1)+"].PRDT_PRICE");
					$(".item"+(parseInt(lastItemNo) + 1)+" #input3").attr("path","PRDTList["+(parseInt(lastItemNo) + 1)+"].PRDT_AMT");	
					 */
				});

	});
</script>


</head>
<body>
<h2>
		상세 상품 등록 페이지 (관리자)</br> </br>
	</h2>
	<form:form commandName="PRDTBean">
	
	<table id="info">
			<tr>
				<td></td>
				<td>색상</td>
				<td>치수</td>
				<td>단가</td>
				<td>재고</td>
				<td></td>
			</tr>
			<tr class="item0">
				<td>●</td>
				<td><form:input path="PRDTList[0].PRDT_COLOR"/></td>
				<td><form:select path="PRDTList[0].PRDT_SIZE_PK" items="${PRDT_SIZE}" /></td>
				<td><form:input path="PRDTList[0].PRDT_PRICE"/></td>
				<td><form:input path="PRDTList[0].PRDT_AMT"/></td>
				<td><!-- <input type="file" name="img_path" id="img_path" /> --></td>
			</tr>
			<button type="button" id="addForm">+</button>
		</table> 
		<div id="button">
		<input type="reset"
				id="reset" value="재입력" />
			
			<input type="submit" id="next" value="상세상품등록" /> 
		</div> 
		</form:form>
	
	
</body>
</html>