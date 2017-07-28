<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<!-- <script defer
	src="http://ajax.googleapis.com/ajax/libs/jquery/1.7.2/jquery.min.js"></script> -->

<jsp:include page="../../resources/include/header_bar.jsp" flush="false">
	<jsp:param name="enableSpread"		value="true"/>
	<jsp:param name="backgroundColor"	value="#212121"/>
	<jsp:param name="borderBottomColor"	value="black"/>
	<jsp:param name="rightMenuColor"	value="white"/>
	<jsp:param name="centerMenuSmallColor"	value="white"/>
	<jsp:param name="centerMenuBigColor"	value="white"/>
</jsp:include>


<style>
@import url(https://fonts.googleapis.com/css?family=Raleway:300,700);
@import url(https://code.ionicframework.com/ionicons/2.0.1/css/ionicons.min.css);
a{
text-decoration: none;
color:white;}

#video {	
	position: static;
	min-width: 100vn;
	width: 100%;
	z-index: -100;
	overflow: hidden;
}
 
 
.page.first {
	text-decoration: none;
	position: absolute;
	min-width: 100%;
	min-height: 100%;
	background-color: none;
	text-align: center;
	display: table-cell;
	z-index: -50;
	
}

#slogan {

	positoin: absolute;
	width: 50%;
	margin: auto;
	top: -1300px; left : 0; bottom : 0; right : 0;
	font-size: 5em;
	color: white;
	background-color: none;
	left: 0;
	bottom: 0;
	right: 0;
}

#down{
font-size: 5em;
color: white;
}

.page.second {
	text-decoration: none;
	position: static;
	min-width: 100%;
	min-height: 68vh;
	background-color: balck;
	z-index: -30;
	font-size: 2em;
	margin:0;
	padding:25px;
	text-align:center;
	background-size: cover;
}


/* 피겨 이용 */

figure.snip1384 {
  font-family: 'Raleway', Arial, sans-serif;
  position: relative;
  float: left;
  overflow: hidden;
  margin: 8px 8px;
  min-width: 445px;
  max-width: 445px;
  height: 70vh;
  color: #ffffff;
  text-align: left;
  font-size: 16px;
  padding:0px;
  background-color: #000000;
}

figure.snip1384 * {
  -webkit-box-sizing: border-box;
  box-sizing: border-box;
  -webkit-transition: all 0.35s ease;
  transition: all 0.35s ease;
}

figure.snip1384 img {
/*   max-height: 900px; */
  backface-visibility: hidden;
  vertical-align: top;
  margin:0px;
  padding:0px;
}

figure.snip1384:after,
figure.snip1384 figcaption {
  position: absolute;
  top: 0;
  bottom: 0;
  left: 0;
  right: 0;
}

figure.snip1384:after {
  content: '';
  background-color: rgba(0, 0, 0, 0.65);
  -webkit-transition: all 0.35s ease;
  transition: all 0.35s ease;
  opacity: 0;
}

figure.snip1384 figcaption {
  z-index: 1;
  padding: 40px;
}

figure.snip1384 h3,
figure.snip1384 .links {
  width: 100%;
  margin: 5px 0;
  padding: 0;
}

figure.snip1384 h3 {
  line-height: 1.1em;
  font-weight: 700;
  font-size: 1.4em;
  text-transform: uppercase;
  opacity: 0;
}

figure.snip1384 p {
  font-size: 0.8em;
  font-weight: 300;
  letter-spacing: 1px;
  opacity: 0;
  top: 50%;
  -webkit-transform: translateY(40px);
  transform: translateY(40px);
}

figure.snip1384 i {
  position: absolute;
  bottom: 10px;
  right: 10px;
  padding: 20px 25px;
  font-size: 34px;
  opacity: 0;
  -webkit-transform: translateX(-10px);
  transform: translateX(-10px);
}

figure.snip1384 a {
  position: absolute;
  top: 0;
  bottom: 0;
  left: 0;
  right: 0;
  z-index: 1;
}

figure.snip1384:hover img,
figure.snip1384.hover img {
  zoom: 1;
  filter: alpha(opacity=50);
  -webkit-opacity: 0.5;
  opacity: 0.5;
}

figure.snip1384:hover:after,
figure.snip1384.hover:after {
  opacity: 1;
  position: absolute;
  top: 10px;
  bottom: 10px;
  left: 10px;
  right: 10px;
}

figure.snip1384:hover h3,
figure.snip1384.hover h3,
figure.snip1384:hover p,
figure.snip1384.hover p,
figure.snip1384:hover i,
figure.snip1384.hover i {
  -webkit-transform: translate(0px, 0px);
  transform: translate(0px, 0px);
  opacity: 1;
}

/* Demo purposes only */
body {
  background-color: #212121;
}



figure {
	width: 100%;
    text-align: center;
    height: 90vh;
    padding: 10px;
    border-spacing: 10px;
}



/* table {
    width: 100%;
    text-align: center;
    height: 90vh;
    padding: 10px;
    border-spacing: 10px;
  }

td{
	font-size:5em;
	color: white;
	 border: 3px solid white;
	 margin : 0px 0px 0px 5px;
} */



.page.third {
	text-decoration: none;
	position: static;

	min-width: 100%;
	min-height: 100vh;
	background-color: gray;
	z-index: -30;
	font-size: 2em;
	margin:0;
	
}

/* #about{
background-image: url(./image/about_back03.jpg);
background-size: cover;

}

#store{
background-image: url(./image/store_back02.jpg);
background-size: cover;

}

#used{
background-image: url(./image/used_back.jpg);
background-size: cover;

}
 */
</style>
<!-- <script>

	var currentScrollTop2 = 0;

	
	window.onload = function() {

		scrollController2();


		$(window).on('scroll', function() {
			scrollController2();
		});
	}


	function scrollController2() {
		currentScrollTop2 = $(window).scrollTop();
		if (currentScrollTop2 < 300) {

			
			if (!$('#slogan').hasClass('fixed')) {
				$('#slogan').css('top', 0);
				$('#slogan').addClass('fixed');
			}
		} else {
			
			$('#slogan').css('top', -(currentScrollTop2));
			if ($('#slogan').hasClass('fixed')) {
				$('#slogan').removeClass('fixed');
				$('#slogan').addClass('satic');
			}
		}
	}
</script> -->

<script>
$(".hover").mouseleave(
		  function () {
		    $(this).removeClass("hover");
		  }
		);
</script>

</head>

<body>
	<!-- <p  id=video align="middle"><iframe width="854" height="480" src="https://www.youtube.com/embed/R95Ucc-FUOs?rel=0&amp;controls=0&amp;showinfo=0&autoplay=1&loop=1&playlist=R95Ucc-FUOs" frameborder="0" allowfullscreen></iframe>
</p> -->

<video id="video" preload="auto" autoplay="true" loop="loop"
		muted="muted" volume="0"> <source src="./file/background.webm"></video>

	
	<section class="page first">

		<!-- <div id="slogan">
		</br></br></br></br></br>
			adidas original</br> 2017 F/W
			</br></br></br>
		</div>
		<div id="down"><a href="#menu">VVV</div>
		 -->
	</section>
	
	<section class="page second" id="menu">
	
	
<!-- 피겨방식 시도  -->
	<figure class="snip1384"><img src="./image/about_back03.jpg" alt="about" />
  <figcaption>
    <h3>About us</h3>
    <p>나이키 오리지널스 슈즈 샵을 소개합니다</p><i class="ion-ios-arrow-right"></i>
  </figcaption>
  <a href="./info"></a>
</figure>

<figure class="snip1384"><img src="./image/store_back02.jpg" alt="store" />
  <figcaption>
    <h3>Store</h3>
    <p>방금 출시된 새로운 상품들을 지금 바로 만나보세요</p><i class="ion-ios-arrow-right"></i>
  </figcaption>
  <a href="./store"></a>
</figure>

<figure class="snip1384"><img src="./image/used_back.jpg" alt="usedStore" />
  <figcaption>
    <h3>Used-Market</h3>
    <p>아쉽게 놓쳤던 상품을 여기서 찾아보세요</p><i class="ion-ios-arrow-right"></i>
  </figcaption>
  <a href="./usedStore"></a>
</figure>

<figure class="snip1384"><img src="./image/location_back.jpg" alt="location" />
  <figcaption>
    <h3>Location</h3>
    <p>가까운 오프라인 매장을 찾아보세요</p><i class="ion-ios-arrow-right"></i>
  </figcaption>
  <a href="./location"></a>
</figure>

<!-- 	<table>
	<tr>
	<td id="about" onclick="location.href='./info'" style="cursor:pointer;">about</a></td>	
	<td id="store" onclick="location.href='./store'" style="cursor:pointer;">store</a></td>
	<td id="used" onclick="location.href='./usedStore'" style="cursor:pointer;">used</a></td>
	</tr>

	</table>
	 -->
	 
	 
	</section>
	<section class="page third">
	<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit.
		Quisquam temporibus repellat voluptatem sit nulla commodi, maxime
		optio aperiam! Consequuntur necessitatibus iste amet id, nihil
		laboriosam voluptatem cum laudantium ab repudiandae. Lorem ipsum dolor
		sit amet, consectetur adipisicing elit. Maxime ipsum blanditiis, enim
		beatae, ipsam tempore, ullam voluptas consequuntur laborum, dolor
		nobis nam velit iure. Autem veniam atque quo, sunt veritatis! Lorem
		ipsum dolor sit amet, consectetur adipisicing elit. Maxime ipsum
		blanditiis, enim beatae, ipsam tempore, ullam voluptas consequuntur
		laborum, dolor nobis nam velit iure. Autem veniam atque quo, sunt
		veritatis! Lorem ipsum dolor sit amet, consectetur adipisicing elit.
		Maxime ipsum blanditiis, enim beatae, ipsam tempore, ullam voluptas
		consequuntur laborum, dolor nobis nam velit iure. Autem veniam atque
		quo, sunt veritatis! Lorem ipsum dolor sit amet, consectetur
		adipisicing elit. Maxime ipsum blanditiis, enim beatae, ipsam tempore,
		ullam voluptas consequuntur laborum, dolor nobis nam velit iure. Autem
		veniam atque quo, sunt veritatis! Lorem ipsum dolor sit amet,
		consectetur adipisicing elit. Maxime ipsum blanditiis, enim beatae,
		ipsam tempore, ullam voluptas consequuntur laborum, dolor nobis nam
		velit iure. Autem veniam atque quo, sunt veritatis!</p>
	<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit.
		Quisquam temporibus repellat voluptatem sit nulla commodi, maxime
		optio aperiam! Consequuntur necessitatibus iste amet id, nihil
		laboriosam voluptatem cum laudantium ab repudiandae. Lorem ipsum dolor
		sit amet, consectetur adipisicing elit. Maxime ipsum blanditiis, enim
		beatae, ipsam tempore, ullam voluptas consequuntur laborum, dolor
		nobis nam velit iure. Autem veniam atque quo, sunt veritatis! Lorem
		ipsum dolor sit amet, consectetur adipisicing elit. Maxime ipsum
		blanditiis, enim beatae, ipsam tempore, ullam voluptas consequuntur
		laborum, dolor nobis nam velit iure. Autem veniam atque quo, sunt
		veritatis! Lorem ipsum dolor sit amet, consectetur adipisicing elit.
		Maxime ipsum blanditiis, enim beatae, ipsam tempore, ullam voluptas
		consequuntur laborum, dolor nobis nam velit iure. Autem veniam atque
		quo, sunt veritatis! Lorem ipsum dolor sit amet, consectetur
		adipisicing elit. Maxime ipsum blanditiis, enim beatae, ipsam tempore,
		ullam voluptas consequuntur laborum, dolor nobis nam velit iure. Autem
		veniam atque quo, sunt veritatis! Lorem ipsum dolor sit amet,
		consectetur adipisicing elit. Maxime ipsum blanditiis, enim beatae,
		ipsam tempore, ullam voluptas consequuntur laborum, dolor nobis nam
		velit iure. Autem veniam atque quo, sunt veritatis!</p>
	<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit.
		Quisquam temporibus repellat voluptatem sit nulla commodi, maxime
		optio aperiam! Consequuntur necessitatibus iste amet id, nihil
		laboriosam voluptatem cum laudantium ab repudiandae. Lorem ipsum dolor
		sit amet, consectetur adipisicing elit. Maxime ipsum blanditiis, enim
		beatae, ipsam tempore, ullam voluptas consequuntur laborum, dolor
		nobis nam velit iure. Autem veniam atque quo, sunt veritatis! Lorem
		ipsum dolor sit amet, consectetur adipisicing elit. Maxime ipsum
		blanditiis, enim beatae, ipsam tempore, ullam voluptas consequuntur
		laborum, dolor nobis nam velit iure. Autem veniam atque quo, sunt
		veritatis! Lorem ipsum dolor sit amet, consectetur adipisicing elit.
		Maxime ipsum blanditiis, enim beatae, ipsam tempore, ullam voluptas
		consequuntur laborum, dolor nobis nam velit iure. Autem veniam atque
		quo, sunt veritatis! Lorem ipsum dolor sit amet, consectetur
		adipisicing elit. Maxime ipsum blanditiis, enim beatae, ipsam tempore,
		ullam voluptas consequuntur laborum, dolor nobis nam velit iure. Autem
		veniam atque quo, sunt veritatis! Lorem ipsum dolor sit amet,
		consectetur adipisicing elit. Maxime ipsum blanditiis, enim beatae,
		ipsam tempore, ullam voluptas consequuntur laborum, dolor nobis nam
		velit iure. Autem veniam atque quo, sunt veritatis!</p>
	<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit.
		Quisquam temporibus repellat voluptatem sit nulla commodi, maxime
		optio aperiam! Consequuntur necessitatibus iste amet id, nihil
		laboriosam voluptatem cum laudantium ab repudiandae. Lorem ipsum dolor
		sit amet, consectetur adipisicing elit. Maxime ipsum blanditiis, enim
		beatae, ipsam tempore, ullam voluptas consequuntur laborum, dolor
		nobis nam velit iure. Autem veniam atque quo, sunt veritatis! Lorem
		ipsum dolor sit amet, consectetur adipisicing elit. Maxime ipsum
		blanditiis, enim beatae, ipsam tempore, ullam voluptas consequuntur
		laborum, dolor nobis nam velit iure. Autem veniam atque quo, sunt
		veritatis! Lorem ipsum dolor sit amet, consectetur adipisicing elit.
		Maxime ipsum blanditiis, enim beatae, ipsam tempore, ullam voluptas
		consequuntur laborum, dolor nobis nam velit iure. Autem veniam atque
		quo, sunt veritatis! Lorem ipsum dolor sit amet, consectetur
		adipisicing elit. Maxime ipsum blanditiis, enim beatae, ipsam tempore,
		ullam voluptas consequuntur laborum, dolor nobis nam velit iure. Autem
		veniam atque quo, sunt veritatis! Lorem ipsum dolor sit amet,
		consectetur adipisicing elit. Maxime ipsum blanditiis, enim beatae,
		ipsam tempore, ullam voluptas consequuntur laborum, dolor nobis nam
		velit iure. Autem veniam atque quo, sunt veritatis!</p>
	<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit.
		Quisquam temporibus repellat voluptatem sit nulla commodi, maxime
		optio aperiam! Consequuntur necessitatibus iste amet id, nihil
		laboriosam voluptatem cum laudantium ab repudiandae. Lorem ipsum dolor
		sit amet, consectetur adipisicing elit. Maxime ipsum blanditiis, enim
		beatae, ipsam tempore, ullam voluptas consequuntur laborum, dolor
		nobis nam velit iure. Autem veniam atque quo, sunt veritatis! Lorem
		ipsum dolor sit amet, consectetur adipisicing elit. Maxime ipsum
		blanditiis, enim beatae, ipsam tempore, ullam voluptas consequuntur
		laborum, dolor nobis nam velit iure. Autem veniam atque quo, sunt
		veritatis! Lorem ipsum dolor sit amet, consectetur adipisicing elit.
		Maxime ipsum blanditiis, enim beatae, ipsam tempore, ullam voluptas
		consequuntur laborum, dolor nobis nam velit iure. Autem veniam atque
		quo, sunt veritatis! Lorem ipsum dolor sit amet, consectetur
		adipisicing elit. Maxime ipsum blanditiis, enim beatae, ipsam tempore,
		ullam voluptas consequuntur laborum, dolor nobis nam velit iure. Autem
		veniam atque quo, sunt veritatis! Lorem ipsum dolor sit amet,
		consectetur adipisicing elit. Maxime ipsum blanditiis, enim beatae,
		ipsam tempore, ullam voluptas consequuntur laborum, dolor nobis nam
		velit iure. Autem veniam atque quo, sunt veritatis!</p>
	<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit.
		Quisquam temporibus repellat voluptatem sit nulla commodi, maxime
		optio aperiam! Consequuntur necessitatibus iste amet id, nihil
		laboriosam voluptatem cum laudantium ab repudiandae. Lorem ipsum dolor
		sit amet, consectetur adipisicing elit. Maxime ipsum blanditiis, enim
		beatae, ipsam tempore, ullam voluptas consequuntur laborum, dolor
		nobis nam velit iure. Autem veniam atque quo, sunt veritatis! Lorem
		ipsum dolor sit amet, consectetur adipisicing elit. Maxime ipsum
		blanditiis, enim beatae, ipsam tempore, ullam voluptas consequuntur
		laborum, dolor nobis nam velit iure. Autem veniam atque quo, sunt
		veritatis! Lorem ipsum dolor sit amet, consectetur adipisicing elit.
		Maxime ipsum blanditiis, enim beatae, ipsam tempore, ullam voluptas
		consequuntur laborum, dolor nobis nam velit iure. Autem veniam atque
		quo, sunt veritatis! Lorem ipsum dolor sit amet, consectetur
		adipisicing elit. Maxime ipsum blanditiis, enim beatae, ipsam tempore,
		ullam voluptas consequuntur laborum, dolor nobis nam velit iure. Autem
		veniam atque quo, sunt veritatis! Lorem ipsum dolor sit amet,
		consectetur adipisicing elit. Maxime ipsum blanditiis, enim beatae,
		ipsam tempore, ullam voluptas consequuntur laborum, dolor nobis nam
		velit iure. Autem veniam atque quo, sunt veritatis!</p>
	<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit.
		Quisquam temporibus repellat voluptatem sit nulla commodi, maxime
		optio aperiam! Consequuntur necessitatibus iste amet id, nihil
		laboriosam voluptatem cum laudantium ab repudiandae. Lorem ipsum dolor
		sit amet, consectetur adipisicing elit. Maxime ipsum blanditiis, enim
		beatae, ipsam tempore, ullam voluptas consequuntur laborum, dolor
		nobis nam velit iure. Autem veniam atque quo, sunt veritatis! Lorem
		ipsum dolor sit amet, consectetur adipisicing elit. Maxime ipsum
		blanditiis, enim beatae, ipsam tempore, ullam voluptas consequuntur
		laborum, dolor nobis nam velit iure. Autem veniam atque quo, sunt
		veritatis! Lorem ipsum dolor sit amet, consectetur adipisicing elit.
		Maxime ipsum blanditiis, enim beatae, ipsam tempore, ullam voluptas
		consequuntur laborum, dolor nobis nam velit iure. Autem veniam atque
		quo, sunt veritatis! Lorem ipsum dolor sit amet, consectetur
		adipisicing elit. Maxime ipsum blanditiis, enim beatae, ipsam tempore,
		ullam voluptas consequuntur laborum, dolor nobis nam velit iure. Autem
		veniam atque quo, sunt veritatis! Lorem ipsum dolor sit amet,
		consectetur adipisicing elit. Maxime ipsum blanditiis, enim beatae,
		ipsam tempore, ullam voluptas consequuntur laborum, dolor nobis nam
		velit iure. Autem veniam atque quo, sunt veritatis!</p>
	<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit.
		Quisquam temporibus repellat voluptatem sit nulla commodi, maxime
		optio aperiam! Consequuntur necessitatibus iste amet id, nihil
		laboriosam voluptatem cum laudantium ab repudiandae. Lorem ipsum dolor
		sit amet, consectetur adipisicing elit. Maxime ipsum blanditiis, enim
		beatae, ipsam tempore, ullam voluptas consequuntur laborum, dolor
		nobis nam velit iure. Autem veniam atque quo, sunt veritatis! Lorem
		ipsum dolor sit amet, consectetur adipisicing elit. Maxime ipsum
		blanditiis, enim beatae, ipsam tempore, ullam voluptas consequuntur
		laborum, dolor nobis nam velit iure. Autem veniam atque quo, sunt
		veritatis! Lorem ipsum dolor sit amet, consectetur adipisicing elit.
		Maxime ipsum blanditiis, enim beatae, ipsam tempore, ullam voluptas
		consequuntur laborum, dolor nobis nam velit iure. Autem veniam atque
		quo, sunt veritatis! Lorem ipsum dolor sit amet, consectetur
		adipisicing elit. Maxime ipsum blanditiis, enim beatae, ipsam tempore,
		ullam voluptas consequuntur laborum, dolor nobis nam velit iure. Autem
		veniam atque quo, sunt veritatis! Lorem ipsum dolor sit amet,
		consectetur adipisicing elit. Maxime ipsum blanditiis, enim beatae,
		ipsam tempore, ullam voluptas consequuntur laborum, dolor nobis nam
		velit iure. Autem veniam atque quo, sunt veritatis!</p>

		</section>

  <script src = "https://code.jquery.com/jquery-3.2.1.min.js"></script>
   
   <script type="text/javascript">
   
   $(window).resize(function(){
  	 
  	 windowWidth = $( window ).width();

  	if (windowWidth < 1845){
  		
  		$('.page.second').css({
  			'min-height': '140vh'
            });
  		  		 
  	}else{
  		$('.page.second').css({
  			'min-height': '68vh'
            });
  	}
  	
   }).resize();
   
   </script>
  
</body>
</html>