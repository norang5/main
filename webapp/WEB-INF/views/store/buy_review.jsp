<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>

<style>
.review {
	margin-top: 40px;
	border: 1px solid gray;
	border-collapse: collapse;
	width: 100%
}

.review tr, .review td {
	padding: 5px;
	padding-left: 15px;
	margin: 0px;
	border: 1px solid gray;
	border-collapse: collapse;
	height: 20px;
}

.review thead {
	text-align: center;
}

#new {
	margin-top: 20px;
	border: 1px solid gray;
	border-collapse: collapse;
	width: 100% padding: 5px;
}

#new tr, #new td {
	padding: 5px;
	padding-left: 15px;
	margin: 0px;
	border: 1px solid gray;
	border-collapse: collapse;
	height: 20px;
}

#new thead {
	text-align: center;
	background-color: beige;
}

#reviewDone {
	margin-top: 10px;
	float: right;
}

#MEM_EMAIL_PK, #PP_SQ_PK{
 display:none; 
}


</style>

</head>
<body>
		<form:form commandName='PRDTCommentBean'>

	<table id='new' border='1' cellspacing='0'>


			<thead>
				<tr>

					<th>나의 한줄 상품평 입력</th>
					<th>사이즈</th>
					<th >발볼 특징</th>

				</tr>
			</thead>
			<tr>

				<td><form:input path='PDCMM_BODY' style="width:600px; height:20px;" /></td>
				<td><form:select path='PDCMM_LOVE' style="height:20px;"
						items="${allSizeList}" /></td>
				<td><form:select path='PDCMM_IMG_PATH' style="height:20px;"
						items="${footType}" /></td>
			</tr>
		
		
	</table>
	<input id="MEM_EMAIL_PK" name="MEM_EMAIL_PK" value="${userEmail}" ></input>
	<input id="PP_SQ_PK" name="PP_SQ_PK" value="${PP_SQ_PK}"></input>
	
	
	<button type="submit" id='reviewDone'>후기 등록</button>
	
	</form:form>

</body>
</html>