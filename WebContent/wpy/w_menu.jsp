<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
<head>
<title>No Sidebar - Horizons by TEMPLATED</title>
<meta http-equiv="content-type" content="text/html"; charset="utf-8" />
<meta name="description" content="" />
<meta name="keywords" content="" />
<!--[if lte IE 8]><script src="css/ie/html5shiv.js"></script><![endif]-->
<script src="./js/jquery-3.4.1.js"></script>
<script src="./js/jquery.dropotron.min.js"></script>
<script src="./js/w_brand.js"></script>

<link rel="shortcut icon" href="#">
<link rel="stylesheet" href="./css/skel.css" />
<link rel="stylesheet" href="./css/style.css" />
	</head>
	<body class="no-sidebar1">

		<!-- Header -->
			<div id="header">
				<div class="container">
						
					<!-- Logo -->
						<img src="./w_images/w_mainimage1.png">
					
					<!-- Nav -->
						<nav id="nav">
							<ul>
								<li><a href="w_index.jsp">Home</a></li>
								<li>
									<a href="">브랜드 소개</a>
									<ul>
										<li><a href="w_menu.jsp">전 메뉴</a></li>						
									</ul>
								</li>
								<li><a href="w_founded.jsp">창업문의</a></li>
								<li><a href="w_mymap.jsp">매장안내</a></li>
							</ul>
						</nav>


				</div>
			</div>

		<!-- Main -->
			<div id="w_main" class="w_wrapper w_style1">
				<div class="container">
						<!-- Content -->
						<div id="content" class="8u skel-cell-important">
						<c:if test="${!empty mId}">
						 <input type="button" id="w_btninsert" class='w_buttonmenu' value="신메뉴 입력">
						 </c:if>
				               <h5 class="w_menu_info">
				                 <span class="w_deco">
				                 	메뉴 소개
				                 </span>
				               </h5>
				          
 						 <!-- <form name='frm_food' id='frm_food' method='post'> -->
				          <ul class="w_tabs">
				             <li class="w_active"  rel="tab1" onclick="fd.foodj('전')" >
				              	전	
				             </li>
				             <li  rel="tab2" onclick="fd.foodj('전골')">
				              	전골
				             </li>
				             <li  rel="tab3" onclick="fd.foodj('냉채')">
				              	냉채
				             </li>
				             <li  rel="tab4" onclick="fd.foodj('사이드')">
				              	사이드
				             </li>    
				          </ul>
				        	<div class="w_tab_container">
				        	  
				        	</div>
				         <!-- </form> -->
						</div>
					</div>
				</div>

		<!-- Footer -->
			<div id="footer">
				<div class="container">

					<!-- Lists -->
						<div class="row">
							<div class="8u">
								
							</div>
							<div class="4u">
								
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
						</div>
				</div>
			</div>
<script>fd.func()</script>
	</body>
</html>