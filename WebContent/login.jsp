<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="./sb_music/sb_lib/css/jquery-ui.css">
<link rel="stylesheet" href="./sb_music/sb_lib/css/bootstrap.min.css">
<link rel="stylesheet" href="./sb_music/sb_lib/css/bootstrap-theme.min.css">
<link rel="stylesheet" href="./sb_music/sb_lib/css/sb_register.css">
<script src="./sb_music/sb_lib/js/jquery-3.4.1.js"></script>
<script src="./sb_music/sb_lib/js/jquery-ui.js"></script>
</head>
<body>
	<br><br><br><br>
	<div align="center">
		<h1><a href="index.jsp"><img src="./main_lib/images/root.png" alt="" style="height:50px;"></a></h1>
		<br><br>
		<div class="container">	
			<form id="frm_login_s" method="post" name="frm_register">
				<input type="hidden" class="nSerial" name="nSerial" value="${param.nSerial}"/>
				<div class="login_form">
					<span>아이디</span><br> 
					<input type="text" id="lId" name="lId" placeholder="아이디"><div id="checkId" ></div><br>
					<span>비밀번호</span> <br> 
					<input type="password" id="lPwd" name="lPwd" placeholder="비밀번호"><br>
					<br><br>
					<button id="login_s" onclick="login()" type="button">로그인</button><br/>
					<span class="login_find">
						<a href="idFind.jsp">아이디 찾기</a> | <a href="idCk.jsp">비밀번호 찾기</a> | <a href="./sb_music/sb_register.jsp">회원가입</a>
					</span>
				</div>
			</form>
		</div>
	</div>	




<script src="./news/js/register_s.js"></script>
</body>
</html>