<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>워터멜론 로그인</title>
<link rel="icon" href="../sb_music/sb_lib/images/favicon.ico">
<link rel="stylesheet" href="../sb_music/sb_lib/css/jquery-ui.css">
<link rel="stylesheet" href="../sb_music/sb_lib/css/bootstrap.min.css">
<link rel="stylesheet" href="../sb_music/sb_lib/css/bootstrap-theme.min.css">
<link rel="stylesheet" href="../sb_music/sb_lib/css/sb_login.css">
<script src="../sb_music/sb_lib/js/jquery-3.4.1.js"></script>
<script src="../sb_music/sb_lib/js/jquery-ui.js"></script>
</head>
<body style="background-image: url('../sb_music/sb_lib/images/watermelon.jpg'); background-size: auto 235%; padding-top: 30px;">
	
	<nav class="navbar-fixed-top" role="navigation">
		<div class="container-fluid" id="logNav">
			<div align="left">
				<img src="../sb_music/sb_lib/images/root.png" width="100px" id="rootLogo" onclick="location.href='../index.jsp'">
			</div>
			
			<div align="right">
				<button id="goMain" onclick="location.href='./sb_main.jsp'">워터멜론 시작하기</button>
			</div>
		</div>
	
	</nav>
	
	
	<div class="container" id="loginBody">
		
		<div align="center" id="loginDiv">
			<img src="../sb_music/sb_lib/images/watermelon.gif">
			<form id="frm_login" method="post" name="frm_login">
				<input type="text" placeholder="회원 아이디" id="mId" name="mId" autocomplete="off">
				<br><br>
				<input type="password" placeholder="비밀번호" id="pwd" name="pwd" autocomplete="off">
				<br><br>
				<button type="submit" id="BtnLogin">로그인</button>
				<br><br>
				<button type="button" id="BtnRegister" onclick="location.href='sb_register.jsp'">회원가입</button>
				<br><br>
				<div id="findId">
					<span id="">아이디 찾기</span>/<span id="">비밀번호 찾기</span>
				</div>
			</form>
		</div>
	</div>

	
	


<script src="../sb_music/sb_lib/js/sb_login.js"></script>
</body>
</html>