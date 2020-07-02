<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>아이디 찾기</title>
<link rel="stylesheet" href="./sb_music/sb_lib/css/jquery-ui.css">
<link rel="stylesheet" href="./sb_music/sb_lib/css/bootstrap.min.css">
<link rel="stylesheet" href="./sb_music/sb_lib/css/bootstrap-theme.min.css">
<link rel="stylesheet" href="./news/css/idPwFind.css">
<script src="./sb_music/sb_lib/js/jquery-3.4.1.js"></script>
<script src="./sb_music/sb_lib/js/jquery-ui.js"></script>
</head>
<body>
	<div class="container">
		<br><br><br><br>
		<div class="row">	
			<div class="col-sm-4"></div>
			<div class="col-sm-4">
				<form id="idFind_s" method="post">
					<div align="center">
						<a href="index.jsp"><img src="./main_lib/images/root.png" alt="" style="height:50px;"></a>
					</div>
					<div class="pw_find_tt" style="text-align: center;">
						<span class="pw_find_top">아이디 찾기</span><br/>
					</div>
					<div class="pwFind">
						<span>전화번호</span><br/>
						<input type="text" class="phone" name="phone" placeholder="가입시 입력한 전화번호"/><br/>
						<div id="idCk_s" ></div>
						<button type="button" class="btn btn-secondary eCk" onclick="idFind()" disabled>아이디 찾기</button><br/>
					</div>
				</form>
			</div>
			<div class="col-sm-4"></div>
		</div>
	</div>

<script src="./news/js/idPwFind.js"></script>
</body>
</html>