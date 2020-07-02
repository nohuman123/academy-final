<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta http-equiv="x-ua-compatible" content="ie=edge">
<title>News HTML-5 Template </title>
<meta name="description" content="">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="shortcut icon" type="image/x-icon" href="./img/favicon.ico">

<!-- CSS here -->
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
<link rel="stylesheet" href="./css/newsTemp.css">

<!-- js -->
<script src="./js/jquery-3.4.1.js"></script>
<script src="./js/news.js"></script>
</head>
<body>
    <header>
        <!-- Header Start -->
       <div class="header-area">
            <div class="main-header ">
                <div class="header-mid d-none d-md-block">
                   <div class="container">
                        <div class="row d-flex align-items-center">
                            <!-- Logo -->
                            <div class="col-xl-3 col-lg-3 col-md-3">
                                <div class="logo">
                                    <a href="../index.jsp"><img src="../main_lib/images/root.png" alt="" style="height:50px;">logo</a>
                                </div>
                            </div>
                        </div>
                   </div>
                </div>
               <div class="header-bottom header-sticky">
                    <div class="container">
                        <div class="row align-items-center">
                            <div class="col-xl-10 col-lg-10 col-md-12 header-flex">
                                <!-- sticky -->
                                    <div class="sticky-logo">
                                        <a href="newsMainT.jsp"><!-- <img src="./img/logo/logo.png" alt=""> --></a>
                                    </div>
                                <!-- Main-menu -->
                                <div class="main-menu d-none d-md-block">
                                    <nav>                  
                                        <ul id="navigation">    
                                            <li><a href="newsMainT.jsp">홈</a></li>
                                            <li><a href="categori.html">사회</a></li>
                                            <li><a href="about.html">정치</a></li>
                                            <li><a href="latest_news.html">경제</a></li>
                                            <li><a href="contact.html">국제</a></li>
                                            <li><a href="contact.html">문화</a></li>
                                            <li><a href="contact.html">IT</a></li>
                                        </ul>
                                    </nav>
                                </div>
                            </div>             
                            <div class="col-xl-2 col-lg-2 col-md-4">
                                <div class="header-right-btn f-right d-none d-lg-block">
                                    <i class="fas fa-search special-tag"></i>
                                    <img src="./img/icon/search_icon.png" onclick="news_search()" style="width:23px; height: 25px;">
                                    <div class="search-box">
                                        <form method="post" id="frm_news_search">
                                            <input type="text" name="searchText" class="searchText" placeholder="Search" value="${p.findStr}">
                                            <input type="hidden" name="nowPage" class="nowPage"/>
                                        </form>
                                    </div>
                                </div>
                            </div>
                            <!-- Mobile Menu -->
                            <div class="col-12">
                                <div class="mobile_menu d-block d-md-none"></div>
                            </div>
                        </div>
                    </div>
               </div>
            </div>
       </div>
        <!-- Header End -->
    </header>
    
    <main>
    <form id="frm_search_s" method="post">
    	<input type="hidden" name="nSerial" class="nSerial"/>
    </form>
    <div class="container" style="margin-top: 10px;">
    	<div class="row">
    		<div class="search_top">
	    		<h3 class="widget_title">검색 결과</h3>
				<div class="section-top-border">
					<div class="row">
						<c:forEach items="${vo}" var="i" varStatus="ii">
							<div class="col-md-3 se_do">
								<c:forEach begin="${ii.index}" end="${ii.index}" items="${vo2}" var="pho">
								<c:set var="flag" value="${pho.flag }"/>
									<img src="./img/newsImages/${pho.pName}" alt="" class="img-fluid">
								</c:forEach>
							</div>
							<div class="col-md-9 mt-sm-20">
								<div class="search_domain">
									<span class="info_view">
										<a href="#" onclick="news_detail4(${ii.index})" class="search_value">${i.nTitle}</a>
										<fmt:formatDate value="${i.nDate}" pattern="yyyy-MM-dd" var="fmtDate"/>
										<span class="txt_info_se">${fmtDate} |</span>
										<span class="txt_info_se">${i.nCategory} |</span>
										<span class="txt_info_se">${i.nCompany}</span>
										<input type="hidden" class="serial${ii.index}" value="${i.nSerial}"/>
									</span>
									<c:choose>
										<c:when test="${flag eq 0}">
											<p>
												${i.nContent}
											</p>
										</c:when>
										<c:otherwise>
											<p>
												<c:out value='${i.nContent.replaceAll("\\\<.*?\\\>","")}' />
											</p>
										</c:otherwise>
									</c:choose>
								</div>
							</div>
						</c:forEach>						
					</div>
				</div>
	    	</div>
	    	
    	</div>
    </div>
    
    	<!--Start pagination -->
	<div class="pagination-area pb-45 text-center">
		<div class="container">
			<div class="row">
				<div class="col-xl-12">
					<div class="single-wrap d-flex justify-content-center">
						<nav aria-label="Page navigation example">
							<ul class="pagination justify-content-start">
								<c:if test="${p.startPage>p.blockSize }">
									<li class="page-item"><a class="page-link" href="#" onclick="news_search_paging(${p.startPage-1})"><img src="./img/news/previous.png" alt=""></a></li>
								</c:if>
								
								<c:forEach var="i" begin="${p.startPage}" end="${p.endPage}" varStatus="ii">
									<li class="page-item ${(i==p.nowPage)?'active':''}"><a class="page-link" href="#" onclick="news_search_paging(${i},${ii.index})">${i}</a></li>
								</c:forEach>
								
								<c:if test="${p.endPage<p.totPage}">
									<li class="page-item"><a class="page-link" href="#" onclick="news_search_paging(${p.endPage+1})"><img src="./img/news/next.png" alt=""></a></li>
								</c:if>
							</ul>
						</nav>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- End pagination  --> 
    
    
    
    </main>
    
        
   <footer>
       <!-- footer-bottom aera -->
       <div class="footer-bottom-area">
           <div class="container">
               <div class="footer-border">
                    <div class="row d-flex align-items-center justify-content-between">
                        <div class="col-lg-6">
                            <div class="footer-copy-right">
                                <p><!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
  Copyright &copy;<script>document.write(new Date().getFullYear());</script> All rights reserved | This template is made with <i class="ti-heart" aria-hidden="true"></i> by <a href="https://colorlib.com" target="_blank">Colorlib</a>
  <!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. --></p>
                            </div>
                        </div>
                        <div class="col-lg-6">
                            <div class="footer-menu f-right">
                                <ul>                             
                                    <li><a href="#">Terms of use</a></li>
                                    <li><a href="#">Privacy Policy</a></li>
                                    <li><a href="#">Contact</a></li>
                                </ul>
                            </div>
                        </div>
                    </div>
               </div>
           </div>
       </div>
       <!-- Footer End-->
   </footer>
   
<!-- JS here -->
<!-- All JS Custom Plugins Link Here here -->
      <script src="./js/vendor/modernizr-3.5.0.min.js"></script>
<!-- Jquery, Popper, Bootstrap -->
	<script src="./js/vendor/jquery-1.12.4.min.js"></script>
      <script src="./js/popper.min.js"></script>
      <script src="./js/bootstrap.min.js"></script>
   <!-- Jquery Mobile Menu -->
      <script src="./js/jquery.slicknav.min.js"></script>

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
	<script src="././js/jquery.sticky.js"></script>
      
      <!-- contact js -->
      <script src="./js/contact.js"></script>
      <script src="./js/jquery.form.js"></script>
      <script src="./js/jquery.validate.min.js"></script>
      <script src="./js/mail-script.js"></script>
      <script src="./js/jquery.ajaxchimp.min.js"></script>
      
<!-- Jquery Plugins, main Jquery -->	
      <script src="./js/plugins.js"></script>
      <script src="./js/main.js"></script>
<script>
	news()
</script>      
</body>
</html>