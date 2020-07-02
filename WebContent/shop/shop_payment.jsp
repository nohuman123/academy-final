<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<div id="shop_payment">
	<form name="shop_frm" id="shop_frm" method="post">
		<div class="container-fluid">
		    <div class="row">
		    	<div class="col-xs-12">
		    		<div class="row">
				    	<div class="col-xs-10 col-xs-offset-1 shop_payment_frm">
				    		<div class="page-header">
							  <h2>결제</h2>
							</div>
				    		<div class="col-xs-12" id="item_payment">
				    			<div class="row">
					    			<div class="col-xs-9 col-xs-offset-3 item_title">
					    				<div class="row">
					    					<div class="col-xs-4">
									    		<span id="item_name_title">상품 명</span>
									    	</div>
									    	<div class="col-xs-4">
									    		<span id="item_price_title">상품 가격</span>
									    	</div>
									    	<div class="col-xs-4">	
									    		<span id="item_num_title">상품 수량</span>	    
									    	</div>		
									    </div>	
					    			</div>
					    			<div class="col-xs-12">
						    			<div class="row" id="item">
						    				<div class="col-xs-3">
						    					<img src="./image/1.jpg" alt="..." class="img-circle item_photo">
						    				</div>	
						    				<div class="item_information">
						    					<div class="col-xs-3">
									    			<span id="item_name">가나다</span>
									    		</div>
									    		<div class="col-xs-3">
									    				<span id="item_price">10000원</span>
									    		</div>
									    		<div class="col-xs-3">
									    				<span id="item_num">10</span>
									    		</div>
						    				</div>
						    			</div>
					    			</div>			    			
				    			</div>
				    		</div>
				    	</div>
				    	<div class="col-xs-10 col-xs-offset-1 shop_payment_tot">
							<div class="col-xs-8 shop_payment_information">
								<div class="row">
								    <div class="col-xs-4 col-xs-offset-4 order_information_frm">
								    	<span id="order_information">주문 정보</span>
								    </div>
								    <div class="col-xs-12">
								    	<div class="row">
								    		<div class="col-xs-2 orderer_frm">
								    			<span id="orderer">주문인</span>
								    		</div>
								    		<div class="col-xs-3">
								    			<input class="form-control" id="orderer_text" type="text" placeholder="">
								    		</div>
								    		<div class="col-xs-3 ordererPhone_frm">
								    			<span id="ordererPhone">주문인 연락처</span>
								    		</div>
								    		<div class="col-xs-4">
								    			<input class="form-control" id="ordererPhone_text" type="text" placeholder="">
								    		</div>
								    	</div>
								    	<div class="row">
								    		<div class="col-xs-2  reciever_frm">
								    			<span id="reciever">수취인</span>
								    		</div>
								    		<div class="col-xs-3">
								    			<input class="form-control" id="reciever_text" type="text" placeholder="">
								    		</div>
								    		<div class="col-xs-3 recieverPhone_frm">
								    			<span id="recieverPhone">수취인 연락처</span>
								    		</div>
								    		<div class="col-xs-4">
								    			<input class="form-control" id="recieverPhone_text" type="text" placeholder="">
								    		</div>
								    	</div>
								    	<div class="row">
								    		<div class="col-xs-2 orderAdress_frm">
								    			<span id="orderAddress">주소</span>
								    		</div>
								    		<div class="col-xs-10 daumApi">
								    			<div class="row">
								    				<div class="col-xs-10">
									    				<input type="text" class="form-control" id="sample4_postcode" placeholder="우편번호">
								    				</div>
								    				<div class="col-xs-2">
														<input type="button" id="btn_postcode" onclick="sample4_execDaumPostcode()" value="우편번호 찾기"><br>
								    				</div>
								    			</div>
								    			<div class="row">
								    				<div class="col-xs-6">
														<input type="text" class="form-control" id="sample4_roadAddress" placeholder="도로명주소">
								    				</div>
								    				<div class="col-xs-6">
														<input type="text" class="form-control" id="sample4_jibunAddress" placeholder="지번주소">
								    				</div>
													<span id="guide" style="color:#999;display:none"></span>
													<input type="hidden" class="form-control" id="sample4_detailAddress" placeholder="상세주소">
													<input type="hidden" class="form-control" id="sample4_extraAddress" placeholder="참고항목">
								    			</div>
												
												<script src="https://t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
								    			<script>
												    //본 예제에서는 도로명 주소 표기 방식에 대한 법령에 따라, 내려오는 데이터를 조합하여 올바른 주소를 구성하는 방법을 설명합니다.
												    function sample4_execDaumPostcode() {
												        new daum.Postcode({
												            oncomplete: function(data) {
												                // 팝업에서 검색결과 항목을 클릭했을때 실행할 코드를 작성하는 부분.
												
												                // 도로명 주소의 노출 규칙에 따라 주소를 표시한다.
												                // 내려오는 변수가 값이 없는 경우엔 공백('')값을 가지므로, 이를 참고하여 분기 한다.
												                var roadAddr = data.roadAddress; // 도로명 주소 변수
												                var extraRoadAddr = ''; // 참고 항목 변수
												
												                // 법정동명이 있을 경우 추가한다. (법정리는 제외)
												                // 법정동의 경우 마지막 문자가 "동/로/가"로 끝난다.
												                if(data.bname !== '' && /[동|로|가]$/g.test(data.bname)){
												                    extraRoadAddr += data.bname;
												                }
												                // 건물명이 있고, 공동주택일 경우 추가한다.
												                if(data.buildingName !== '' && data.apartment === 'Y'){
												                   extraRoadAddr += (extraRoadAddr !== '' ? ', ' + data.buildingName : data.buildingName);
												                }
												                // 표시할 참고항목이 있을 경우, 괄호까지 추가한 최종 문자열을 만든다.
												                if(extraRoadAddr !== ''){
												                    extraRoadAddr = ' (' + extraRoadAddr + ')';
												                }
												
												                // 우편번호와 주소 정보를 해당 필드에 넣는다.
												                document.getElementById('sample4_postcode').value = data.zonecode;
												                document.getElementById("sample4_roadAddress").value = roadAddr;
												                document.getElementById("sample4_jibunAddress").value = data.jibunAddress;
												                
												                // 참고항목 문자열이 있을 경우 해당 필드에 넣는다.
												                if(roadAddr !== ''){
												                    document.getElementById("sample4_extraAddress").value = extraRoadAddr;
												                } else {
												                    document.getElementById("sample4_extraAddress").value = '';
												                }
												
												                var guideTextBox = document.getElementById("guide");
												                // 사용자가 '선택 안함'을 클릭한 경우, 예상 주소라는 표시를 해준다.
												                if(data.autoRoadAddress) {
												                    var expRoadAddr = data.autoRoadAddress + extraRoadAddr;
												                    guideTextBox.innerHTML = '(예상 도로명 주소 : ' + expRoadAddr + ')';
												                    guideTextBox.style.display = 'block';
												
												                } else if(data.autoJibunAddress) {
												                    var expJibunAddr = data.autoJibunAddress;
												                    guideTextBox.innerHTML = '(예상 지번 주소 : ' + expJibunAddr + ')';
												                    guideTextBox.style.display = 'block';
												                } else {
												                    guideTextBox.innerHTML = '';
												                    guideTextBox.style.display = 'none';
												                }
												            }
												        }).open();
												    }
												</script>
								    		</div>
								    	</div>
								    </div>
								</div>
							</div>
							<div class="col-xs-4 shop_payment_mathod">
								<div class="row">
								    <div class="col-xs-6 col-xs-offset-3 mathod_frm">
								    	<span id="mathod">결제 수단</span>
								    </div>
								    <div class="col-xs-12">
								    	<div class="row">
								    		<div class="col-xs-8 mathod_card_frm">
								    			<span id="card">신용카드</span>
								    		</div>
								    		<div class="col-xs-4">
								    			<button type="button" class="btn btn-default btn-lg  btnCard">
													<span class="glyphicon glyphicon-ok" aria-hidden="true"></span>
												</button>
								    		</div>
								    	</div>
								    	<div class="row">
								    		<div class="col-xs-8 method_transfer_frm">
								    			<span id="transfer">계좌이체</span>
								    		</div>
								    		<div class="col-xs-3">
								    			<button type="button" class="btn btn-default btn-lg  btnTransfer">
													<span class="glyphicon glyphicon-ok" aria-hidden="true"></span>
												</button>
								    		</div>
								  		</div>
								    	<div class="row">
								    		<div class="col-xs-6">
										    	<div id="payment">
													<span id="amount_payment">결제금액</span>
										    	</div>							    					
								    		</div>
								  			<div class="col-xs-6">
								    			<div id="money">
								    				<span id="payment_money">10000원</span>
								    			</div>
								    		</div>
								    	</div>
								    </div>
								</div>
							</div>
							<div class="col-xs-4 col-xs-offset-4 shop_payment_final">
						        <div class="col-xs-12">
						        	<div class="row">
						        		<div class="col-xs-6">
						        			<button type="button" class="btn btn-default btn-lg payment">
												<span class="glyphicon glyphicon-credit-card" aria-hidden="true"></span> 결제
											</button>
						        		</div>
						   	        	<div class="col-xs-6">
											<button type="button" class="btn btn-default btn-lg cancel">
												<span class="glyphicon glyphicon-remove" aria-hidden="true"></span> 취소
											</button>
						       			</div>
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