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
	width: 100%
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
}

#button {
	margin-top: 10px;
	float: right;
}
</style>

</head>
<body>

	<table class="review" border="1" cellspacing="0">
		<colgroup>
			<col width="40">
			<col>
			<col width="100">
			<col width="100">
			<col width="60">
			<col width="60">
		</colgroup>
		<thead>
			<tr>
				<th scope="col"></th>
				<th scope="col">한줄 상품평</th>
				<th scope="col">글쓴이</th>
				<th scope="col">날짜</th>
				<th scope="col">사이즈</th>
				<th scope="col">발볼</th>
		</thead>
		<tbody>
			<c:forEach items="${list}" var="list">
				<tr>
					<td class="idx">${list.idx}</td>
					<td class="title">${list.title}</a></td>
					<td class="name">${list.id}</td>
					<td class="date">${list.date}</td>
					<td class="size">${list.size}</td>
					<td class="style">${list.style}</td>
				</tr>
			</c:forEach>
		</tbody>
	</table>

	<div id="new_review"></div>
	<div id="button">

		<button type="button" id="addReview">후기 쓰기</button>
	</div>
	
	<script type="text/javascript">
	$(function() {
		$("#addReview").click(
						function() {
							$("#new_review").empty();

							var strTable = "<table id='new' border = '1' cellspacing='0'>";

							strTable += "<form:form commandName='PRDTCommentBean'>";
							strTable += "<thead>";
							strTable += "<tr>";

							strTable += "<th>" + "한줄 상품평" + "</th>";
							strTable += "<th width='100'>" + "내 사이즈" + "</th>";
							strTable += "<th width='100'>" + "내 발 특징"+ "</th>";

							strTable += "</tr>";
							strTable += "</thead>";
							strTable += "<tr>";

							strTable += "<td>"
									+ "<form:input path='PDCMM_BODY' />"
									+ "</td>";
							strTable += "<td>"
									+ "<form:select path='PDCMM_LOVE' items='${PRDT_SIZE}' />"
									+ "</td>";
							strTable += "<td>"
									+ "<form:select path='PDCMM_IMG_PATH' items='${REVIEW_FOOT}' />"
									+ "</td>";

							strTable += "</tr>";

							strTable += "</table>";
							strTable += "</form:form>";

							$("new_review").append(strTable);

							$("#addReview").first().remove();
							$("<button type='submit' id='reviewDone'>후기 등록</button>").appendTo("#button");
						});
				});
</script>
</body>
</html>