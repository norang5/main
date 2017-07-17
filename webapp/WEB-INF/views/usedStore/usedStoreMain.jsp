<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
    String ctx = request.getContextPath();    //콘텍스트명 얻어오기.
%>
<!DOCTYPE html>
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<title>Insert title here</title>
	
	<jsp:include page="${ctx}/resources/include/header_bar.jsp" flush="false"/>
	<style>
		p{
			margin-top: 5px;
			padding: 0px;
			font-size: 2em;
		}
	</style>
	
	<script type="text/javascript" src="./resources/include/smarteditor/js/HuskyEZCreator.js" charset="utf-8"></script>
</head>
<body>
	
	중고거래페이지임<br>
	<textarea name="utp_body" id="utp_body" rows="22" style="width:645px;">우와아아아</textarea>
	<script type="text/javascript">
		var oEditors = [];
		nhn.husky.EZCreator.createInIFrame({
			oAppRef: oEditors,
			elPlaceHolder: "utp_body", //textarea에서 지정한 id와 일치해야 합니다.
			sSkinURI: "./resources/include/smarteditor/SmartEditor2Skin.html",htParams : {
				// 툴바 사용 여부 (true:사용/ false:사용하지 않음)
				bUseToolbar : true,
				// 입력창 크기 조절바 사용 여부 (true:사용/ false:사용하지 않음)
				bUseVerticalResizer : true,
				// 모드 탭(Editor | HTML | TEXT) 사용 여부 (true:사용/ false:사용하지 않음)
				bUseModeChanger : true,
				fOnBeforeUnload : function() {
				}
			},
			fOnAppLoad : function() {
				//기존 저장된 내용의 text 내용을 에디터상에 뿌려주고자 할때 사용
				oEditors.getById["utp_body"].exec("PASTE_HTML",[ "기존 DB에 저장된 내용을 에디터에 적용할 문구" ]);
			},
			fCreator : "createSEditor2"
		});
	</script>
</body>
</html>