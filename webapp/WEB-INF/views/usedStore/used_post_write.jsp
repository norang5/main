<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>   <!-- 스프링의 폼태그 라이브러리 --> 
<!DOCTYPE html>
<html>
<head>
	
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<title>중고상품 판매글 작성</title>
	
</head>
<body>
	중고상품 판매글 작성 페이지<br>
	<br>
	<form:form commandName="usedTradePostBean">
	<!-- 스프링의 form 태그 라이브러리. commandName에 객체의 아이디를 써주면 디스패쳐서블릿에서 해당 아이디의 객체와 결합시켜준다. -->
	<!-- 또한, 자동으로 POST 방식으로 전송하도록 정의되어 있다. get방식으로 보내고 싶으면 method="get"을 써주자. -->
		<form:hidden path="UTP_REPORTING_DT"/>
		<form:hidden path="UTP_FIN_MODIF_DT"/>
		<form:hidden path="UTP_CNT"/>
		<table>
			<tr>
				<td></td>
				<td></td>
			</tr>
			<tr>
				<td><form:label path="UTP_TITLE">제목</form:label></td>
				<td><form:input path="UTP_TITLE"/></td>
			</tr>
			<tr>
				<td>등록자</td>
				<td><input type="text" disabled="disabled" value="" path="MEM_EMAIL_PK"></td>
			</tr>
			<tr>
				<td><form:label path="UTP_BODY">내용</form:label></td>
				<td><form:textarea id="utp_body" path="UTP_BODY"></form:textarea></td>
			</tr>
			<tr>
				<td></td>
				<td></td>
			</tr>
			<tr>
				<td></td>
				<td></td>
			</tr>
		</table>
		
		
		
	
	</form:form>
	
	<script src = "https://code.jquery.com/jquery-3.2.1.min.js"></script>
	<script type="text/javascript" src="./resources/include/smarteditor/js/HuskyEZCreator.js" charset="utf-8"></script>
	<script type="text/javascript">
		var oEditors = [];
		nhn.husky.EZCreator.createInIFrame({
			oAppRef: oEditors,
			elPlaceHolder: "utp_body", //textarea에서 지정한 id와 일치해야 합니다.
			sSkinURI: "./resources/include/smarteditor/SmartEditor2Skin.html",
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
				oEditors.getById["utp_body"].exec("PASTE_HTML",[ "기존 DB에 저장된 내용을 에디터에 적용할 문구" ]);
			}, fCreator: "createSEditor2"
		});
		
		//저장버튼 클릭시 form 전송
	      $("#save").click(function(){
	          var str = oEditors.getById["utp_body"].exec("UPDATE_CONTENTS_FIELD", []);
	          console.log("출력: " + str);
	          //$("#frm").submit();
	      });
	</script>
	
</body>
</html>