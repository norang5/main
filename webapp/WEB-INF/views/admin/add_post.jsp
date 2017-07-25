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
		새 포스트 등록 페이지 (관리자)</br> </br>
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
				<td>	<textarea name="PP_BODY" id="PP_BODY" rows="10" cols="30" style="width:650px; height:350px;"></textarea></td>
			</tr>
	
		</table>
		</br>
		</br>
		<div id="button">
			<input type="submit" id="next" value="상품 포스트 등록" />&nbsp;&nbsp;&nbsp;
			<input type="reset" id="reset" value="재입력" />
		</div>
	</form:form>
	
	
	<script src = "https://code.jquery.com/jquery-3.2.1.min.js"></script>
	<!-- ckediter -->
	<script src="./resources/ckeditor/ckeditor.js"></script>
	<script>
		// ckeditor setting
		var ckeditor_config = {
			resize_enabled : true, // 에디터 크기를 조절하지 않음
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
			editor = CKEDITOR.replace("PP_BODY", ckeditor_config);
		});

		// 전송을 위한 체크 함수
		function form_save(form) {
			editor.updateElement();
			var is = filter([
				// { target : '#subject' , filter : 'empty' , title : '제목' },
				{
					target : '#PP_BODY',
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
					data : jQuery('#form').serialize()
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