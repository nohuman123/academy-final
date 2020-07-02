<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">
<script src="./main_lib/js/jquery-3.4.1.js"></script>
<link rel="stylesheet" href="./main_lib/css/search.css">
</head>
<body>
<%
	String mId = "";
	if(session.getAttribute("mId") != null){
 		mId = (String)session.getAttribute("mId");	
	}
%>
	
	 <!-- 로고, 검색창 -->
	 <div class="container">
	   <div class="row" id="sc_top">
	      <div id='header_top'>
	          <div class="col-sm-2">
	            <img id="logo" src="./main_lib/images/root.png" onclick="location.href='./index.jsp'">        
	          </div>
	          <div class="col-sm-8">
	          	<form action="search.mem">
	            	<input type="text" id='searchBar' name="searchBar" autocomplete="off"/>
	            </form>
	         </div>
	         
	         <c:if test="${!empty mId}">
		         <div class="col-sm-2">
		         	<span onclick="myPage()"><%=mId %></span> <button type="button" onclick="logout()">로그아웃</button>
		         </div>
	         </c:if>
	         <c:if test="${empty mId }">
	         	<div class="col-sm-2">
	         		<button onclick="location.href='./sb_music/login.jsp'">로그인</button>
	         	</div>
	         </c:if>
	         
       	  </div>
	   </div>
	</div>
	
	<hr>
   <div class="container" id="search_main">
      <div class="row" align="center" >
         <div class="col-xs-2">
            <a href="./news/newsMainT.jsp" style="color:black;">뉴스</a>
         </div>
         <div class="col-xs-2">
            <a href="./blog/blog_Index.jsp" style="color:black;">블로그</a>
         </div>
         <div class="col-xs-2">
            <a href="./shop/shop_index.jsp" style="color:black;">쇼핑</a>
         </div>
         <div class="col-xs-2">
            <a href="./sb_music/sb_main.jsp" style="color:black;">음악</a>
         </div>
         <div class="col-xs-2">
            <p>더보기</p>
         </div>
      </div>
   </div>
   <hr id='hr'>
   
   
	<div class="container">
		<h3>뉴스</h3>
		<div id="rt_news" class="col-sm-6">
			<c:forEach items="${searchList }" var="s">
				<a href="${s.originallink }">${s.title }</a>
				<br>
				<a href="${s.link}" id="rt_link">네이버 뉴스</a>
				<br>
				${s.description }
				<br>
				<hr>
			</c:forEach>
			<div align="right">
				<a href="./news/newsMainT.jsp">뉴스 더보기</a>
			</div>
		</div>
		
		<div class="col-sm-6">
			<img src="./main_lib/images/wm_ad.png" onclick="location.href='./sb_music/sb_service.jsp'" id="wm_ad">
		</div>
		
		<hr id="dhr">
		<br>
	</div>
	
	<div class="container">
		<h3>쇼핑</h3>
		<div id="rt_shop">
			<c:forEach items="${shopList }" var="s">
			
				<div class="col-sm-6" id="shopDiv">
					<div class="col-sm-4">
						<img src="${s.image }" width="150px">
					</div>
					<div class="col-sm-8">
						<br>
						<br>
						<a href="${s.link }">${s.title }</a>
						<br>
						<span id="high">최저가${s.lprice}</span> 
						<c:if test="${s.hprice != 0 }">
							<span id="low">최고가${s.hprice}</span>
						</c:if>
					</div>
				</div>		
				
			</c:forEach>
			<div align="right">
				<a href="./shop/shop_index.jsp">쇼핑 더보기</a>
			</div>
		
		</div>
		
		<hr id="dhr">
		
		<h3>블로그</h3>
		<div id="rt_blog">
			<c:forEach items="${blogList }" var="s">
				<a href="${s.link }">${s.title }</a>
				<br>
				${s.description }
				<br><br>
				${s.bloggername} <a href="${s.link }">${s.link }</a>
				<hr>
			</c:forEach>
			<div align="right">
				<a href="./blog/blog_Index.jsp">블로그 더보기</a>
			</div>
		</div>
		
		<hr id="dhr">
		
		<h3>지식in</h3>
		<div id="rt_kin">
			<c:forEach items="${kinList }" var="s">
				<a href="${s.link }">${s.title }</a>
				<br>
				${s.description }
				<br>
				<hr>
			</c:forEach>
		</div>
	</div>
	
<div>
<jsp:include page="../footer.jsp"></jsp:include>
</div>	
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js"></script>
<script src="./main_lib/js/index.js"></script>
</body>
</html>