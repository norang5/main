
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
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

a{
text-decoration: none;
color:black;
font-family: 'Raleway', Arial, sans-serif;
}

body {
	font-family: 'Raleway', Arial, sans-serif;
}

#main1{
padding-top:80px;
padding-bottom:80px;
width: 50vw;
margin: auto;
}

#buying_heder {
	height: 40px;
}


#main2{
display: flex;


}
#prdt_image {
	position: static;
	height: 600px;
	flex:1;
}

#buying_info {
	position: static;
	height: 600px;
	flex:1;
}


#buying_info_table{
margin:  0px 50px;
height:80px;

}

tr{
height:80px;
}

#prdt_info {
	border-top: 1px dotted gray;
	
}

#prdt_info_table{
	margin-bottom:40px;
	border : 1px solid gray;
	border-collapse : collapse;
	width: 100%
}


#prdt_info_table tr,
#prdt_info_table td
{
	padding:5px;
	padding-left:15px;
	margin:0px;
 	border : 1px solid gray;
 	border-collapse : collapse;
	height: 20px;
	
}

.table_title{
background-color: #C6C6C6;
width:150px;
}


#prdt_instar {
	position:relative;
	border-top: 1px dotted gray;
	height:600px;
	z-index:-100;
}

#instar_image{
position:relative;
}

#buy_review{
	border-top: 1px dotted gray;
	height: 500px;
}




#buy_footer{
	border-top: 1px dotted gray;
}

</style>
</head>
<body>
<div id='main1'>
	<!-- 구매 페이지 헤더 (카테고리 역추적) -->
	<div id="buying_heder"><a href="./store">Store</a>  >  Category  >  <a href="./nmd">${Common_CATEGORY}</a></div>
	<div id='main2'>
		<!-- 이미지 표시창 (하단에 작은 이미지 클릭시 큰 이미지 변경기능) -->
		<div id="prdt_image"><img src="./image/nmd02.jpg"></div>

		<!-- 상품 구매 정보 표시 -->
		<div id="buying_info">
			<table id="buying_info_table">
				<tr>
					<td  colspan="2"><h1>${Common_NAME}</h1></td>
				</tr>
				
				<tr>
					<td colspan="2"><h2>${PRDT_PRICE}&nbsp;원</h2></td>
				</tr>
				
				<tr>
					<td colspan="2">마일리지 적립&nbsp;&nbsp;&nbsp;${POST_MILE}&nbsp;%</td>
				</tr>
				<tr>
					<td colspan="2">색깔</td>
				</tr>
				
				<tr>
					<td>사이즈</td>
					<td>수량</td>
				</tr>
				
				<tr>
					<td>배송비 </td>
					<td>${POST_DLVR}</td>
				</tr>
				
				<tr>
					<td><a href="./orderdone"><button type=button>구매하기</button></a></td>
					<td><button type=button>장바구니</button></td>
				</tr>
	
			</table></div>
	</div>
	
	<!-- 상품 정보 표시 -->
	<div id="prdt_info">
		<p>${POST_ST}</p>
		<P>${POST_BODY}</P>
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
			<!-- 다나와 가격비교 api -->
		<iframe sandbox src='http://api.danawa.com/api/main/product/priceList?key=66b06ff4202440875f87555d73fb48ba&mediatype=xml&charset=euckr&prodCode=1005774'>
		</iframe>
		
			
		<table id="prdt_info_table">

				
				<tr>
					<td class="table_title" >소재</td>
					<td colspan="3" >${Common_Mat}</td>
				</tr>
				
				<tr>
					<td class="table_title">제조국</td>
					<td colspan="3">${Common_Con}</td>
				</tr>
				
				<tr>
					<td class="table_title">제조자</td>
					<td>${Common_Mau}</td>
					<td class="table_title">수입자</td>
					<td>${Common_Imp}</td>
				</tr>
				
				<tr>
					<td class="table_title">품질보증기준</td>
					<td colspan="3">${Common_Qua}</td>
				</tr>
				
				<tr>
					<td class="table_title">취급시 주의사항</td>
					<td colspan="3">${Common_ATT}</td>
				</tr>
				<tr>
					<td class="table_title">A/S 담당(연락처)</td>
					<td colspan="3">${Common_AS}</td>
				</tr>
		</table>
	</div>

	<!--인스타 리뷰, 추천상품 등 -->
	<div id="prdt_instar">
	<div id="instar_image">
		<jsp:include page="../../../resources/include/instar.jsp" flush="false" />
	</div>	
	</div>
	
	<!-- 상품 구매 후기 -->
	<div id="buy_review">
		<jsp:include page="buy_review.jsp" flush="false" />
	</div>
	
	<!--구매페이지 푸터 (추천상품 등?) -->
	<div id="buy_footer">

	</div>
	
	
	
</div>
</body>
</html>