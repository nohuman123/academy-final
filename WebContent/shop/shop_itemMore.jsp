<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<div id="shop_itemMore">
	<form name="shop_frm" id="shop_frm" method="post">
		<div class="container-fluid">
		    <div class="row">
		    	<div class="col-xs-12">
			    	<div class="col-xs-10 col-xs-offset-1 item_frm">
			    		<div>
			    			<div class="row">
			    				<c:forEach var="i" items="${moreList}" begin="0" end="0">
				    				<div class="page-header">
							  	  		<h2>${i.category_name}</h2>
								  	</div>								  	
								</c:forEach>
								<c:forEach var="i" items="${moreList}">
							  		<div class="col-sm-7 col-md-3 item">
							    		<div class="thumbnail">
								      		<img src="./image/${i.item_main_photo}" alt="..." id="item_photo">
								      		<div class="caption">
								        		<h3>${i.item_name}</h3>
								        		<fmt:formatNumber value="${i.item_price}" pattern="#,###" /> 원
								        		<p><a href="#" class="btn btn-default btn_detail" onclick="shop.itemView('${i.item_id}')" role="button">상세보기</a></p>
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
	</form>
	<script>shop.func()</script>
</div>