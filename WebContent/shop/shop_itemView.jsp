<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%
	String mId = "";
	if(session.getAttribute("mId") != null){
 		mId = (String)session.getAttribute("mId");	
	}
%>
<div id="shop_itemView">
	<form name="shop_frm" id="shop_frm" method="post">
		<div class="container-fluid">
		    <div class="row">
				<div class="col-xs-12">
				<input type="text" name="mId" id="mId" value="<%=mId%>"/>
				<input type="hidden" name="item_id" id="item_id" value="${vo.item_id}" />
					<div class="row">
						<div class="col-xs-6 itemView_photo">
							<div id="carousel-example-generic" class="carousel slide" data-ride="carousel">		
							  	<!-- Wrapper for slides -->
							  	<div class="carousel-inner" role="listbox">
							  		<c:forEach var="i" items="${photo}" begin="0" end="0">
							    		<div class="item active">
							      			<img src="./image/${i.item_main_photo}" alt="..." id="itemView_photo_content">
							    		</div>
							  		</c:forEach>
							    	<c:forEach var="i" items="${photo}" begin="1">
								    	<div class="item">
								     		<img src="./image/${i.item_photo}" alt="..." id="itemView_photo_content">
								    	</div>
									</c:forEach>
							  	</div>					
							  	<!-- Controls -->
							  	<a class="left carousel-control" href="#carousel-example-generic" role="button" data-slide="prev">
							    	<span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
							    	<span class="sr-only">Previous</span>
							  	</a>
							  	<a class="right carousel-control" href="#carousel-example-generic" role="button" data-slide="next">
							    	<span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
							    	<span class="sr-only">Next</span>
								</a>
							</div>
						</div>
						<div class="col-xs-6 itemView_information">
							<div class="col-xs-12">
								<div class="row itemView_name_frm">
									<div class="col-xs-4 itemView_name">
										<span id="itemView_name_title">이름</span>
									</div>
									<div class="col-xs-8 itemView_name_text">
										<span id="itemView_name_contnet">${vo.item_name}</span>
									</div>
								</div>
								<div class="row itemView_price_frm">
									<div class="col-xs-4 itemView_price">
										<span id="itemView_price_title">가격</span>
									</div>
									<div class="col-xs-8 itemView_price_text">
										<span id="itemView_price_content">
											<input type="hidden" id="itemView_price_content_in" value="${vo.item_price}" />
											<fmt:formatNumber value="${vo.item_price}" pattern="#,###" /> 원
										</span>
									</div>
								</div>
								<div class="row itemView_option_frm">
										<div class="col-xs-4 itemView_typeOption">
											<span id="itemView_option_title">option</span>
										</div>
									<div class="col-xs-8 itemView_option_text">
											<!-- Single button -->
										<div class="btn-group">
											<c:forEach var="i" items="${typeOption}">
												<button type="button" class="btn btn-default dropdown-toggle btn_itemView_typeOption" data-toggle="dropdown" aria-expanded="false">
													${i.option_name_values}<span class="caret"></span>
												</button>
											</c:forEach>	
											<ul class="dropdown-menu option_menu" id="btn_itemView_typeOption_menu" role="menu">
												<li><span>필수 옵션</span></li>
												<li class="divider"></li>
												<c:forEach var="i" items="${typeValue}">
													<li><a href="#" onclick="shop.optionValue_click('${i.option_value}')">${i.option_value}</a></li>
												</c:forEach>
											</ul>
										</div>
										<div class="btn-group">
											<c:forEach var="i" items="${colorOption}">
												<button type="button" class="btn btn-default dropdown-toggle btn_itemView_colorOption" data-toggle="dropdown" aria-expanded="false">
													${i.option_name_values}<span class="caret"></span>
												</button>
											</c:forEach>
											<ul class="dropdown-menu option_menu" id="btn_itemView_colorOption_menu" role="menu">
												<li><span>필수 옵션</span></li>
												<li class="divider"></li>
												<c:forEach var="i" items="${colorValue}">
													<li><a href="#" onclick="shop.optionValue_click('${i.option_value}')">${i.option_value}</a></li>
												</c:forEach>
											</ul>
										</div>
										<div class="btn-group">
											<c:forEach var="i" items="${sizeOption}">
												<button type="button" class="btn btn-default dropdown-toggle btn_itemView_sizeOption" data-toggle="dropdown" aria-expanded="false">
													${i.option_name_values}<span class="caret"></span>
												</button>
											</c:forEach>
											<ul class="dropdown-menu option_menu" id="btn_itemView_sizeOption_menu" role="menu">
												<li><span>필수 옵션</span></li>
												<li class="divider"></li>
												<c:forEach var="i" items="${sizeValue}">
													<li><a href="#" onclick="shop.optionValue_click('${i.option_value}')">${i.option_value}</a></li>
												</c:forEach>
											</ul>
										</div>
									</div>
								</div>
								<div class="row select_item_frm">
									<div class="col-xs-8 col-xs-offset-2 select_item">
										<div class="row">
											<ul id="select_item_frm_ul">
											</ul>
										</div>
									</div>
								</div>
								<div class="row select_item_tot_price">
									<div class="col-xs-4 select_item_tot_price_title_frm">
										<span id="select_item_tot_price_title">총 가격</span>
									</div>
									<div class="col-xs-8 select_item_tot_price_text_frm">
										<span id="select_item_tot_price_text"></span>
									</div>
								</div>
								<div class="row itemView_btn_frm">
									<div class="col-xs-4 itemView_btn_payment">
										<button type="button" class="btn btn-default btn-lg btn_itemView_payment">
											<span class="glyphicon glyphicon-credit-card btn_itemView_payment_click" aria-hidden="true">결제하기</span>
										</button>
									</div>
									<div class="col-xs-4 itemView_btn_basket">
										<button type="button" class="btn btn-default btn-lg btn_itemView_basket">
											<span class="glyphicon glyphicon-shopping-cart btn_itemView_basket_click" aria-hidden="true">장바구니</span>
										</button>
									</div>
									<div class="col-xs-4 itemView_btn_like">
										<button type="button" class="btn btn-default btn-lg btn_itemView_like">
											<span class="glyphicon glyphicon-heart-empty" id="btn_itemView_like_click" aria-hidden="true"></span>
										</button>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
		    </div>
		</div>
	</form>
<script>shop.func()</script>
</div>