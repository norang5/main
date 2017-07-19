<%@page import="org.apache.catalina.Context"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
	String ctx = request.getContextPath();
%>
<!DOCTYPE html>
<html>
<head>
	
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<title>중고상품 판매글 작성</title>
	
</head>
<body>
	<jsp:include page="/resources/include/header_bar.jsp" flush="false">
		<jsp:param name="enableSpread" value="false"/>
	</jsp:include>

	<br>
	중고상품 판매글 작성<br>
	<br>
	<form method="post" method="post" enctype="multipart/form-data">
	<!-- 스프링의 form 태그 라이브러리. commandName에 객체의 아이디를 써주면 디스패쳐서블릿에서 해당 아이디의 객체와 결합시켜준다. -->
	<!-- 또한, 자동으로 POST 방식으로 전송하도록 정의되어 있다. get방식으로 보내고 싶으면 method="get"을 써주자. -->

		<table>
			<tr>
				<td>제목</td>
				<td><input name="UTP_TITLE"/></td>
			</tr>
			<tr>
				<td>내용</td>
				<td width="670px">
					<textarea name="UTP_BODY" id="UTP_BODY" rows="10" cols="30" style="width:650px; height:350px;">
					</textarea>
				</td>
			</tr>
			<tr>
				<td>거래지역</td>
				<td>
					<select name="DISTRICT_PK">
						<c:forEach var="item" items="${districtList}">
							<option value="${item.DISTRICT_PK}">${item.DISTRICT_PK}</option>
						</c:forEach>
					</select>
				</td>
			</tr>
			<tr>
				<td>치수명</td>
				<td>
					<select name="PRDT_SIZE_PK">
						<c:forEach var="item" items="${prdtSizeList}">
							<option value="${item.PRDT_SIZE_PK}">${item.PRDT_SIZE_PK}</option>
						</c:forEach>
					</select>
				</td>
			</tr>
			<tr>
				<td>상품상태</td>
				<td>
					<select name="USED_ST_GRADE_PK">
						<c:forEach var="item" items="${usedStList}">
							<option value="${item.USED_ST_GRADE_PK}">${item.USED_ST_GRADE_PK}</option>
						</c:forEach>
					</select>
				</td>
			</tr>
			<tr>
				<td>거래단계</td>
				<td>
					<select name="USED_TRADE_ST_PK">
						<c:forEach var="item" items="${usedTradeStList}">
							<option value="${item.USED_TRADE_ST_PK}">${item.USED_TRADE_ST_PK}</option>
						</c:forEach>
					</select>
				</td>
			</tr>
			<tr>
				<td colspan="2">
					<input type="submit" value="작성완료">
					<input type="submit" value="작성취소">
				</td>
			</tr>
		</table>
	</form>
	
	<script src = "https://code.jquery.com/jquery-3.2.1.min.js"></script>
	<script type="text/javascript" src="./resources/smarteditor/js/HuskyEZCreator.js" charset="utf-8"></script>
	<script type="text/javascript">
		var oEditors = [];
		nhn.husky.EZCreator.createInIFrame({
			oAppRef: oEditors,
			elPlaceHolder: "UTP_BODY", //textarea에서 지정한 id와 일치해야 합니다.
			sSkinURI: "./resources/smarteditor/SmartEditor2Skin.html",
			htParams:{
				// 툴바 사용 여부 (true:사용/ false:사용하지 않음)
				bUseToolbar : true,
				// 입력창 크기 조절바 사용 여부 (true:사용/ false:사용하지 않음)
				bUseVerticalResizer : true,
				// 모드 탭(Editor | HTML | TEXT) 사용 여부 (true:사용/ false:사용하지 않음)
				bUseModeChanger : true,
				fOnBeforeUnload : function(){}
			}, fOnAppLoad: function(){
				//기존 저장된 내용의 text 내용을 에디터상에 뿌려주고자 할때 사용
				oEditors.getById["UTP_BODY"].exec("PASTE_HTML",[ "기존 DB에 저장된 내용을 에디터에 적용할 문구" ]);
			}, fCreator: "createSEditor2"
		});
		
		//저장버튼 클릭시 form 전송
	      $("#save").click(function(){
	          var str = oEditors.getById["UTP_BODY"].exec("UPDATE_CONTENTS_FIELD", []);
	          console.log("출력: " + str);
	          //$("#frm").submit();
	      });
	</script>
	
</body>
</html>