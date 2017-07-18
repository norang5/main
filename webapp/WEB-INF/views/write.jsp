<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>

<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>title</title>

</head>
<body>
	<form id="form" method="post" action="./write_ok">
		<textarea id="content" name="content" rows="10" cols="20">${object.content}</textarea>
		<button id="save" type="button" onclick="form_save('#form');">저장</button>
	</form>
	
	<script src="http://code.jquery.com/jquery-1.11.0.min.js"></script>
	<script src="http://code.jquery.com/jquery-migrate-1.2.1.min.js"></script>
	<script src="./resources/ckeditor/ckeditor.js"></script>
	<script>
		// ckeditor setting
		var ckeditor_config={
			resize_enabled: false,		// 에디터 크기를 조절하지 않음
			enterMode: CKEDITOR.ENTER_BR,	// 엔터키를 <br> 로 적용함.
			shiftEnterMode: CKEDITOR.ENTER_P,// 쉬프트 + 엔터를 <p> 로 적용함.
			toolbarCanCollapse: true,
			removePlugins: "elementspath",	// DOM 출력하지 않음
			filebrowserUploadUrl: '/file_upload',// 파일 업로드를 처리 할 경로 설정.
			
			// 에디터에 사용할 기능들 정의
			toolbar:[[	'Source', '-', 'NewPage', 'Preview' 
				],[	'Cut', 'Copy', 'Paste', 'PasteText', '-', 'Undo', 'Redo'
				],[	'Bold', 'Italic', 'Underline', 'Strike', 'Subscript', 'Superscript'
				],[	'JustifyLeft', 'JustifyCenter', 'JustifyRight', 'JustifyBlock'
				],	'/'
				,[	'Styles', 'Format', 'Font', 'FontSize'
				],[	'TextColor', 'BGColor'
				],[	'Image', 'Flash', 'Table', 'SpecialChar', 'Link', 'Unlink'
				]
			]
		};
		
		var editor = null;
		jQuery(function(){
			// ckeditor 적용
			editor = CKEDITOR.replace("content", ckeditor_config);
		});
		
		// 전송을 위한 체크 함수
		function form_save(form){
			editor.updateElement();
			// form태그로 둘러싼 다음에 ajax내에서 시리얼라이즈 해버리자.
		}
	</script>


</body>
</html>