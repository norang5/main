<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>회원가입</title>

<jsp:include page="../../../resources/include/header_bar.jsp" flush="false">
	<jsp:param name="enableSpread"		value="true"/>
	<jsp:param name="backgroundColor"	value="#212121"/>
	<jsp:param name="borderBottomColor"	value="black"/>
	<jsp:param name="rightMenuColor"	value="white"/>
	<jsp:param name="centerMenuSmallColor"	value="white"/>
	<jsp:param name="centerMenuBigColor"	value="white"/>
</jsp:include>
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/css/main.css">

<style type="text/css">
body{
	background-image: url("/shoes_shop/resources/image/adipattern.jpg"); 
}
form{
}

table{
	border-collapse: collapse;
}
</style>

<script src = "https://code.jquery.com/jquery-3.2.1.min.js"></script>
<script src="http://dmaps.daum.net/map_js_init/postcode.v2.js"></script>
<script>
	//본 예제에서는 도로명 주소 표기 방식에 대한 법령에 따라, 내려오는 데이터를 조합하여 올바른 주소를 구성하는 방법을 설명합니다.
	function sample4_execDaumPostcode() {
		new daum.Postcode(
				{
					oncomplete : function(data) {
						// 팝업에서 검색결과 항목을 클릭했을때 실행할 코드를 작성하는 부분.
						// 도로명 주소의 노출 규칙에 따라 주소를 조합한다.
						// 내려오는 변수가 값이 없는 경우엔 공백('')값을 가지므로, 이를 참고하여 분기 한다.
						var fullRoadAddr = data.roadAddress; // 도로명 주소 변수
						var extraRoadAddr = ''; // 도로명 조합형 주소 변수

						// 법정동명이 있을 경우 추가한다. (법정리는 제외)
						// 법정동의 경우 마지막 문자가 "동/로/가"로 끝난다.
						if (data.bname !== '' && /[동|로|가]$/g.test(data.bname)) {
							extraRoadAddr += data.bname;
						}

						// 건물명이 있고, 공동주택일 경우 추가한다.
						if (data.buildingName !== '' && data.apartment === 'Y') {
							extraRoadAddr += (extraRoadAddr !== '' ? ', '
									+ data.buildingName : data.buildingName);
						}

						// 도로명, 지번 조합형 주소가 있을 경우, 괄호까지 추가한 최종 문자열을 만든다.
						if (extraRoadAddr !== '') {
							extraRoadAddr = ' (' + extraRoadAddr + ')';
						}

						// 도로명, 지번 주소의 유무에 따라 해당 조합형 주소를 추가한다.
						if (fullRoadAddr !== '') {
							fullRoadAddr += extraRoadAddr;
						}

						// 우편번호와 주소 정보를 해당 필드에 넣는다.
						document.getElementById('sample4_postcode').value = data.zonecode; //5자리 새우편번호 사용
						document.getElementById('sample4_roadAddress').value = fullRoadAddr;
						document.getElementById('sample4_jibunAddress').value = data.jibunAddress;

						// 사용자가 '선택 안함'을 클릭한 경우, 예상 주소라는 표시를 해준다.
						if (data.autoRoadAddress) {
							//예상되는 도로명 주소에 조합형 주소를 추가한다.
							var expRoadAddr = data.autoRoadAddress
									+ extraRoadAddr;
							document.getElementById('guide').innerHTML = '(예상 도로명 주소 : '
									+ expRoadAddr + ')';
						} else if (data.autoJibunAddress) {
							var expJibunAddr = data.autoJibunAddress;
							document.getElementById('guide').innerHTML = '(예상 지번 주소 : '
									+ expJibunAddr + ')';
						} else {
							document.getElementById('guide').innerHTML = '';
						}
					}
				}).open();
	}
</script>
</head>
<body>
<div>
	<form id="joinForm" action="welcome" method="post" style="text-align: center; width:610px; height:450px; margin:0 auto; margin-top:150px; background-color: white; border: 3px solid black;">
		<header style="margin: 10px">
			<img src="/shoes_shop/resources/image/memberJoin.jpg">
		</header>
		<table border="1" align="center">
			<tr>
				<td>Email</td>
				<td><input type="text" id="MEM_EMAIL_PK" name="MEM_EMAIL_PK" style="width: 98%;" /></td>
				<td style="text-align: center; color: graytext;">
					
						<a style="color: black; text-decoration: none;" href="#" onclick="javascript: emailDuplicateCheck()">중복 검사</a>
					
				</td>
			</tr>
			<tr>
				<td colspan="3" style="text-align: center; font-weight: bold; color: red;">
					Email이 아이디로 사용됩니다.</td>
			</tr>
			<tr>
				<td>비밀번호</td>
				<td colspan="2"><input type="password" name="MEM_PASSWORD"
					style="width: 99%;" /></td>
			</tr>
			<tr>
				<td>비밀번호 확인</td>
				<td colspan="2"><input type="password" style="width: 99%;" /></td>
			</tr>
			<tr>
				<td>이름</td>
				<td style="width: 390px" colspan="2"><input type="text" name="MEM_NM"
					style="width: 99%;" /></td>
			</tr>
			<tr>
				<td>질문</td>
				<td colspan="3">
					<select name="question" style="width: 100%; height: 25px;">
						<c:forEach var="item" items="${pwfind}">
							<option value="${item.PW_FIND_ASK_PK}">${item.PW_FIND_ASK_PK}</option>
						</c:forEach>
					</select>
				</td>
			</tr>
			<tr>
				<td>답변</td>
				<td colspan="3" style="text-align: center;">
					<input type="text" style="width: 99%">
				</td>
			</tr>
			<tr>
				<td>주소</td>
				<td colspan="2" style="text-align: left;"><input type="text" id="sample4_postcode" name="MEM_ZIPCODE"
					placeholder="우편번호"> <input type="button"
					onclick="sample4_execDaumPostcode()" value="우편번호 찾기"><br>
					<input type="text" id="sample4_roadAddress" name="MEM_ROAD_ADDRESS"
					placeholder="도로명주소"> <input type="text"
					id="sample4_jibunAddress" name="MEM_JIBUN_ADDRESS"
					placeholder="지번주소"> <span id="guide" style="color: #999"></span></td>
			</tr>
			<tr>
				<td>상세주소</td>
				<td style="width: 390px" colspan="2"><input type="text"
					name="MEM_DETAIL_ADDRESS" style="width: 99%;"/></td>
			<tr>
				<td>전화번호</td>
				<td colspan="2"><input type="text" name="MEM_HOME_PHONE"
					style="width: 99%;"/></td>
			</tr>
			<tr>
				<td>휴대폰번호</td>
				<td colspan="2"><input type="text" name="MEM_CELL_PHONE"
					style="width: 99%;"/></td>
			</tr>
		</table>
					
						<a style="color: black; text-decoration: none; margin: 10px;" href="#" onclick="javascript: validateCheck()">확인</a>
					
	</form>
	
	<script>
		// 이메일 유효성 검사 함수와 전역변수
		var emailDuplicate = false;	// false면 중복되는 이메일, true면 사용가능한 이메일
		function emailDuplicateCheck(){
			var MEM_EMAIL_PK = $('#MEM_EMAIL_PK').val();
			
			if(MEM_EMAIL_PK == "" || MEM_EMAIL_PK == null){
				alert("Email을 입력해주세요.");
				return;
			}
			
			var regExp = /^([\w-]+(?:\.[\w-]+)*)@((?:[\w-]+\.)*\w[\w-]{0,66})\.([a-z]{2,6}(?:\.[a-z]{2})?)$/;
			
			if(MEM_EMAIL_PK.match(regExp)){
				// do nothing
			}else{
				alert('이메일 형식이 잘못되었습니다.');
				return;
			};
			
			$.ajax({
				type: "post",
				url: "/shoes_shop/emailDuplicateCheck",
				contentType: "application/x-www-form-urlencoded; charset=utf-8",
				data:{
					'MEM_EMAIL_PK':MEM_EMAIL_PK
				},
				datatype: "text",
				success:function(data){
					if(data == '존재함'){
						alert(MEM_EMAIL_PK + '은(는) 이미 존재하는 계정입니다.');
						emailDuplicate = false;
					}else if(data == '없음'){
						alert(MEM_EMAIL_PK + '은(는) 사용가능합니다.');
						emailDuplicate = true;
					}else{
						alert('알 수 없는 에러');
						emailDuplicate = false;
					}
				},
					error:function(request, status, error){
					console.log(	'에러코드 : ' + request.status + '\n'
							+	'메시지 :' + request.responseText + '\n'
							+	'에러 : ' + error + '\n'
							+	'상태 : ' + status
					);
					return;
				}
			});
		}
		
		// 폼을 전송하기전에 모든 입력이 제대로 되었는지 확인하는 함수. (유효성 검사)
		function validateCheck(){
			if(emailDuplicate == false){
				alert('이메일 중복 검사를 수행하세요');
			}else{
				$('#joinForm').submit();
			}
		}
	</script>
</div>
</body>
</html>
