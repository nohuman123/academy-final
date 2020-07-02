<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<form id="c_blog_frm" name="c_blog_frm" method="post">
	<input type="hidden" id="c_mId" name="c_mId">
	<input type="hidden" id="c_brdNo" name="c_brdNo">
</form>
<form id="h_shop_frm" name="h_shop_frm" method="post">
	<input type="hidden" id="item_id" name="item_id">
	<input type="hidden" name="item_category" id="item_category"/>
</form>
<form id="s_news_frm" method="post">
	<input type="hidden" class="s_nserial" name="s_nserial">
	<input type="hidden" class="mId" name="mId" value="${sessionScope.mId}"/>
</form>
<%
	String mId = "";
	if(session.getAttribute("mId") != null){
 		mId = (String)session.getAttribute("mId");	
	}
%>

<form id="frm_top">
	<input type="hidden" name="mId" value="<%=mId%>">
</form>
<div class="container" id="mainContent">
    <div class="row">
    
	    <div class="col-sm-12 col-md-4" id="main_s">
	    
			<div class="col-xs-12" id="loginDiv">
					<c:if test="${empty mId}">
						<span id="logintop">여태까지 아무도 뚫지못한 철통보안</span><br><br>
						<a href="${pageContext.request.contextPath}/login.jsp" style="color:black;"><button id="loginBtn">로그인</button></a>
					</c:if>
					<c:if test="${!empty mId}">
						
							
						<span><%=mId %>님</span> | <span onclick="myPage()">내 정보  </span> 
						<button type="button" onclick="logout()" id="logout_s">로그아웃</button>
						<br>
						<span id="email"></span><br>

						<div class="col-sm-3"><span>알림</span></div>	
						<div class="col-sm-3"><span>구독</span></div>	
						<div class="col-sm-3"><span>쇼핑</span></div>	
						<div class="col-sm-3"><span>블로그</span></div>
					</c:if>
			</div>
			<div class="col-xs-12" id="main_shop_frm">
				<div id="shop">
					<div class="col-xs-3" id="main_shop_title">
						<h3>shop</h3>
					</div>
					<div class="row" id="shop_earringList">
						<div class="page-header">
					  		<h4>귀걸이</h4>
						</div>
						<c:forEach var="i" items="${earringList}" begin="0" end="1">
							<div id="main_shop_earringList" onclick="main.shopView('${i.item_id}')">
								<div class="col-xs-6">
									<div>
										<img src="${pageContext.request.contextPath}/shop/image/${i.item_main_photo}" class="img-rounded" id="shop_earring_img">
									</div>
									<div id="shop_earring_information">
										<div class="earring_name">${i.item_name}</div>
										<div class="earring_price">
											<fmt:formatNumber value="${i.item_price}" pattern="#,###" />
										</div>
									</div>
								</div>
							</div>
						</c:forEach>
					</div>
					<div class="row" id="shop_necklaceList">
						<div class="page-header">
					  		<h4>목걸이</h4>
						</div>
						<c:forEach var="i" items="${necklaceList}" begin="0" end="1">
							<div id="main_shop_necklaceList" onclick="main.shopView('${i.item_id}')">
								<div class="col-xs-6">
									<div>
										<img src="${pageContext.request.contextPath}/shop/image/${i.item_main_photo}" class="img-rounded" id="shop_necklace_img">
									</div>
									<div id="shop_necklace_information">
										<div class="necklace_name">${i.item_name}</div>
										<div class="necklace_price">
											<fmt:formatNumber value="${i.item_price}" pattern="#,###" />
										</div>
									</div>
								</div>
							</div>
						</c:forEach>
					</div>
					<div class="row" id="shop_ringList">
						<div class="page-header">
					  		<h4>반지</h4>
						</div>
						<c:forEach var="i" items="${ringList}" begin="0" end="1">
							<div id="main_shop_ringList" onclick="main.shopView('${i.item_id}')">
								<div class="col-xs-6">
									<div>
										<img src="${pageContext.request.contextPath}/shop/image/${i.item_main_photo}" class="img-rounded" id="shop_ring_img">
									</div>
									<div id="shop_ring_information">
										<div class="ring_name">${i.item_name}</div>
										<div class="ring_price">
											<fmt:formatNumber value="${i.item_price}" pattern="#,###" />
										</div>
									</div>
								</div>
							</div>
						</c:forEach>
					</div>
					<div class="row" id="shop_braceletList">
						<div class="page-header">
					  		<h4>팔찌</h4>
						</div>
						<c:forEach var="i" items="${braceletList}" begin="0" end="1">
							<div id="main_shop_braceletList" onclick="main.shopView('${i.item_id}')">
								<div class="col-xs-6">
									<div>
										<img src="${pageContext.request.contextPath}/shop/image/${i.item_main_photo}" class="img-rounded" id="shop_bracelet_img">
									</div>
									<div id="shop_bracelet_information">
										<div class="bracelet_name">${i.item_name}</div>
										<div class="bracelet_price">
											<fmt:formatNumber value="${i.item_price}" pattern="#,###" />
										</div>
									</div>
								</div>
							</div>
						</c:forEach>
					</div>
				</div>
			</div>					
		</div>
		
        <div class="col-sm-12 col-md-8" id="main_c">
        
        	<div class="col-xs-12" id="promotion">
				 <a href="${pageContext.request.contextPath}/wpy/w_index.jsp"><img  src="${pageContext.request.contextPath}/wpy/w_images/foodB.jpg"></a> 
			</div>
			
			<div class="col-xs-12 ">
				<div id="news" class="list">
	        		<div class="listItem">
	        			<div class="row">
	        				<c:forEach begin="0" end="3" var="i" items="${newsInfo}" varStatus="ii">
	        				<input type="hidden" value="${i.nSerial}" class="serial${ii.index}"> 
	        				<div onclick="news_detail(${ii.index})" class="col-xs-4 col-md-3">
	                            <div class="single-bottom mb-35">
	                                <div class="trend-bottom-img mb-30">
	                                	<c:forEach begin="${ii.index}" end="${ii.index}" var="pho" items="${newsPhoto}">
	                                    	<img src="./news/img/newsImages/${pho.pName}" alt="" style="height:120px;">
                                    	</c:forEach>
	                                </div>
	                                <div class="trend-bottom-cap indexNews_s">
	                                    <span class="color1 indexNewsT">${i.nCompany}</span>
	                                    <h5>${i.nTitle}</h5>
	                                </div>
	                            </div>
	        				</div>	
	        				</c:forEach> 	        					        				        				
	        			</div>
	        		</div>
        		</div>
			</div>
			
			<div class="col-xs-12 blog">
				<div id="blog" class="list">
					<h3>라이프</h3>
	        		<c:forEach var="bList" items="${blogLife}">
		        		<div class="listItem" onclick="main.brdView('${bList.mId}', ${bList.brdNo})">
		        			<div class="row">
		        				<div class="col-xs-4 col-md-3">
		        					<c:choose>
		        						<c:when test="${empty bList.brdHeader}">
		        							<img src="${pageContext.request.contextPath}/blog/blog_image/life.jpg" class="img-rounded">
		        						</c:when>
		        						<c:otherwise>
				        					<img src="${pageContext.request.contextPath}/blog/blog_image/${bList.brdHeader}" class="img-rounded">
			        					</c:otherwise>
		        					</c:choose>
		        				</div>
	       						<div class="col-xs-8 col-md-9">
				        			<div class="subject blog">${bList.subject}</div>
				        			<div class="content blog">${bList.content}</div>
				        			<time class="date" datetime="${bList.brdDate}"></time>
	       						</div>
       						</div>
		        		</div>
	        		</c:forEach>
	        		<h3 >여행.맛집</h3>
	        		<c:forEach var="bList" items="${blogTravel}">
		        		<div class="listItem" onclick="main.brdView('${bList.mId}', ${bList.brdNo})">
		        			<div class="row">
		        				<div class="col-xs-4 col-md-3">
		        					<c:choose>
		        						<c:when test="${empty bList.brdHeader}">
		        							<img src="${pageContext.request.contextPath}/blog/blog_image/life.jpg" class="img-rounded">
		        						</c:when>
		        						<c:otherwise>
				        					<img src="${pageContext.request.contextPath}/blog/blog_image/${bList.brdHeader}" class="img-rounded">
			        					</c:otherwise>
		        					</c:choose>
		        				</div>
	       						<div class="col-xs-8 col-md-9">
				        			<div class="subject blog">${bList.subject}</div>
				        			<div class="content blog">${bList.content}</div>
				        			<time class="date" datetime="${bList.brdDate}"></time>
	       						</div>
       						</div>
		        		</div>
	        		</c:forEach>
	        		<h3>IT</h3>
	        		<c:forEach var="bList" items="${blogIt}">
		        		<div class="listItem" onclick="main.brdView('${bList.mId}', ${bList.brdNo})">
		        			<div class="row">
		        				<div class="col-xs-4 col-md-3">
		        					<c:choose>
		        						<c:when test="${empty bList.brdHeader}">
		        							<img src="${pageContext.request.contextPath}/blog/blog_image/life.jpg" class="img-rounded">
		        						</c:when>
		        						<c:otherwise>
				        					<img src="${pageContext.request.contextPath}/blog/blog_image/${bList.brdHeader}" class="img-rounded">
			        					</c:otherwise>
		        					</c:choose>
		        				</div>
	       						<div class="col-xs-8 col-md-9">
				        			<div class="subject blog">${bList.subject}</div>
				        			<div class="content blog">${bList.content}</div>
				        			<time class="date" datetime="${bList.brdDate}"></time>
	       						</div>
       						</div>
		        		</div>
	        		</c:forEach>
        		</div>
			</div>
		</div>
	</div>
</div>
<script>
	$(".content.blog p").each(function(){
		$(this).closest(".content.blog").append($(this).text());
	    $(this).remove();
		$(".content.blog br").remove();
	});
	$(".content.blog div").each(function(){
		if (!$(".content.blog div").text().trim().length) {
	    	$(".content.blog div").remove();
	    }
	});
	$(".content.blog img").each(function(){
		$(this).remove();
	});

	//블로그 게시물 시간
	$(document).ready(function(){
		$("time.date").timeago();
	});
</script>