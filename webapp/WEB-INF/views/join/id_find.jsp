 <%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

 <title>팝업띄우기</title>
 
 <script type="text/javascript">
​
 function openPopup(idx, url){
 // 여기서 idx는 상세화면의 idx를 의미, url은 controller의 url을 의미함.
   var _data = {
     surIdx: idx
   };
   //    JSON.stringify(_data);

   $.ajax({
    
    type:"POST",
    url: url,
    data: _data,
    success: function(data){
     
     $("#popupWrapper").show();
     $("#popupWrapper").html(data); // 넘어온 데이타는 html 형태이기 때문에, display:none으로 해두었던
                                                        div를 show 시켜주고, 그뒤에 ajax로 가지고온 data를 넣어준다. ​
    }, // end success
    error:function(request,status){
     $("#popupWrapper").hide();
     alert("데이터 처리 중 오류가 발생했습니다.\n관리자에게 문의하세요.");
    }
   });  // end ajax
   
  }  