<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>꼬치예전</title>
<script src="./js/jquery-3.4.1.js"></script>
<script src="./js/jquery.dropotron.min.js"></script>
<script src="./js/w_brand.js"></script>

<link rel="shortcut icon" href="#">
<link rel="stylesheet" href="./css/skel.css" />
<link rel="stylesheet" href="./css/style.css" />
</head>

<body class="homepage">

		<!-- Header -->
			<div id="header">
				<div class="container">
						
					<!-- 로그인 버튼 -->	
					    <c:if test="${empty mId}">
						<a href="w_login.jsp"><button id="w_btnLogin">로그인</button></a>
						</c:if>
					 	<c:if test="${!empty mId}">
					    <a id="w_btnLogout" href="w_index.jsp">로그아웃</a>
					    </c:if>
					<!-- Logo -->
						<img id="img1" src="./w_images/w_mainimage1.png">
					<!-- Nav -->
						<nav id="nav">
							<ul>
								<li><a href="w_index.jsp">Home</a></li>
								<li>
									<a href="w_menu.jsp">브랜드 소개</a>
									<ul>
										<li><a href="w_menu.jsp">전 메뉴</a></li>						
									</ul>
								</li>
								<li><a href="w_founded.jsp">창업문의</a></li>
								<!--  <li><a href="w_customersupport.jsp">고객문의</a></li>-->
								<li><a href="w_mymap.jsp">매장안내</a></li>
							</ul>
						</nav>


					<!-- Banner -->
						<div id="banner">
							<div class="container">
								<section>
									<header class="major">
										<h2>맛도 양도 많은 전을 먹으러 오세요!</h2>
										<span class="byline"></span>
									</header>
								</section>			
							</div>
						</div>

				</div>
			</div>

		<!-- Featured -->
			<div class="wrapper style2">
				<section class="container">
					<header class="major">
						<h2>여러가지의 메뉴들이 있습니다</h2>
					</header>
					<div class="row no-collapse-1">
						<section class="4u">
							<a href="#" class="image feature"><img src="./w_images/w_cook1.jpg" alt=""></a>
							<p></p>
						</section>
						<section class="4u">
							<a href="#" class="image feature"><img src="./w_images/w_cook2.jpg" alt=""></a>
							<p></p>
						</section>
						<section class="4u">
							<a href="#" class="image feature"><img src="./w_images/w_cook3.jpg" alt=""></a>
							<p></p>
						</section>
	
					</div>
				</section>
			</div>

		<!-- Main -->
		<!-- Footer -->
			<div id="footer">
				<div class="container">

					<!-- Lists -->
						<div class="row">
							<div class="8u">
							   <h2></h2>
							</div>
						</div>

					<!-- Copyright -->
						<div class="copyright">
						      <span>주식회사 :꼬치예전</span>
						      <span>대표자 :원필연 </span>
						      <span>전화번호 :010-9413-5834</span>
						      <br/>		 
						      <span>이메일 :wkymonk@gmail.com</span>
						      <span>사업자 등록번호 :217-18-15486</span>
						      <span>서울 중랑구 면목로 454 1층(서울 중랑구 면목동 91-65)</span>
						      <br/>
						      <a href="../index.jsp" ><img src="./w_images/w_root.png" alt=""></a>      
						</div>
				</div>
			</div>
<script>fd.func()</script>
	</body>
</html>