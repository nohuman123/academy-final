<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="../sb_music/sb_lib/css/jquery-ui.css">

<link rel="stylesheet" href="../main_lib/css/root_myPage.css">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">
</head>
<body id="my_body">
<%
	String mId = "";
	if(session.getAttribute("mId") != null){
 		mId = (String)session.getAttribute("mId");	
	}
%>
	<br><br>
	<div class="container" id="my_body">
		<img id="logo" src="../main_lib/images/root.png" onclick="location.href='../index.jsp'">
		<span id="logo_span">내 정보</span>
		
		<hr>
		
		<div id="my_info">
			 <h3>프로필</h3>
			<span>아이디: <%=mId %></span>
			<br>
			<span>성명: ${vo.mName }</span>
			<br>
			<span>생일: ${vo.birth }</span>
			<br>
			
			<span>아이디 생성일: ${vo.mDate }</span>
			<div align="right">
				
			</div>
		</div>
		
		<br>
		
		<div id="my_address" class="col-sm-6">
			<h3>연락처</h3>
			<span>휴대폰 번호: ${vo.phone }</span>
			<br>
			<span>이메일 주소: ${vo.email }</span>
		</div>
		
		<div id="my_coupons" class="col-sm-6">
			<h3>쿠폰</h3>
			
			<h4>없음</h4>
			
			
		</div>
		<div id="my_Btns" class="col-sm-12">
			<button id="my_Btn">회원정보 수정</button>
			<button id="my_Btn">회원 탈퇴</button>
		</div>
	</div>
<script src="../main_lib/js/jquery-3.4.1.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js"></script>
</body>
</html>