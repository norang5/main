<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<!-- <script defer
	src="http://ajax.googleapis.com/ajax/libs/jquery/1.7.2/jquery.min.js"></script> -->

<jsp:include page="../../resources/include/headerMain.jsp" flush="false" />
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/css/main.css">

<style>

a{
text-decoration: none;
color:white;}

#video {
	position: absolute;
	top: 0px;
	left: 0px;
	min-width: 100vn;
	min-height: 100vh;
	width: auto;
	height: auto;
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
	vertical-align: middle;
	z-index: -50;
	
}

#slogan {

	positoin: absolute;
	width: 50%;
	margin: auto;
	top: 50vh; left : 0; bottom : 0; right : 0;
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
	position: absolute;
	top: 1050px;
	min-width: 100%;
	min-height: 100vh;
	background-color: silver;
	z-index: -30;
	font-size: 2em;
	margin:0;
	background-size: cover;
}

table {
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
}



.page.third {
	text-decoration: none;
	position: absolute;
	top: 1930px;
	min-width: 100%;
	min-height: 100vh;
	background-color: yellow;
	z-index: -30;
	font-size: 2em;
	margin:0;
	
}

#about{
background-image: url(./image/about_back.jpg);
background-size: cover;

}

#store{
background-image: url(./image/store_back.jpg);
background-size: cover;

}

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
</head>

<body>
	<!-- <p  id=video align="middle"><iframe width="854" height="480" src="https://www.youtube.com/embed/R95Ucc-FUOs?rel=0&amp;controls=0&amp;showinfo=0&autoplay=1&loop=1&playlist=R95Ucc-FUOs" frameborder="0" allowfullscreen></iframe>
</p> -->

<video id="video" preload="auto" autoplay="true" loop="loop"
		muted="muted" volume="0"> <source src="./file/background.webm"></video>

	
	<section class="page first">

		<div id="slogan">
		</br></br></br></br></br>
			adidas original</br> 2017 F/W
			</br></br></br>
		</div>
		<div id="down"><a href="#menu">VVV</div>
		
	</section>
	
	<section class="page second" id="menu">
	<table>
	<tr>
	<td id="about" onclick="location.href='./info'" style="cursor:pointer;">about</a></td>	
	<td id="store" onclick="location.href='./store'" style="cursor:pointer;">store</a></td>
	<td id="used" onclick="location.href='./usedStore'" style="cursor:pointer;">used</a></td>
	</tr>

	</table>
	
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

</body>
</html>