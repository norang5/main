<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
	
	/* 이 헤더를 포함했다면, 웹페이지 어디에서든 ${userEmail}로 접근할 수 있다.
	몇가지 예시.
	${!empty userEmail}	- userEmail이 비어있지 않다면(로그인 상태라면) true 반환
	${null eq userEmail}	- userEmail에 null값이 담겨있다면(로그아웃 상태라면) true 반환
	${userEmail}		- 현재 userEmail에 담겨있는 값을 반환(로그인 상태라면 abc@abcd.com같은걸
					반활할테고, 비로그인 상태라면 null을 반환할 것이다.
	*/
	String userEmail = (String)session.getAttribute("userEmail");
	System.out.println("[헤더] header_bar에서 session.getAttribute(\"userEmail\"); 로 나온 값: " + userEmail);
	
   /*
      이런식으로 사용하세요.
      <jsp:include page="header_bar.jsp">
         <jsp:param name="enableSpread"      value="true"/>
         <jsp:param name="backgroundColor"   value="white"/>
         <jsp:param name="borderBottomColor"   value="#C6C6C6"/>
         <jsp:param name="leftMenuColor"   value="black"/>
         <jsp:param name="rightMenuColor"   value="black"/>
         <jsp:param name="centerMenuSmallColor"   value="black"/>
         <jsp:param name="centerMenuBigColor"   value="white"/>
      </jsp:include>
   */

   request.setCharacterEncoding("utf-8");
   
   // 헤더바의 메뉴 펼치기 기능을 켤 것인지 말 것인지.(기본값: true-펼친다)
   String enableSpreadStr = request.getParameter("enableSpread");
   boolean enableSpread = true;
   if(enableSpreadStr == null || enableSpreadStr == ""){
      enableSpread = true;
   }else{
      // true나 false외의 문자라면 그냥 false로 치환된다.
      enableSpread = Boolean.parseBoolean(enableSpreadStr);
   }
   
   // 헤더바의 배경색(기본색상: 하양)
   String innerTopContainerBackgroundColor = request.getParameter("backgroundColor");
   if(innerTopContainerBackgroundColor == null || innerTopContainerBackgroundColor == ""){
      innerTopContainerBackgroundColor = "white";
   }
   
   // 헤더바의 아래쪽 테두리색(기본색상: 연한 회색)
   String innerTopContainerBorderBottomColor = request.getParameter("borderBottomColor");
   if(innerTopContainerBorderBottomColor == null || innerTopContainerBorderBottomColor == ""){
      innerTopContainerBorderBottomColor = "#C6C6C6";
   }
   
   // 왼쪽 부분(로고) 글자색(기본색상: 검정)
   String leftPanelBtnColor = request.getParameter("leftMenuColor");
   if(leftPanelBtnColor == null || leftPanelBtnColor == ""){
      leftPanelBtnColor = "black";
   }
   
   // 오른쪽 부분(고객센터/장바구니/로그인) 글자색(기본색상: 검정)
   String rightPanelBtnColor = request.getParameter("rightMenuColor");
   if(rightPanelBtnColor == null || rightPanelBtnColor == ""){
      rightPanelBtnColor = "black";
   }
   
   // 스크롤하여 메뉴바가 접혔을때의 글자색(기본색상: 검정)
   String menuBtnSmallColor = request.getParameter("centerMenuSmallColor");
   if(menuBtnSmallColor == null || menuBtnSmallColor == ""){
      menuBtnSmallColor = "black";
   }
   
   // 페이지 최상단에서 메뉴바가 펼쳐졌을때의 글자색(기본색상: 검정)
   String menuBtnBigColor = request.getParameter("centerMenuBigColor");
   if(menuBtnBigColor == null || menuBtnBigColor == ""){
      menuBtnBigColor = "black";   
   }
%>

<!DOCTYPE html>
<html>
<head>
   
   <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
   <title>Header Bar</title>
   
   <style type="text/css">
      @import url(https://fonts.googleapis.com/css?family=Raleway:300,700);
@import url(https://code.ionicframework.com/ionicons/2.0.1/css/ionicons.min.css);
      body{
         margin: 0;
         font-family: 'Raleway', Arial, sans-serif;
         font-weight:bold;
         z-index:300;
      }
      
      /* 헤더 보더라인 가시화를 위해 자리를 차지하고 있을 컨테이너*/
       #fixed_header{
         margin:0px;
         padding:0px;
         height': 50px;
         transition-duration: 0.5s;
        z-index:300;
      }
      
      /* 헤더바 뒤쪽에서 실제 자리를 잡고 전체페이지를 밀었다 당겼다 해줄 투명컨테이너 */
      #static_header_container{
         margin:0px;
         padding:0px;
    	 height: 50px;
         position:fixed;
         background-color: <%= innerTopContainerBackgroundColor %>;
         border-bottom: 1px solid <%= innerTopContainerBorderBottomColor %>;
         transition-duration: 0.5s;
         min-width: 100%;
          z-index:300;
      }
      
      /* inner_top_container, inner_bottom_container가 담길 헤더 컨테이너 */
      #fixed_header_container{
         display: inline-block;
         width: 100%;
         position: fixed;
         top :0px;
         min-width: 800px;
      	  z-index:300;
      }
      
      /* left_panel, right_panel이 담길 이너 컨테이너 */
      #inner_top_container{
         display: inline-block;
         width: 100%;
         position: absolute;
         top: 0px;
         z-index: 310;
      }
      
      /* 로고가 담길 좌측 패널 */
      #left_panel{
         display: inline-block;
         background-size: contain;
         margin-left: 20px;
         color: <%= leftPanelBtnColor %>
      }
      
      #logo{
      width: 40px; 
      height: 40px; 
      vertical-align: middle;
      transition-duration: 0.5s;
      }
      
      #logo_text{
      display:none;
      transition-duration: 0.5s;
      }
      
      
      /* 고객센터, 장바구니, 로그인 프로필이 담길 우측 패널 */
      #right_panel{
         display: inline-block;
         position: absolute;
         top: 10px;
         right: 0;
         margin-right: 20px;
         z-index: 312;
      }
      
      /* 메뉴바가 담길 이너 컨테이너 */
      #inner_bottom_container{
         position: relative;
         width: 100%;
         text-align: center;
         padding: 0;
         margin-top: 10px;
         transition-duration: 0.05s;
      }
      
      #inner_bottom_container ul{
         display: inline-block;
         position: relative;
         left: -100px;
         padding: 0;
         margin: 0;
         transition-duration: 2s;
         z-index: 311;

      }
      
      .menu_btn{
         float: left;
         list-style: none;
         margin: 0 10px;
         font-size: 1.5em;
         transition-duration: 0.5s;
         color: black;
         box-sizing: border-box;
         padding: 0 20px;
         max-height: 50px;
        
      }
      
      .shopping_basket{
         background-image: url("/shoes_shop/resources/image/shopping_basket.png");
         height: 30px;
         width: 30px;
         margin-left:20px;
         background-size: contain;
         display: inline-block;
         vertical-align: middle;
      }
      
      .right_panel_btn_color{
         color: <%= rightPanelBtnColor %>;
      }
      
      .none_a_style{
         text-decoration: none;
      }
      
      .user_small_image{
         background-image: url('${pageContext.request.contextPath}/resources/image/pofile.png');
         width: 25px;
         height: 25px;
         margin-left:20px;
         background-size: contain;
         display: inline-block;
         border-radius: 50%;
         vertical-align: middle;
      }
      
      .profile_arrow{
         width: 0px;
         height: 0px;
         border-color: transparent;
         border-top: 7px solid none;
         border-bottom: 7px solid white;
         border-right: 7px solid transparent;
         border-left: 7px solid  transparent;
         position: relative;
         left: 3.5px;
         top: 15px;
         z-index: 316;
         display: none;
         transition-duration: 3s;
      }
      
      #profile_container{
         position: absolute;
         top: 50px;
         right: 0;
         box-shadow: 0 2px 10px rgba(0,0,0,.2);
         border: 1px solid #ccc;
         border-color: rgba(0,0,0,.2);
         border-radius: 2px;
         color: #000;
         text-align: left;
         min-width: 315px;
         min-height: 150px;
         background-color: white;
         z-index: 315;
         display: none;
         transition-duration: 3s;
      }
      
      #profile_top_panel{
         margin: 15px;
      }
      
      .top_inner_left_panel{
         border-radius: 50%;
         margin-right: 15px;
         display: inline-block;
         overflow: hidden;
      }
      
      .user_big_image{
         background-image: url('${pageContext.request.contextPath}/resources/image/pofile.png');
         width: 80px;
         height: 80px;
         background-size: contain;
         display: block;
         vertical-align: top;
      }
      
      .top_inner_right_panel{
         display: inline-block;
         vertical-align: top;
      }
      
      .my_account_btn{
         display: inline-block;
         color: white;
         background: #4d90fe;
         border: 1px solid #3079ed;
         border-radius: 2px;
         font-weight: bold;
         margin: 10px 0 0 0;
         padding: 0 12px;
      }
      
      #profile_bottom_panel{
         padding: 10px 0;
         width: 100%;
         display: table;
         border-top: 1px solid #ccc;
         borrder-color: rgba(0,0,0,.2);
         background: #f5f5f5;
      }
      
      .profile_a_color{
         color: blue;
      }
      
      .gray_btn{
         color: #666;
         margin: 0 20px;
         background-color: #f8f8f8;
         border: 1px solid #c6c6c6;
         display: inline-block;
         line-height: 50px;
         padding: 0 12px;
         border-radius: 2px;
         cursor: pointer;
      }
      
      /* 후손 선택자. right_panel안에 있는 모든 user_smal_image에 적용 */
      #right_panel .user_small_image{
         
      }
   </style>
   <script type="text/javascript">
      var disScroll = true;
   </script>
</head>
<body>
   <header id="static_header_container">
   
   </header>
   <div id="fixed_header"></div>
   <header id="fixed_header_container">
      <!-- 내부 컨테이너 -->
      <article id="inner_top_container">
         <!-- 좌측 패널(로고) -->
         <nav id="left_panel">
            <a href="./main" class="none_a_style">
               <img id="logo" src="${pageContext.request.contextPath}/image/logo.png"/>
               <span id="logo_text">adidas original</span>
            </a>
         </nav>
      </article>
      
      <!-- 메뉴 패널 -->
      <nav id="inner_bottom_container">
         <ul>
            <!-- 이곳에 메뉴를 등록하세요. -->
            <a class="none_a_style" href="<%=request.getContextPath()%>/info">
               <li class="menu_btn">
                  <span style="vertical-align: super;">ABOUT</span>
               </li>
            </a>
            <a class="none_a_style" href="<%=request.getContextPath()%>/store">
               <li class="menu_btn">
                  <span style="vertical-align: super;">STORE</span>
               </li>
            </a>
            <a class="none_a_style" href="<%=request.getContextPath()%>/usedStore">
               <li class="menu_btn">
                  <span style="vertical-align: super;">USED-ITEM</span>
               </li>
            </a>
            <a class="none_a_style" href="<%=request.getContextPath()%>/admin">

               <li class="menu_btn">
                  <span style="vertical-align: super;">LOCATION</span>
               </li>
            </a>
            
         </ul>
      </nav>
      
      <!-- 우측 패널(고객센터/장바구니/프로필 이미지) -->
      <nav id="right_panel">
         <c:if test="${null eq userEmail}">
		<a href="join" class="right_panel_btn_color none_a_style">
			<span style="vertical-align: middle;">회원가입</span>
		</a>
	</c:if>	
         <c:choose>
            <c:when test="${null eq userEmail}">
            <!-- 비로그인 유저라면 로그인 버튼 표시 -->
               <a href="login" class="right_panel_btn_color none_a_style">
                  <span style="vertical-align: middle;">로그인</span>
               </a>
            </c:when>
            
            <c:when test="${!empty userEmail}">
            	<!-- 로그인 유저라면 장바구니 표시 -->
		<a href="mypage/basket" class="right_panel_btn_color none_a_style">
			<span class="shopping_basket"></span>
			<span style="vertical-align: middle;">장바구니</span>
		</a>
            <!-- 로그인 유저라면 프로필 사진과 프로필 팝업 박스 표시 -->
               <section style="display: inline-block;">
                  <article style="display: inline-block;">
                  <!-- 동그란 프로필 이미지 버튼 -->
                     <!-- 아무동작도 안하는 코드를 넣음으로써 클릭시 페이지 상단으로의 이동을 방지함 -->
                     <a   href="javascript:;"
                        class="right_panel_btn_color none_a_style"
                        title="계정: 홍길동(${userEmail})"
                        role="button"
                     >
                        <span class="user_small_image showProfile"></span>   
                     </a>
                     <!-- 프로필 박스상단에 붙은 세모모양 꼭지 -->
                     <div class="profile_arrow"></div>
                  </article>
                  <article id="profile_container" class="nothingProfile">
                  <!-- 프로필 이미지 버튼 클릭시 표시될 프로필 팝업 박스 -->
                     <div id="profile_top_panel" class="nothingProfile">
                        <a class="top_inner_left_panel none_a_style nothingProfile">
                           <div   class="user_big_image nothingProfile"></div>
                        </a>
                        <div class="top_inner_right_panel nothingProfile">
                           <div class="nothingProfile">홍길동</div>
                           <div class="nothingProfile">${userEmail}</div>
                           <div class="nothingProfile">
                              <a href="#" class="profile_a_color nothingProfile">프로필</a>
                              -
                              <a href="#" class="profile_a_color nothingProfile">개인정보 보호</a>
                           </div class="nothingProfile">
                           <a   class="my_account_btn none_a_style nothingProfile"
                              href="mypage/main"
                           >내 계정</a>
                        </div>
                     </div>
                     <div id="profile_bottom_panel" class="nothingProfile">
                        <div style="display: table-cell;text-align: left"  class="nothingProfile">
                           <a class="gray_btn none_a_style nothingProfile" href="#">버튼</a>
                        </div>
                        <div style="display: table-cell;text-align: right"  class="nothingProfile">
                           <a class="gray_btn none_a_style nothingProfile" href="logout">로그아웃</a>
                        </div>
                     </div>
                  </article>
               </section>
            </c:when>
            
            <c:otherwise>
               <span style="color: white;">error</span>
            </c:otherwise>
         </c:choose>
      </nav>
   </header>
   
   <script src = "https://code.jquery.com/jquery-3.2.1.min.js"></script>
   
   <script type="text/javascript">
   	var showProfile = false;
   	
	$(function(){
		// 클릭이벤트 발생시 프로필 팝업창의 숨기기/보이기 여부 판단
		$(window).click(function(event){
			if($(event.target).hasClass('showProfile')){
				if(showProfile == true){
					hiddenProfile();
	                
				}else{
					visibleProfile()
				}
			}else if($(event.target).hasClass('nothingProfile')){
				return;
			}else{
				hiddenProfile();
			}
		});
	});
	
		// 프로필 팝업 숨기기
	    function hiddenProfile(){
	       $('.profile_arrow').css({
	          'display':'none'
	       });
	       
	       $('#profile_container').css({
	          'display':'none'
	       });
	       
	       showProfile = false;
	    }
	    
	    // 프로필 팝업 보이기
	    function visibleProfile(){
	       $('.profile_arrow').css({
	          'display':'block'
	       	
	       });
	       
	       $('#profile_container').css({
	          'display':'block'
	       
	       });
	       
	       showProfile = true;
	    }
   	
   </script>
   
   <c:if test="<%=enableSpread%>">
      <script type="text/javascript">
         var lastScrollTop = 0;
         var menuHiddenPosition = 40; // 스크롤바의 포지션 값이 이 위치 이상일때 메뉴를 접는다.
         var windowWidth=0;

         //창 가로길이 조절시 메뉴 버튼 조정
         $(window).resize(function(){
        	 
        	 windowWidth = $( window ).width();
        	   var st = $(this).scrollTop();
               console.log('currentScrollTop: ' + st);

        	 
        	if (windowWidth < 1400){
        		 $('.menu_btn').css({
                     'padding':'0px',
                    'font-size': '1.5em'
                  });
        		 
        		 $('#inner_bottom_container').css({
      		       
    		         'left': '-70px'

    		      });
        		  		 
        	}else if (windowWidth >= 1400 && st < menuHiddenPosition){
        		$('.menu_btn').css({
                    'padding':'0 20px',
             	   'font-size': '2em'
                 });
        		
        		$('#inner_bottom_container').css({
        		       
        		         'left': '0px'

        		      });	
        	}
        	
         }).resize();
         
         //첫조건이랑 겹쳐서 따로 뺌
			$(window).resize(function(){
        	 
        	 windowWidth = $( window ).width();
        	   var st = $(this).scrollTop();
               console.log('currentScrollTop: ' + st);
               
               if (windowWidth < 1150 && st > menuHiddenPosition){
        		   $('#logo_text').css({
                       'display':'none'
                    });
        	}else if (windowWidth >= 1150 && st > menuHiddenPosition){
        		$('#logo_text').css({
                    'display':'inline'
                 });
        		
        		
        	}
         }).resize();
         
         $(function(){
            didScroll = true;
                   
            // 스크롤 이벤트가 발생하면 실행.
            $(window).scroll(function(event){
               didScroll = true;
            });
         });
         
         // 500ms 마다 스크롤 이벤트가 있었는지 확인
         setInterval(function(){
            if(didScroll){
               scrollHandler();
               didScroll = false;
            }
         }, 350);
         
         function scrollHandler(){
            // 현재 스크롤 바의 최상단 위치 저장.
            var st = $(this).scrollTop();
            console.log('currentScrollTop: ' + st);
            
            // 스크롤 바가 페이지 상단에 위치했다면 메뉴를 펼침.
            if (st < menuHiddenPosition){
               (menuHiddenPosition > 50) ? menuHiddenPosition = 1 : menuHiddenPosition = 50;
               $('#static_header_container').css({
                  'height':'80px',
               });
               
               $('#fixed_header').css({

                  'height': '80px'
               });
               
               
               $('#inner_bottom_container').css({
               'margin-top':'25px' 
                  
               });
               
               $('.menu_btn').css({
                  'font-size':'2.0em',
                  'color':'<%= menuBtnBigColor %>',
                  'margin':'0 30px',
                  'max-height':'80px',
      
                        
               });
               
               
               $('.menu_btn a').css({
                  'color':'<%= menuBtnBigColor %>',
               });
               
               $('#inner_bottom_container ul').css({
                  'left':'0px',
                  'margin-top':'0px'
               });
               
               $('.menu_btn a').css({
                  'cursor':'pointer'
               });
               
               $('#inner_top_container').css({
                  'border-bottom': '0px' 
               });
               
               $('#logo').css({
                  'width': '75px', 
                  'height': '75px',
                  'padding-top': '7px'
               });
               
               $('#logo_text').css({
                  'display':'none'
               });
               
            }else{
            // 스크롤 바가 페이지 하단에 위치했다면 메뉴를 접음.
               
                  $('#fixed_header').css({

       				  'height': '50px'
  				    });
      
            
            
               $('#inner_bottom_container').css({
                  'margin-top':'3px',
               });
            
               $('.menu_btn').css({
                  'font-size':'1.5em',
                  'color':'<%= menuBtnSmallColor %>',
                  'margin':'0 30px',
                  'max-height':'50px',
               });
               
               $('.menu_btn a').css({
                  'color':'<%= menuBtnSmallColor %>',
               });
            
               $('#static_header_container').css({
                  'height':'50px',
                  
               });
               
               
               $('#inner_bottom_container ul').css({
                  /* 'left':'-100px', */
                  'margin-top': '9px',
               });
               
               $('#inner_top_container').css({
               
               });
               
               $('#logo').css({
                  'width': '40px', 
                  'height': '40px',
                  'padding-top': '8px'
               });
               
               $('#logo_text').css({
                  'display':'inline'
               });
               
            }
            
            // '지난 스크롤 바 위치'에 '현재 스크롤 바 위치'를 저장.
            lastScrollTop = st;
         }
      </script>
   </c:if>
</body>
</html>