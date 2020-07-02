<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<div id="shop_basket">
	<form name="shop_frm" id="shop_frm" method="post">
		<div class="container-fluid">
		    <div class="row">
		    	<div class="col-xs-12">
			    	<div class="col-xs-10 col-xs-offset-1 shop_basket_frm">
			    		<div class="row">
				    		<div class="page-header">
							  <h2>장바구니</h2>
							</div>
				    		<div class="col-xs-12" id="item_basket">
				    			<div class="row">
					    			<div class="col-xs-10 col-xs-offset-2 item_title">
					    				<div class="row">
					    					<div class="col-xs-3">
								    			<span id="item_name_title">상품 명</span>
								    		</div>
								    		<div class="col-xs-3">
								    			<span id="item_num_title">수량</span>
								    		</div>
								    		<div class="col-xs-3">
								    			<span id="item_price_title">상품 가격</span>
								    		</div>
								    		<div class="col-xs-3">
								    			<span id="item_remove_title">상품 삭제</span>
								    		</div>
								    	</div>
							    	</div>
							    	<div class="col-xs-12">
						    			<div class="row" id="item">
						    				<div class="col-xs-2">
							    				<img src="./image/1.jpg" alt="..." class="img-circle item_photo">
							    			</div>
							    			<div class="item_information">
							   					<div class="col-xs-3">
									    			<span id="item_name">가나다</span>
									    		</div>
									    		<div class="col-xs-2">
									    			<span id="item_num">1</span>
									    		</div>
									    		<div class="col-xs-3">
									    			<span id="item_price">10000원</span>
									    		</div>
									    		<div class="col-xs-2">
									    			<button type="button" class="btn btn-default btn-lg btn_remove">
									    				<span class="glyphicon glyphicon-remove" aria-hidden="true"></span>
													</button>
												</div>
											</div>
						    			</div>
					    			</div>
					    		</div>
					    	</div>
				    	</div>
			    	</div>
			    	
			    	<div class="col-xs-10 col-xs-offset-1 shop_basket_tot">
			    		<div class="row">
					    	<div class="col-xs-5 shop_totOrder">
					    		<span id="totOrder">총 주문 수량</span>
					    		<span id="orderNum">10개</span>
					    	</div>
			        		<div class="col-xs-5 shop_totPrice">
			        			<span id="totPrice">총 주문 가격</span>
					    		<span id="priceNum">100000원</span>
			        		</div>
			        		<div class="col-xs-2 shop_basket_payment">
			        			<button type="button" class="btn btn-default btn-lg payment">
									<span class="glyphicon glyphicon-credit-card" aria-hidden="true"></span> 결제
								</button>
								<button type="button" class="btn btn-default btn-lg cancel">
									<span class="glyphicon glyphicon-remove" aria-hidden="true"></span> 취소
								</button>
			        		</div>
		        		</div>
					</div>
				</div>
			</div>
		</div>
	</form>	
	<script>shop.func()</script>
</div>