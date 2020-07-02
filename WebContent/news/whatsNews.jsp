<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="./js/jquery-3.4.1.js"></script>
<script src="./js/news.js"></script>
</head>
<body>
   <!-- Whats New Start -->
    <section class="whats-news-area pt-50 pb-20">
        <div class="container">
            <div class="row">
            <div class="col-lg-8">
                <div class="row d-flex justify-content-between">
                    <div class="col-lg-3 col-md-3">
                        <div class="section-tittle mb-30">
                            <h3>카테고리별 <br/>주요뉴스</h3>
                        </div>
                    </div>
                    <div class="col-lg-9 col-md-9">
                        <div class="properties__button">
                            <!--Nav Button  -->                                            
                            <nav>                                                                     
                                <div class="nav nav-tabs" id="nav-tab" role="tablist">
                                    <a onclick="cate_all('n1');" class="nav-item nav-link n1 active" id="nav-home-tab" data-toggle="tab" href="#nav-home" role="tab" aria-controls="nav-home" aria-selected="true">모두</a>
                                    <a onclick="cate_detail('사회', 'n2');" class="nav-item nav-link n2" id="nav-profile-tab" data-toggle="tab" href="#nav-profile" role="tab" aria-controls="nav-profile" aria-selected="false">사회</a>
                                    <a onclick="cate_detail('경제', 'n3');" class="nav-item nav-link n3" id="nav-contact-tab" data-toggle="tab" href="#nav-contact" role="tab" aria-controls="nav-contact" aria-selected="false">경제</a>
                                    <a onclick="cate_detail('스포츠', 'n4');" class="nav-item nav-link n4" id="nav-last-tab" data-toggle="tab" href="#nav-last" role="tab" aria-controls="nav-contact" aria-selected="false">스포츠</a>
                                    <a onclick="cate_detail('IT', 'n5');" class="nav-item nav-link n5" id="nav-Sports" data-toggle="tab" href="#nav-nav-Sport" role="tab" aria-controls="nav-contact" aria-selected="false">IT</a>
                                    <a onclick="cate_detail('문화', 'n6');" class="nav-item nav-link n6" id="nav-technology" data-toggle="tab" href="#nav-techno" role="tab" aria-controls="nav-contact" aria-selected="false">문화</a>
                                </div>
                            </nav>
                            <!--End Nav Button  -->
                        </div>
                    </div>
                </div>
                <div class="row">
                    <div class="col-12">
                        <!-- Nav Card -->
                        <div class="tab-content" id="nav-tabContent">
                            <!-- card one -->
                            <div class="tab-pane fade show active" id="nav-home" role="tabpanel" aria-labelledby="nav-home-tab">           
                                <div class="whats-news-caption">
                                    <div class="row">
                                    	<c:forEach begin="0" end="3" var="i" items="${vo}" varStatus="ii">
                                    	<input type="hidden" value="${i.nSerial}" class="serial3${ii.index}">
	                                        <div class="col-lg-6 col-md-6">
	                                            <div class="single-what-news mb-100">
	                                                <div class="what-img">
	                                                	<c:forEach begin="0" end="3" var="pho" items="${i.photos}">
	                                                    	<img src="./img/newsImages/${pho.pName}" alt="">
	                                                    </c:forEach>
	                                                </div>
	                                                <div class="what-cap">
	                                                    <span class="color1">${i.nCategory}</span>
	                                                    <h4><a href="#" onclick="news_detail3(${ii.index})">${i.nTitle}</a></h4>
	                                                </div>
	                                            </div>
                                        	</div>
                                        </c:forEach>
                                    </div>
                                </div>
                            </div>
                            <!-- Card two -->
                            <div class="tab-pane fade nh2" id="nav-profile" role="tabpanel" aria-labelledby="nav-profile-tab">
                                <div class="whats-news-caption">
                                    <div class="row">
                                    	<c:forEach begin="0" end="3" var="i" items="${vo2}" varStatus="ii">
                                    	<input type="hidden" value="${i.nSerial}" class="serial3${ii.index}">
	                                        <div class="col-lg-6 col-md-6">
	                                            <div class="single-what-news mb-100">
	                                                <div class="what-img">
	                                                	<c:forEach begin="0" end="3" var="pho" items="${i.photos}">
	                                                    	<img src="./img/newsImages/${pho.pName}" alt="">
	                                                    </c:forEach>
	                                                </div>
	                                                <div class="what-cap">
	                                                    <span class="color1">${i.nCategory}</span>
	                                                    <h4><a href="#" onclick="news_detail3(${ii.index})">${i.nTitle}</a></h4>
	                                                </div>
	                                            </div>
	                                        </div>
                                        </c:forEach>
                                    </div>
                                </div>
                            </div>
                            <!-- Card three -->
                            <div class="tab-pane fade nh3" id="nav-contact" role="tabpanel" aria-labelledby="nav-contact-tab">
                                <div class="whats-news-caption">
                                    <div class="row">
                                    	<c:forEach begin="0" end="3" var="i" items="${vo2}" varStatus="ii">
                                    	<input type="hidden" value="${i.nSerial}" class="serial3${ii.index}">
	                                        <div class="col-lg-6 col-md-6">
	                                            <div class="single-what-news mb-100">
	                                                <div class="what-img">
	                                                	<c:forEach begin="0" end="3" var="pho" items="${i.photos}">
	                                                    	<img src="./img/newsImages/${pho.pName}" alt="">
	                                                    </c:forEach>
	                                                </div>
	                                                <div class="what-cap">
	                                                    <span class="color1">${i.nCategory }</span>
	                                                    <h4><a href="#" onclick="news_detail3(${ii.index})">${i.nTitle}</a></h4>
	                                                </div>
	                                            </div>
	                                        </div>
                                        </c:forEach>
                                    </div>
                                </div>
                            </div>
                            <!-- card fure -->
                            <div class="tab-pane fade nh4" id="nav-last" role="tabpanel" aria-labelledby="nav-last-tab">
                                <div class="whats-news-caption">
                                    <div class="row">
                                    	<c:forEach begin="0" end="3" var="i" items="${vo2}" varStatus="ii">
                                    	<input type="hidden" value="${i.nSerial}" class="serial3${ii.index}">
	                                        <div class="col-lg-6 col-md-6">
	                                            <div class="single-what-news mb-100">
	                                                <div class="what-img">
	                                                	<c:forEach begin="0" end="3" var="pho" items="${i.photos}">
	                                                    	<img src="./img/newsImages/${pho.pName}" alt="">
	                                                    </c:forEach>
	                                                </div>
	                                                <div class="what-cap">
	                                                    <span class="color1">${i.nCategory }</span>
	                                                    <h4><a href="#" onclick="news_detail3(${ii.index})">${i.nTitle }</a></h4>
	                                                </div>
	                                            </div>
	                                        </div>
                                        </c:forEach>
                                    </div>
                                </div>
                            </div>
                            <!-- card Five -->
                            <div class="tab-pane fade nh5" id="nav-nav-Sport" role="tabpanel" aria-labelledby="nav-Sports">
                                <div class="whats-news-caption">
                                    <div class="row">
                                    	<c:forEach begin="0" end="3" var="i" items="${vo2}" varStatus="ii">
                                    	<input type="hidden" value="${i.nSerial}" class="serial3${ii.index}">
	                                        <div class="col-lg-6 col-md-6">
	                                            <div class="single-what-news mb-100">
	                                                <div class="what-img">
	                                                	<c:forEach begin="0" end="3" var="pho" items="${i.photos}">
	                                                    	<img src="./img/newsImages/${pho.pName}" alt="">
	                                                    </c:forEach>
	                                                </div>
	                                                <div class="what-cap">
	                                                    <span class="color1">${i.nCategory }</span>
	                                                    <h4><a href="#" onclick="news_detail3(${ii.index})">${i.nTitle }</a></h4>
	                                                </div>
	                                            </div>
	                                        </div>
                                        </c:forEach>
                                    </div>
                                </div>
                            </div>
                            <!-- card Six -->
                            <div class="tab-pane fade nh6" id="nav-techno" role="tabpanel" aria-labelledby="nav-technology">
                                <div class="whats-news-caption">
                                    <div class="row">
                                    	<c:forEach begin="0" end="3" var="i" items="${vo2}" varStatus="ii">
                                    	<input type="hidden" value="${i.nSerial}" class="serial3${ii.index}">
	                                        <div class="col-lg-6 col-md-6">
	                                            <div class="single-what-news mb-100">
	                                                <div class="what-img">
	                                                	<c:forEach begin="0" end="3" var="pho" items="${i.photos}">
	                                                    	<img src="./img/newsImages/${pho.pName}" alt="">
	                                                    </c:forEach>
	                                                </div>
	                                                <div class="what-cap">
	                                                    <span class="color1">${i.nCategory }</span>
	                                                    <h4><a href="#" onclick="news_detail3(${ii.index})">${i.nTitle }</a></h4>
	                                                </div>
	                                            </div>
	                                        </div>
                                        </c:forEach>
                                    </div>
                                </div>
                            </div>
                        </div>
                    <!-- End Nav Card -->
                    </div>
                </div>
            </div>
            <div class="col-lg-4">
                <!-- New Poster -->
                <div class="news-poster d-none d-lg-block">
                    <img src="./img/news/news_card.jpg" alt="">
                </div>
            </div>
            </div>
        </div>
    </section>
    <!-- Whats New End -->

</body>
</html>