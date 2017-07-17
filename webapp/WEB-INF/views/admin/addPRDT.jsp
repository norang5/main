<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<form:form commandName="">
		<table >
			<tr>
				<td>상품카테고리</td>
				<td><form:input path="PRDT_CTG_NM" /></td>
			</tr>
			<tr>
				<td>고유번호</td>
				<td><form:input path="PCI_SQ_PK" /></td>
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
	</form:form>
</body>
</html>