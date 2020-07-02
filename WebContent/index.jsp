<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%><!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>최고의 포털 사이트 ROOT</title>
<link rel="icon" href="./main_lib/images/root.ico">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">
<!-- <link rel="stylesheet" href="./sb_music/sb_lib/css/bootstrap.min.css"> -->
<link rel="stylesheet" href="${pageContext.request.contextPath}/sb_music/sb_lib/css/bootstrap-theme.min.css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/main_lib/css/main_page.css">
<link rel="stylesheet" href="./news/css/style.css">
<script src="${pageContext.request.contextPath}/main_lib/js/jquery-3.4.1.js"></script>
<script src="${pageContext.request.contextPath}/main_lib/js/main_page.js"></script>
<%-- <script src="${pageContext.request.contextPath}/main_lib/js/index.js"></script> --%>
<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery-timeago/1.6.5/jquery.timeago.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery-timeago/1.6.5/locales/jquery.timeago.ko.js"></script>
<script src="./main_lib/js/index.js"></script>
</head>
<body>
   
<div class="container">
   <!-- 헤더 -->

   <!-- 로고, 검색창 -->
   <div class="row">
      <div id='header_top'>
          <div class="col-xs-4 col-sm-3 col-md-2">
            <img id="logo" src="${pageContext.request.contextPath}/main_lib/images/root.png">        
          </div>
          <div class="col-xs-8 col-sm-9 col-md-10">
          
          	<form action="search.mem">
            	<input type="text" id='searchBar' name="searchBar" autocomplete="off"/>
            </form>
         </div>
       </div>
   </div>
</div>
   <hr>
   <div class="container" id="header_bot">
      <div class="row" align="center">
         <div class="col-xs-2">
            <a href="${pageContext.request.contextPath}/news/newsMainT.jsp" style="color:black;">뉴스</a>
         </div>
         <div class="col-xs-2">
            <a href="${pageContext.request.contextPath}/blog/blog_Index.jsp" style="color:black;">블로그</a>
         </div>
         <div class="col-xs-2">
            <a href="${pageContext.request.contextPath}/shop/shop_index.jsp" style="color:black;">쇼핑</a>
         </div>
         <div class="col-xs-2">
            <a href="./sb_music/sb_service.jsp" style="color:black;">음악</a>
         </div>
         <div class="col-xs-2">
         	<div class="dropdown">
         		<p>더보기</p>
				<div class="dropdown-content">
					<a href="./root/root_dictionary.jsp">사전</a>
					<a href="./root/root_movie.jsp">영화</a>
					<a href="./root/gg.mem">ROOT.GG</a>
				</div>
			</div>
         </div>
      </div>
   </div>
   <hr id='hr'>

<!-- 메인 -->
<div id="main">
</div>
   
   
   
<!-- 하단 -->
<div>
<jsp:include page="footer.jsp"></jsp:include>
</div>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js"></script>
<!-- <script src="./lib/js/bootstrap.min.js"></script> -->
<script>main.view();</script>
</body>
</html>