<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<title>title</title>
	
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
	<!-- ckediter -->
	<script src="./resources/ckeditor/ckeditor.js"></script>
	<script>
		// ckeditor setting
		var ckeditor_config = {
			resize_enabled : false, // 에디터 크기를 조절하지 않음
			enterMode : CKEDITOR.ENTER_BR, // 엔터키를 <br> 로 적용함.
			shiftEnterMode : CKEDITOR.ENTER_P, // 쉬프트 +  엔터를 <p> 로 적용함.
			toolbarCanCollapse : true,
			removePlugins : "elementspath", // DOM 출력하지 않음
			filebrowserUploadUrl : 'file_upload', // 파일 업로드를 처리 할 경로 설정.

			// 에디터에 사용할 기능들 정의
			toolbar: [
				[ 'Source', '-', 'NewPage', 'Preview' ],
				[ 'Cut', 'Copy', 'Paste', 'PasteText', '-', 'Undo', 'Redo' ],
				[ 'Bold', 'Italic', 'Underline', 'Strike', 'Subscript', 'Superscript' ],
				[ 'JustifyLeft', 'JustifyCenter', 'JustifyRight', 'JustifyBlock' ],
				'/',
				[ 'Styles', 'Format', 'Font', 'FontSize' ],
				[ 'TextColor', 'BGColor' ],
				[ 'Image', 'Flash', 'Table', 'SpecialChar', 'Link', 'Unlink' ]
			]
		};
		var editor = null;

		jQuery(function() {
			// ckeditor 적용
			editor = CKEDITOR.replace("content", ckeditor_config);
		});

		// 전송을 위한 체크 함수
		function form_save(form) {
			editor.updateElement();
			var is = filter([
				// { target : '#subject' , filter : 'empty' , title : '제목' },
				{
					target : '#content',
					filter : 'empty',
					title : '내용'
				}, {
					target : '#user_name',
					filter : 'number',
					title : '작성자'
				}
			]);

			if (is == true) {
				jQuery.ajax({
					type : 'POST',
					url : './write_ok',
					data : jQuery('#form :input').serialize()
				}).done(function(data) {
					var message = jQuery(data).find("message").text();
					var error = jQuery(data).find("error").text();
					alert(message);
					if (error == 'false')
						location.href = './';
				});
			}
		}

		// 입력 항목의 체크 함수
		function filter(options) {
			var is = true;

			jQuery(options).each(function() {
				var item = this;

				switch (item.filter) {
				case 'empty':
					var val = jQuery(item.target).val();
					if (val == '') {
						alert(item.title + '을(를) 입력하세요.');
						jQuery(item.target).focus();
						is = false;
					}
					break;

				case 'number':
					var val = jQuery(item.target).val();
					var num_regx = /[^0-9]/;
					if (num_regx.test(val)) {
						alert(item.title + '을(를) 숫자만 입력하세요.');
						jQuery(item.target).focus();
						is = false;
					}
					break;
				}
			});
			return is;
		}
	</script>
	
	
	
</body>
</html>