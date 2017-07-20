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
		상품 포스트 등록 (관리자)</br> </br>
		</br>
	</h2>
	<form:form commandName="PRDTCommonBean">
		<table>
			<tr>
				<td>상품카테고리</td>
				<td><form:select path="PRDT_CTG_NM" items="${PRDT_CTG}" /></td>
			</tr>
			<tr>
				<td>상품명</td>
				<td><form:input path="PCI_PRDT_NAME" /></td>
			</tr>
			<tr>
				<td>소재</td>
				<td><form:input path="PCI_MATERIAL" /></td>
			</tr>
			<tr>
				<td>수입자</td>
				<td><form:input path="PCI_IMPORTER" /></td>

			</tr>
			<tr>
				<td>제조자</td>
				<td><form:input path="PCI_MANUFACTURER" /></td>
			</tr>
			<tr>
				<td>제조국</td>
				<td><form:input path="PCI_MANUFACT_COUNTRY" /></td>
			</tr>
			<tr>
				<td>품질보증기준</td>
				<td><form:input path="PCI_QUALITY_GUARANTEE" /></td>
			</tr>
			<tr>
				<td>취급시 주의사항</td>
				<td><form:input path="PCI_REQUIRE_ATTENTION" /></td>
			</tr>
			<tr>
				<td>AS 담당자/연락처</td>
				<td><form:input path="PCI_AS_MAN_PHONE" /></td>
			</tr>
		</table>
		</br>
		</br>
		<div id="button">
			<input type="submit" id="next" value="상세상품 등록 페이지로" />&nbsp;&nbsp;&nbsp;
			<input type="reset" id="reset" value="재입력" />
		</div>
	</form:form>
</body>
</html>