<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>

<jsp:include page="../../resources/include/headerMain.jsp" flush="false" />
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/css/main.css">

<style>
p {
	margin-top: 5px;
	padding: 0px;
	font-size: 2em;
}

#video {
	position: absolute;
	top: 0px;
	left: 0px;
	min-width: 100%;
	min-height: 100%;
	width: auto;
	height: auto;
	z-index: -1;
	overflow: hidden;
}
 
 
.page.first {
	position: absolute;
	min-width: 100%;
	min-height: 100%;
	background-color: none;
	text-align: center;
	display: table-cell;
	vertical-align: middle;
}

#slogan {
	positoin: absolute;
	width: 50%;
	height: 50vh;
	margin: auto;
	top: 0; left : 0; bottom : 0; right : 0;
	font-size: 5em;
	color: white;
	background-color: none;
	left: 0;
	bottom: 0;
	right: 0;
}


</style>

</head>

<body>
	<!-- <p  id=video align="middle"><iframe width="854" height="480" src="https://www.youtube.com/embed/R95Ucc-FUOs?rel=0&amp;controls=0&amp;showinfo=0&autoplay=1&loop=1&playlist=R95Ucc-FUOs" frameborder="0" allowfullscreen></iframe>
</p> -->

	<video id="video" preload="auto" autoplay="true" loop="loop"
		muted="muted" volume="0"> <source src="./file/background.webm"></video>

	<div class="page first">

		<div id="slogan">
			adidas original</br> 2017 F/W
		</div>
	</div>
	
	<div class="page second"></div>
	
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
	</div>
</body>
</html>