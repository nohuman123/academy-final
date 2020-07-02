<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
    <form id="tes_s" class="tes_s" method="post">
    	<input type="hidden" name="cate_name" class='cate_name' /> 
    	<input type="hidden" name="nSerial" class="nSerial" />
    	<input type="hidden" name="mId" value="${sessionScope.mId}"/>
	</form>
    <!-- Trending Area Start -->
    <div class="trending-area fix">
        <div class="container">
            <div class="trending-main">
                <div class="row">
                    <div class="col-lg-8">
                        <!-- Trending Top -->
                        <c:forEach begin="0" end="0" var="i" items="${list}" varStatus="ii">
                        <input type="hidden" value="${i.nSerial}" class="serial${ii.index}">
	                        <div class="trending-top mb-30">
	                            <div class="trend-top-img">
									<c:forEach begin="0" end="0" var="pho" items="${photo}">	                            
	                                	<img src="./img/newsImages/${pho.pName}" alt="">
	                                </c:forEach>
	                                <div class="trend-top-cap">
	                                    <span>${i.nCompany}</span>
	                                    <h2><a href="#" onclick="news_detail(${ii.index})">${i.nTitle}</a></h2>
	                                </div>
	                            </div>
	                        </div>
                        </c:forEach>
                        <!-- Trending Bottom -->
                        <div class="trending-bottom">
                            <div class="row">
                            	<c:forEach begin="1" end="3" var="i" items="${list}" varStatus="ii">
                            	<input type="hidden" value="${i.nSerial}" class="serial${ii.index}"> 
	                                <div class="col-lg-4">
		                                <div class="single-bottom mb-35">
		                                    <div class="trend-bottom-img mb-30">
		                                    	<c:forEach begin="${ii.index}" end="${ii.index}" var="pho" items="${photo}">
		                                        	<img src="./img/newsImages/${pho.pName}" alt="" style="height:120px;">
		                                        </c:forEach>
		                                    </div>
		                                    <div class="trend-bottom-cap">
		                                        <span class="color1">${i.nCompany}</span>
		                                        <h4><a href="#" onclick="news_detail(${ii.index})">${i.nTitle}</a></h4>
		                                    </div>
		                                </div>
	                                </div>
                                </c:forEach>
                            </div>
                        </div>
                    </div>
                    <!-- Riht content -->
                    <div class="col-lg-4">
                    	<c:forEach begin="4" end="8" var="i" items="${list}" varStatus="ii">
                    	<input type="hidden" value="${i.nSerial}" class="serial${ii.index}"> 
	                        <div class="trand-right-single d-flex">
	                            <div class="trand-right-img">
	                            	<c:forEach begin="${ii.index}" end="${ii.index}" var="pho" items="${photo}">
	                                	<img src="./img/newsImages/${pho.pName}" alt="">	
	                                </c:forEach>
	                            </div>
	                            <div class="trand-right-cap">
	                                <span class="color1">${i.nCompany}</span>
	                                <h4><a href="#" onclick="news_detail(${ii.index})">${i.nTitle}</a></h4>
	                            </div>
	                        </div>
                        </c:forEach>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- Trending Area End -->
</body>
</html>