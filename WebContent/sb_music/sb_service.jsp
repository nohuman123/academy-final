<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="icon" href="../sb_music/sb_lib/images/favicon.ico">
<link rel="stylesheet" href="../sb_music/sb_lib/css/sb_service.css">
</head>
<body id="service_body">

<%
	String mId = "";
	if(session.getAttribute("mId") != null){
 		mId = (String)session.getAttribute("mId");	
	}
%>
	<img src="../sb_music/sb_lib/images/mylogo.png" width="130px"  onclick="location.href='sb_main.jsp'">
	<div align="right">
		<c:if test="${empty mId}">
			<button id="serviceBtn1"  onclick="location.href='sb_login.jsp'">로그인</button>
		</c:if>
		<button id="serviceBtn2"  onclick="location.href='sb_main.jsp'">워터멜론<br>시작하기</button>
	</div>
	<div class="container" id="service_top">
		<div align="center">
			<span id="service_span">여름엔 시원한 </span><span id="service_wm">워터멜론</span><span id="service_span">과 함께</span><br>
			<span id="service_span">신나는 노래 들으면서 힐링하세요</span>
		</div>
			<img src="../sb_music/sb_lib/images/pinkbean.png" id="pinkbean">
	</div>
	
	
	
	
</body>
</html>