<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
	String mId = "";
	if(session.getAttribute("mId") != null){
 		mId = (String)session.getAttribute("mId");	
	}
%>
<form id="c_top_frm" name="c_top_frm" method="post">
	<input type="hidden" name="c_mId" value="<%=mId%>">
	<input type="hidden" name="c_cName">
</form>
<nav class="navbar navbar-inverse navbar-fixed-top" id="c_blogNavbar">
	<div class="container-fluid">
		<div class="navbar-header">
    		<div id="c_logo" class="navbar-brand">
    			<img src="../main_lib/images/root.png" onclick="location.href = '${pageContext.request.contextPath}/index.jsp'">
    			<span onclick="location.href = 'blog_Index.jsp'">블로그</span>
    		</div>
  		</div>
   		<ul class="nav navbar-nav navbar-right">
   			<c:set var="id" scope="session" value="<%=mId%>"/>
   			<c:choose>
   				<c:when test='${id == ""}'>
					<li><a href="${pageContext.request.contextPath}/login.jsp"><span class="glyphicon glyphicon-user"></span> 로그인 하기</a></li>
   				</c:when>
   				<c:otherwise>
		      		<li class="dropdown">
		      			<span class="dropdown-toggle" data-toggle="dropdown">
		      				<img src="./blog_image/cat.jpg" class="img-circle" alt="">
		      			</span>
				        <ul class="dropdown-menu">
				          <li><span id="c_menuUserNname">사용자 닉네임</span></li>
			      		  <li class="dropdown-header" id="c_menuUsermId">gus927@naver.com</li>
			      		  <li class="dropdown-header" id="c_menuManage">계정 관리</li>
			      		  <li class="divider"></li>
			      		  <li class="dropdown-header blog">운영중인 블로그</li>
			      		  <li onclick="blog.myblog()"><span id="c_btnMenuMyBlog">내 블로그</span></li>
			      		  <li onclick="blog.manage()"><span class="glyphicon glyphicon-cog" aria-hidden="true"></span></li>
			      		  <li class="divider"></li>
			      		  <li onclick="blog.logout()"><span class="glyphicon glyphicon-log-in"></span> 로그아웃 하기</li>
				        </ul>
		      		</li>
   				</c:otherwise>
   			</c:choose>
  		</ul>
	</div>
</nav>
<script>blog.myblog_func();</script>