<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<div id="shop_main">
	<form name="shop_frm" id="shop_frm" method="post">
		<div class="container-fluid">
		    <div class="row">
		        <div class="col-xs-12 shop_main_form">
		        <input type="hidden" name="item_id" id="item_id" />
		        <input type="hidden" name="item_category" id="item_category"/>
		        	<div class="col-xs-10 col-xs-offset-1 shop_main_item1" >
		        		<div>
		        			<div class="row">
								<div class="col-sm-6 col-md-4">
							  		<div class="page-header">
					  					<h2>귀걸이<small><button type="button" onclick="shop.category(0)" class="btn btn-default btn_more">더보기</button></small></h2>
									</div>
							    	<div id="item_thumbnail">
							    		<c:forEach var="i" items="${earringList}" begin="0" end="4">
										    <div class="thumbnail" id="first_item">
										      	<img src="./image/${i.item_main_photo}" alt="..." id="item_photo">  	
										      	<div class="caption" id="item_information">
										      		<div class="col-xs-12">
										        		<h3>${i.item_name}</h3>
										      		</div>
										      		<div class="col-xs-12">
										        		<fmt:formatNumber value="${i.item_price}" pattern="#,###" /> 원
										      		</div>
										      		<div class="col-xs-12">
										        		<p><a href="#" class="btn btn-default btn_detail" onclick="shop.itemView('${i.item_id}')">상세보기</a></p>
										      		</div>
										      	</div>
										    </div>
										</c:forEach>
							  		</div>
							  	</div>
							</div>
		        		</div>
		        	</div>
		        	<div class="col-xs-10 col-xs-offset-1 shop_main_item2" >
		        		<div>
		        			<div class="row">
								<div class="col-sm-6 col-md-4" id="photo">
							  		<div class="page-header">
					  					<h2>목걸이<small><button type="button" onclick="shop.category(1)" class="btn btn-default btn_more">더보기</button></small></h2>
									</div>
									<div id="item_thumbnail">
										<c:forEach var="i" items="${necklaceList}" begin="0" end="4">
										    <div class="thumbnail" id="first_item">
										      	<img src="./image/${i.item_main_photo}" alt="..." id="item_photo">
										      	<div class="caption" id="item_information">
										        	<div class="col-xs-12">
										        		<h3>${i.item_name}</h3>
										        	</div>
										        	<div class="col-xs-12">
										        		<fmt:formatNumber value="${i.item_price}" pattern="#,###" /> 원
										        	</div>
										        	<div class="col-xs-12">
										        		<p><a href="#" class="btn btn-default btn_detail" onclick="shop.itemView('${i.item_id}')">상세보기</a></p>
									    		   	</div>
										      	</div>
										    </div>
										</c:forEach>
							  		</div>
							  	</div>
							</div>
		        		</div>
		        	</div>
		        	<div class="col-xs-10 col-xs-offset-1 shop_main_item3" >
		        		<div>
		        			<div class="row">
								<div class="col-sm-6 col-md-4" id="photo">
									<div class="page-header">
					  					<h2>반지<small><button type="button" onclick="shop.category(2)" class="btn btn-default btn_more">더보기</button></small></h2>
							  		</div>
							  		<div id="item_thumbnail">
							  	  		<c:forEach var="i" items="${ringList}" begin="0" end="4">
											<div class="thumbnail" id="first_item">
											    <img src="./image/${i.item_main_photo}" alt="..." id="item_photo">
											    <div class="caption" id="item_information">
													<div class="col-xs-12">
												        <h3>${i.item_name}</h3>
													</div>
													<div class="col-xs-12">
												        <fmt:formatNumber value="${i.item_price}" pattern="#,###" /> 원
													</div>
													<div class="col-xs-12">
												        <p><a href="#" class="btn btn-default btn_detail" onclick="shop.itemView('${i.item_id}')">상세보기</a></p>
													</div>			
											    </div>
											</div>
										</c:forEach>								  
							    	</div>
								</div>
							</div>
		        		</div>
		        	</div>
		        	<div class="col-xs-10 col-xs-offset-1 shop_main_item4" >
		        		<div>
		        			<div class="row">
								<div class="col-sm-6 col-md-4" id="photo">
							  		<div class="page-header">
					  					<h2>팔찌<small><button type="button" onclick="shop.category(3)" class="btn btn-default btn_more">더보기</button></small></h2>
							  		</div>
							  		<div id="item_thumbnail">
							  			<c:forEach var="i" items="${braceletList}" begin="0" end="4">
										    <div class="thumbnail" id="first_item">
										      	<img src="./image/${i.item_main_photo}" alt="..." id="item_photo">
										      	<div class="caption" id="item_information">
										      		<div class="col-xs-12">
										        		<h3>${i.item_name}</h3>
										      		</div>
										      		<div class="col-xs-12">
										        		<fmt:formatNumber value="${i.item_price}" pattern="#,###" /> 원
										      		</div>
										      		<div class="col-xs-12">
										        		<p><a href="#" class="btn btn-default btn_detail" onclick="shop.itemView('${i.item_id}')">상세보기</a></p>
										      		</div>
											   	</div>
										    </div>
										</c:forEach>
								  	</div>
							   	</div>
							</div>
		        		</div>
		        	</div>
		        </div>
		    </div>
		</div>
	</form>
	<script>
	shop.func();
	</script>
</div>