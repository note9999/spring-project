<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="contextPath" value="${pageContext.request.contextPath}" />

<!DOCTYPE html>
<html lang="en">
<head>
  <title>Bootstrap Example</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
  <script type="text/javascript">
$(document).ready(function(){
   if(${!empty msgType}){
      $("#messageType").attr("class", "modal-content panel-success")
      $("#myMessage").modal("show");
   }
});
 </script>
</head>
<body>

<div class="container">
<jsp:include page="common/header.jsp"/>
  <c:if test="${empty mvo}">
  <h3><strong>뚱이네</strong></h3>
  </c:if>
  
  <c:if test="${!empty mvo}">
  
            <c:if test="${mvo.memProfile eq null }">
               <img src="${contextPath}/resources/images/person.jpg" style="width: 50px"; height="50px"/>
            </c:if>
            <c:if test="${mvo.memProfile ne null }">
               <img src="${contextPath}/resources/upload/${mvo.memProfile}" style="width: 50px"; height="50px"/>
            </c:if>
            <label><strong>${mvo.memName}님 방문을 환영합니다.</strong></label>
 
  </c:if>
   <div class="panel panel-default">
    <div>
      <img src="${contextPath}/resources/images/dog4.jpg" style="width: 100%; height: 600px"/> 
   </div>
    <div class="panel-body">
    <ul class="nav nav-pills">
    <li class="active"><a data-toggle="pill" href="#home">Home</a></li>
    <li><a data-toggle="pill" href="#menu1">게시판</a></li>
    <li><a data-toggle="pill" href="#menu2">공지사항</a></li>
    <li><a data-toggle="pill" href="#menu3">뚱이</a></li>
  </ul>
  
  <div class="tab-content">                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                            
    <div id="home" class="tab-pane fade in active">
      <h3>HOME</h3>
      <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>
    </div>
    <div id="menu1" class="tab-pane fade">
      <h3>게시판</h3>
      <p>Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.</p>
    </div>
    <div id="menu2" class="tab-pane fade">
      <h3>공지사항</h3>
      <p>Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam.</p>
    </div>
    <div id="menu3" class="tab-pane fade">
      <h3>아직</h3>
      <p>Eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo.</p>
    </div>
  </div>
    </div>
    <div class="panel-footer">뚱이</div>
  </div>
</div>
<!-- 성공 메세지를 출력(modal) -->
         <div id="myMessage" class="modal fade" role="dialog">
            <div class="modal-dialog">

               <!-- Modal content-->
               <div id="messageType" class="modal-content panel-info">
                  <div class="modal-header panel-heading">
                     <button type="button" class="close" data-dismiss="modal">&times;</button>
                     <h4 class="modal-title">${msgType}</h4>
                  </div>
                  <div class="modal-body">
                     <p>${msg}</p>
                  </div>
                  <div class="modal-footer">
                     <button type="button" class="btn btn-default"
                        data-dismiss="modal">Close</button>
                  </div>
               </div>
            </div>
         </div>
</body>
</html>