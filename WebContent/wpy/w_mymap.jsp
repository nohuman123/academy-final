<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
						        <li>
									<a href="w_menu.jsp">브랜드 소개</a>
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
			<div id="main_w" class="wrapper style1">
				<div class="container">
						<!-- Content -->
						<div id="content" class="8u skel-cell-important">		
			              <div class="w_wrap">
						</div>
						   <h4 class="w_tab_sub">매장위치</h4>
						   <article id="w_v" style="width: 100%">
						   	<header>
						     <h1 id="w_title">
						       상봉점
						     </h1>
						   	</header>
						   	<section class="w_v_info"></section>
						   <div class="w_info">
						    <div class="w_imp1">
						     <div id="w_v_image">
						     </div>
						    </div>
						   	<div class="w_imp2">
						   	 <h2 class="w_view_sjw">상봉점</h2>
						   	 <table>
						   	  <tbody>
						   	   <tr>
						   	    <th>
						   	    <img src="./w_images/w_icon_check.png" alt width="32" style="position: relative; top: 9px;">
						   	      오시는길
						   	    </th>
						   	    <td>
						   	     서울 중랑구 면목로 454 1층
						   	    </td>
						   	    </tr>
						   	   <tr>
						   	    <th>
						   	    <img src="./w_images/w_icon_check.png" alt width="32" style="position: relative; top: 9px;">
						   	     전화번호
						   	    </th>
						   	    <td>
						   	     010-9413-5834
						   	    </td>
						   	    </tr>
						   	    <tr>
						   	    <th>
						   	    <img src="./w_images/w_icon_check.png" alt width="32" style="position: relative; top: 9px;">
						   	      매장서비스
						   	    </th>
						   	    <td class="w_ser">
						         <span><img src="./w_images/w_shop_icon1_on.png" alt width="19">예약가능</span>
						         <span><img src="./w_images/w_shop_icon2_on.png" alt width="19">포장가능</span>
						         <span><img src="./w_images/w_shop_icon3_on.png" alt width="19">주차가능</span>
						         <span><img src="./w_images/w_shop_icon4.png" alt width="19">24시간영업</span>   
						   	    </td>
						   	    </tr>
						   	  </tbody>
						   	 </table>
						   	</div>
						   </div>
						   <h2 class="w_view_wpy">찾아 오시는길</h2>
						  
						    <p style="margin-top:-12px">
							    <em class="link">
							        <a href="javascript:void(0);" onclick="window.open('http://fiy.daum.net/fiy/map/CsGeneral.daum', '_blank', 'width=981, height=650')">

							        </a>
							    </em>
							</p>
						  
						  
						  <div id="map" style="width:500px;height:400px;"></div> 
						   
						   </article>
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
<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=34ae832bb8a98e32b2764c69a40d2065"></script>			
			
<script>
var container = document.getElementById('map'); //지도를 담을 영역의 DOM 레퍼런스
var options = { //지도를 생성할 때 필요한 기본 옵션
	center: new kakao.maps.LatLng(37.592379, 127.086777), //지도의 중심좌표.
	level: 1 //지도의 레벨(확대, 축소 정도)
};

var map = new kakao.maps.Map(container, options); //지도 생성 및 객체 리턴

var markerPosition  = new kakao.maps.LatLng(37.592379, 127.086777); 

var marker = new kakao.maps.Marker({
    position: markerPosition
});

marker.setMap(map);

</script>
</body> 
</html>