
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<% String prdtName = request.getParameter("name"); 
String category = request.getParameter("category"); 
System.out.println(category +prdtName);%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>

<jsp:include page="../../../resources/include/header_bar.jsp"
	flush="false" />
<style>
@import url(https://fonts.googleapis.com/css?family=Raleway:300,700);

@import
	url(https://code.ionicframework.com/ionicons/2.0.1/css/ionicons.min.css)
	;

a {
	text-decoration: none;
	color: black;
	font-family: 'Raleway', Arial, sans-serif;
}

body {
	font-family: 'Raleway', Arial, sans-serif;
}

#main1 {
	padding-top: 80px;
	padding-bottom: 80px;
	width: 800px;
	margin: auto;
}

#buying_heder {
	height: 40px;
}

#main2 {
	display: flex;
	width: 800px;
}

#prdt_image {
	position: static;
	height: 450px;
	flex: 1;
}

#buying_info {
	position: static;
	height: 450px;
	flex: 1;
}

#buying_info_table {
	margin: 0px 50px;
	height: 50px;
}

tr {
	height: 50px;
}

#prdt_info {
	border-top: 1px dotted gray;
}

#prdt_info_table {
	margin-bottom: 40px;
	border: 1px solid gray;
	border-collapse: collapse;
	width: 100%
}

#prdt_info_table tr, #prdt_info_table td {
	padding: 5px;
	padding-left: 15px;
	margin: 0px;
	border: 1px solid gray;
	border-collapse: collapse;
	height: 20px;
}

.table_title {
	background-color: #C6C6C6;
	width: 150px;
}

#prdt_instar {
	position: relative;
	border-top: 1px dotted gray;
	height: 650px;
	z-index: -100;
}

#instar_image {
	position: relative;
}

#buy_review {
	border-top: 1px dotted gray;
	height: 500px;
}

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

#button {
	margin-top: 10px;
	float: right;
}

#buy_footer {
	border-top: 1px dotted gray;
}



</style>
</head>
<body>
	<div id='main1'>
		<!-- 구매 페이지 헤더 (카테고리 역추적) -->
		<div id="buying_heder">
			<a href="./store">Store</a> > <a href="./store">Category > <a href="./nmd"><%=category%></a>
		</div>
		<div id='main2'>
			<!-- 이미지 표시창 (하단에 작은 이미지 클릭시 큰 이미지 변경기능) -->
			<div id="prdt_image">
				<img src="./image/nmd02.jpg" width="400px">
			</div>

			<!-- 상품 구매 정보 표시 -->
			<div id="buying_info">
				<form:form commandName="PRDTBean">

					<table id="buying_info_table">
						<tr>
							<td colspan="2"><h1><%=prdtName%></h1></td>
						</tr>

						<c:set var="st" value="${postInfo.PRDT_ST_NM_PK}" />		
						<c:choose>
							<c:when test="${st == '판매중'}">

								<tr>
									<td colspan="2"><h2>${prdtInfo.get(0).PRDT_PRICE}&nbsp;원</h2></td>
								</tr>

								<tr>
									<td colspan="2">마일리지
										적립&nbsp;&nbsp;&nbsp;${postInfo.PP_SAVING_MILEAGE_PERCENT}&nbsp;%</td>
								</tr>
								<tr>
									<td>색상</td>
									<td><%-- <form:select path="PRDT_COLOR" items="${prdtInfo.get(0).PRDT_COLOR}" /> --%></td>
								</tr>

								<tr>
									<td>사이즈</td>
									<td><%-- <form:select path="PRDT_SIZE_PK" items="${prdtInfo.get(0).PRDT_SIZE}" /> --%></td>
								</tr>
								<!-- 		<tr>
					<td>수량</td>
					<td></td>
				</tr> -->
								<tr>
									<td>배송비</td>
									<td>${postInfo.DLVR_CHRG_NM_PK}</td>
								</tr>

								<tr>
									<td><button type=submit>구매하기</button></td>
									<td><button type=button>장바구니</button></td>
								</tr>

							</c:when>
							<c:when test="${st == '준비중'}">
								<tr>
									<td colspan="2"><h2>${prdtInfo.get(0).PRDT_PRICE}&nbsp;원</h2></td>
								</tr>
								<tr>
									<td colspan="2"><h4>발매 예정 상품입니다.</h4></td>
								</tr>
							</c:when>
							<c:otherwise>
								<tr>
									<td colspan="2"><h4>
											현재 사이트에서 품절된 상품입니다.<br>아래의 쇼핑몰들을 참조해주세요.
										</h4></td>
								</tr>
								<tr>
									<td colspan="2" id="danawa"></td>
								</tr>

							</c:otherwise>
						</c:choose>

					</table>
				</form:form>



			</div>
		</div>
		<!-- 상품 정보 표시 -->
		<div id="prdt_info">
			<p>${postInfo.PRDT_ST_NM_PK}</p>
			<P>${postInfo.PP_BODY}</P>
			<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit.
				Quisquam temporibus repellat voluptatem sit nulla commodi, maxime
				optio aperiam! Consequuntur necessitatibus iste amet id, nihil
				laboriosam voluptatem cum laudantium ab repudiandae. Lorem ipsum
				dolor sit amet, consectetur adipisicing elit. Maxime ipsum
				blanditiis, enim beatae, ipsam tempore, ullam voluptas consequuntur
				laborum, dolor nobis nam velit iure. Autem veniam atque quo, sunt
				veritatis! Lorem ipsum dolor sit amet, consectetur adipisicing elit.
				Maxime ipsum blanditiis, enim beatae, ipsam tempore, ullam voluptas
				consequuntur laborum, dolor nobis nam velit iure. Autem veniam atque
				quo, sunt veritatis! Lorem ipsum dolor sit amet, consectetur
				adipisicing elit. Maxime ipsum blanditiis, enim beatae, ipsam
				tempore, ullam voluptas consequuntur laborum, dolor nobis nam velit
				iure. Autem veniam atque quo, sunt veritatis! Lorem ipsum dolor sit
				amet, consectetur adipisicing elit. Maxime ipsum blanditiis, enim
				beatae, ipsam tempore, ullam voluptas consequuntur laborum, dolor
				nobis nam velit iure. Autem veniam atque quo, sunt veritatis! Lorem
				ipsum dolor sit amet, consectetur adipisicing elit. Maxime ipsum
				blanditiis, enim beatae, ipsam tempore, ullam voluptas consequuntur
				laborum, dolor nobis nam velit iure. Autem veniam atque quo, sunt
				veritatis!</p>



			<table id="prdt_info_table">

				<tr>
					<td class="table_title">소재</td>
					<td colspan="3">${commonInfo.PCI_MATERIAL}</td>
				</tr>

				<tr>
					<td class="table_title">제조국</td>
					<td colspan="3">${commonInfo.PCI_MANUFACT_COUNTRY}</td>
				</tr>

				<tr>
					<td class="table_title">제조자</td>
					<td>${commonInfo.PCI_MANUFACTURER}</td>
					<td class="table_title">수입자</td>
					<td>${commonInfo.PCI_IMPORTER}</td>
				</tr>

				<tr>
					<td class="table_title">품질보증기준</td>
					<td colspan="3">${commonInfo.PCI_QUALITY_GUARANTEE}</td>
				</tr>

				<tr>
					<td class="table_title">취급시 주의사항</td>
					<td colspan="3">${commonInfo.PCI_REQUIRE_ATTENTION}</td>
				</tr>
				<tr>
					<td class="table_title">A/S 담당(연락처)</td>
					<td colspan="3">${commonInfo.PCI_AS_MAN_PHONE}</td>
				</tr>
			</table>
		</div>

		<!--인스타 리뷰, 추천상품 등 -->
		<div id="prdt_instar">
			<div id="instar_image">
				<jsp:include page="../../../resources/include/instar.jsp"
					flush="false" />
			</div>
		</div>

		<!-- 상품 구매 후기 -->
		<div id="buy_review">
		<table class="review" border="1" cellspacing="0">
		<colgroup>
			<col>
			<col width="100">
			<col width="100">
			<col width="60">
			<col width="60">
		</colgroup>
		<thead>
			<tr>

				<th scope="col">한줄 상품평</th>
				<th scope="col">글쓴이</th>
				<th scope="col">등록일</th>
				<th scope="col">사이즈</th>
				<th scope="col">발볼</th>
				</tr>
		</thead>
		<tbody>
	<c:choose>
	<c:when test="${empty Commet_List}">
			<tr>
					<td colspan=5 style="text-align: center">등록된 후기가 없습니다. 첫 후기를 남겨주세요!</td>
					</tr>
		</c:when>
		
		<c:otherwise>

			<c:forEach items="${Commet_List}" var="list">
				<tr>
					
					<td class="title">${list.PDCMM_BODY}</td>
					<td class="name">${list.MEM_EMAIL_PK}</td>
					<td class="date">${list.PDCMM_FIN_MODIF_DT}</td>
					<td class="size">${list.PDCMM_LOVE}</td>
					<td class="style">${list.PDCMM_IMG_PATH}</td>
				</tr>
			</c:forEach>
			
			</c:otherwise>
		
			</c:choose>
			
		</tbody>
	</table>

	<div id="new_review"></div>
	<div id="button">

		<button type="button" id="addReview">후기 쓰기</button>
	</div>
	
		
		</div>

		<!--구매페이지 푸터 (추천상품 등?) -->
		<div id="buy_footer"></div>



	</div>


	<script src="https://code.jquery.com/jquery-3.2.1.min.js"></script>
	<script
		src="http://ajax.googleapis.com/ajax/libs/jquery/1.6.4/jquery.min.js"
		type="text/javascript"></script>

	<script type="text/javascript">
        $(function() {
        	$(window).load(
    			function() {	
    				$("#danawa").load("danawa")
    		});
        	
        	
        	$("#addReview").click(
        		function() {	
        			$("#new_review").load("buy_review", function(){$("#button").css({"display":"none"});})
        	});
            	
       });
        
        
    </script>
</body>
</html>