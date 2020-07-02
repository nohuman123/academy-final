<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>   
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %> 
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="./css/bootstrap.min.css">
<link rel="stylesheet" href="./css/owl.carousel.min.css">
<link rel="stylesheet" href="./css/ticker-style.css">
<link rel="stylesheet" href="./css/flaticon.css">
<link rel="stylesheet" href="./css/slicknav.css">
<link rel="stylesheet" href="./css/animate.min.css">
<link rel="stylesheet" href="./css/magnific-popup.css">
<link rel="stylesheet" href="./css/fontawesome-all.min.css">
<link rel="stylesheet" href="./css/themify-icons.css">
<link rel="stylesheet" href="./css/slick.css">
<link rel="stylesheet" href="./css/nice-select.css">
<link rel="stylesheet" href="./css/style.css">
<link rel="stylesheet" href="./css/responsive.css">
<link rel="stylesheet" href="./css/newsTemp.css">
</head>
<body>
    <!--   Weekly2-News start -->
	<div class="weekly2-news-area  weekly2-pading gray-bg">
        <div class="container">
            <div class="weekly2-wrapper">
                <!-- section Tittle -->
                <div class="row">
                    <div class="col-lg-12 autoplay">
                        <div class="section-tittle mb-30">
                            <h3>많이 본 뉴스</h3>
                        </div>
                    </div>
                </div>
                <div class="row">
                    <div class="col-12">
                        <div class="weekly2-news-active dot-style d-flex dot-style">
                        	<c:forEach var="i" items="${vo3}" varStatus="ii">
                        	<fmt:formatDate value="${i.nDate}" var="dateFmt" pattern="yyyy-MM-dd"/>
                        	<input type="hidden" value="${i.nSerial}" class="serial2${ii.index}">
	                            <div class="weekly2-single">
	                                <div class="weekly2-img">
	                                	<c:forEach var="pho" items="${i.photos}">
	                                    	<img src="./img/newsImages/${pho.pName}" alt="">
	                                    </c:forEach>
	                                </div>
	                                <div class="weekly2-caption">
	                                    <span class="color1">${i.nCategory}</span>
	                                    <p>${dateFmt}</p>
	                                    <h4><a href="#" onclick="news_detail2(${ii.index})">${i.nTitle}</a></h4>
	                                </div>
	                            </div>
                            </c:forEach> 
                        </div>
                    </div>
                </div>
            </div>
        </div>
	</div>        
    <!-- End Weekly-News -->
<!-- JS here -->
<!-- All JS Custom Plugins Link Here here -->
      <script src="./js/vendor/modernizr-3.5.0.min.js"></script>
<!-- Jquery, Popper, Bootstrap -->
	  <script src="./js/vendor/jquery-1.12.4.min.js"></script>
      <script src="./js/popper.min.js"></script>
      <script src="./js/bootstrap.min.js"></script>
   <!-- Jquery Mobile Menu -->

<!-- Jquery Slick , Owl-Carousel Plugins -->
      <script src="./js/owl.carousel.min.js"></script>
      <script src="./js/slick.min.js"></script>
      <!-- Date Picker -->
      <script src="./js/gijgo.min.js"></script>
<!-- One Page, Animated-HeadLin -->
      <script src="./js/wow.min.js"></script>
	  <script src="./js/animated.headline.js"></script>
      <script src="./js/jquery.magnific-popup.js"></script>

      <!-- Breaking New Pluging -->
      <script src="./js/jquery.ticker.js"></script>
      <script src="./js/site.js"></script>

<!-- Scrollup, nice-select, sticky -->
      <script src="./js/jquery.scrollUp.min.js"></script>
      <script src="./js/jquery.nice-select.min.js"></script>
	  <script src="./js/jquery.sticky.js"></script>
      
      <!-- contact js -->
      <script src="./js/contact.js"></script>
      <script src="./js/jquery.form.js"></script>
      <script src="./js/jquery.validate.min.js"></script>
      <script src="./js/mail-script.js"></script>
      <script src="./js/jquery.ajaxchimp.min.js"></script>
      
<!-- Jquery Plugins, main Jquery -->	
      <script src="./js/plugins.js"></script>
</body>
</html>