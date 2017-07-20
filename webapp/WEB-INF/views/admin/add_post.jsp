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
	height: 30vh;
	margin: auto;
	text-align: left;
}

#button {
	text-align: center;
}

h2 {
	text-align: center;
}
</style>
</head>
<body>
	<h2>
		새 상품 등록 페이지 (관리자)</br> </br>
		</br>
	</h2>
	<form:form commandName="PRDTPostBean">
		<table>
			
			<tr>
				<td>상품 공통정보 식별번호</td>
				<td><form:input path="PCI_SQ_PK" /></td>
			</tr>
			<tr>
				<td>상품상태명</td>
				<td><form:select path="PRDT_ST_NM_PK" items="${POST_ST}" /></td>
			</tr>
			<tr>
				<td>배송비 정책명</td>
				<td><form:select path="DLVR_CHRG_NM_PK" items="${POST_DLVR}" /></td>
			</tr>
			<tr>
				<td>마일리지 적립 퍼센트</td>
				<td><form:input path="PP_SAVING_MILEAGE_PERCENT" /></td>
			</tr>
			<tr>
				<td>제목</td>
				<td><form:input path="PP_TITLE" /></td>
			</tr>
			<tr>
				<td>본문</td>
				<td><textarea name="PP_BODY"></textarea></td>
			</tr>
	
		</table>
		</br>
		</br>
		<div id="button">
			<input type="submit" id="next" value="상품 포스트 등록" />&nbsp;&nbsp;&nbsp;
			<input type="reset" id="reset" value="재입력" />
		</div>
	</form:form>
</body>
</html>