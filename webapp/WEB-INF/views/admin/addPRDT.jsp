<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<script
	src="http://ajax.googleapis.com/ajax/libs/jquery/1.6.4/jquery.min.js"
	type="text/javascript"></script>
<script type="text/javascript">

	/* $(function() {
	 //항목추가 버튼 클릭시
	 $("#addForm").click(
	 function() {
	 // item 의 최대번호 구하기
	 var lastItemNo = $("#info02 tr:last")
	 .attr("class").replace("item", "");
	 var newitem = $("#info02 tr:eq(1)").clone();
	 newitem.removeClass();
	 newitem.find("td:eq(0)").attr("rowspan", "1");
	 newitem.addClass("item"
	 + (parseInt(lastItemNo) + 1));
	 $("#info02").append(newitem);
	 }return false;) */

	/* 				$(document).ready(function(){
						//항목추가 버튼 클릭시
						$("#addForm").click(function() {
							// item 의 최대번호 구하기
							var lastItemNo = $("#info02 tr:last").attr("class").replace("item", "");
							var newitem = $("#info02 tr:eq(1)").clone();
							newitem.removeClass();
							newitem.find("td:eq(0)").attr("rowspan", "1");
							newitem.addClass("item" + (parseInt(lastItemNo) + 1));
							$("#info02").append(newitem);
						});
					});						
	 */
	/* 
	 function check(){
	 var CTG_NM=addPRDT.CTG_NM.value;
	 var prdt_name=addPRDT.prdt_name.value;
	 var material=addPRDT.material.value;
	 var importer=addPRDT.importer.value;	
	 var manufacturer=addPRDT.manufacturer.value;
	 var manufact_country=addPRDT.manufact_country.value;
	 var quality_guarantee=addPRDT.quality_guarante.value;
	 var require_attention=addPRDT.require_attention.value;
	 var as_man_phone=addPRDT.s_man_phone.value;
	
	 var forms = document.getElementById("addPRDT");

	 if (forms.prdt_name.value.length<=1){
	 alert("상품명을 제대로 입력해 주세요.");
	 forms.prdt_name.focus();
	 return false;
	 }
	 if(forms.material.value.length <= 1){
	 alert("소재를 입력하세요.");
	 addPRDT.material.focus();
	 return false;
	 }
	 if(forms.importer.value.length <= 1){
	 alert("수입자를 입력하세요.");
	 addPRDT.MEMBER_PW.focus();
	 return false;
	 } 
	 alert(상품등록이 완료되었습니다.);
	 return true;
	
	 });
	 */
</script>
<style>
table {
	top: 20vh;
	width: 50vw;
	height: 30vh;
	margin: auto;
}

#info01 {
	text-align: left;
}

#info02 {
	text-align: center;
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
		상품 등록 페이지 (관리자)</br> </br>
	</h2>
	<form:form commandName="PRDTCommonBean">
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
		<table id="info02">
			<tr>
				<td></td>
				<td>색상</td>
				<td>치수</td>
				<td>단가</td>
				<td>재고</td>
				<td>이미지</td>
			</tr>
			<tr class="item1">
				<td>●</td>
				<td><input type="text" name="color" id="color" /></td>
				<td><select name="size" id="size">
						<option>225</option>
						<option>230</option>
						<option>235</option>
						<option>240</option>
				</select></td>
				<td><input type="number" name="price" id="price" /></td>
				<td><input type="number" name="amt" id="amt" /></td>
				<td><input type="file" name="img_path" id="img_path" /></td>
			</tr>
		</table> 

 		<div id="button">
			
			<input type="submit" id="next" value="상품등록" /> <input type="reset"
				id="reset" value="재입력" />
		</div> 
		</form:form>
		
		<button id="addForm">항목추가</button>

</body>
</html>