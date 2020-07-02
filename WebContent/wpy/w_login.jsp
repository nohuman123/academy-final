<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE HTML>
<html>
<head>
<title>창업문의</title>
<meta http-equiv="content-type" content="text/html; charset=utf-8" />
<meta name="description" content="" />
<meta name="keywords" content="" />
<!--[if lte IE 8]><script src="css/ie/html5shiv.js"></script><![endif]-->
<script src="./js/jquery-3.4.1.js"></script>
<script src="./js/jquery.dropotron.min.js"></script>
<script src="./js/w_brand.js"></script>


<link rel="stylesheet" href="./css/skel.css" />
<link rel="stylesheet" href="./css/style.css" />
<!--[if lte IE 8]><link rel="stylesheet" href="css/ie/v8.css" /><![endif]-->
</head>
<body class="left-sidebar">

	<!-- Header -->
	<div id="header">
		<div class="container">

			<!-- Logo -->
			<img src="./w_images/w_mainimage1.png">

			<!-- Nav -->
			<nav id="nav">
				<ul>
					<li><a href="w_index.jsp">Home</a></li>
					<li><a href="">브랜드 소개</a>
						<ul>
							<li><a href="w_main.jsp">전 메뉴</a></li>
						</ul></li>
					<li><a href="w_founded.jsp">창업문의</a></li>
					<li><a href="w_customersupport.jsp">고객문의</a></li>
					<li><a href="w_mymap.jsp">매장안내</a></li>
				</ul>
			</nav>


		</div>
	</div>

	<!-- Main -->
	<div id="main" class="wrapper style1">
		<div class="container">
			<!-- Content -->
			<div id="content" class="8u skel-cell-important">
				<form id="frm_login" method="post" name="frm_register">
					<div class="login_form">
						<span>아이디</span><br>
						 <input type="text" id="lId" name="lId" placeholder="아이디">
						<div id="checkId"></div>
						<br> <span>비밀번호</span> <br> 
						<input type="password" id="lPwd" name="lPwd" placeholder="비밀번호"><br> 
						<br><br>
						<button id="login" type="button">로그인</button><br /> 
					</div>
				</form>

			</div>
		</div>
	</div>
	<!-- Footer -->
	<div id="footer">
		<div class="container">

			<!-- Lists -->
			<div class="row">
				<div class="8u"></div>
				<div class="4u"></div>
			</div>

			<!-- Copyright -->
			<div class="copyright">
				<span>주식회사 :꼬치예전</span> <span>대표자 :원필연 </span> <span>전화번호
					:010-9413-5834</span> <br /> <span>이메일 :wkymonk@gmail.com</span> <span>사업자
					등록번호 :217-18-15486</span> <span>서울 중랑구 면목로 454 1층(서울 중랑구 면목동 91-65)</span>
			</div>
			<script>fd.func()</script>
		</div>
	</div>
</body>
</html>