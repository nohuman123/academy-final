<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%
	String mId = "";
	if(session.getAttribute("mId") != null){
 		mId = (String)session.getAttribute("mId");	
	}
%>
<div id="shop_myPage">
	<form name="shop_frm" id="shop_frm" method="post">
		<div class="container-fluid">
		    <div class="row">
		    	<div class="col-xs-12">
			        <div class="col-md-3 member">
			        	<div class="row">
							<div class="col-sm-6 col-md-4 member_frm">
						    	<div class="thumbnail member_thumbnail">
						      		<img src="./image/1.jpg" alt="...">
						      		<div class="caption">
						      			<h3 id="member_id_frm"><%=mId%></h3>
						      			<%-- <input type="text" name="mId" id="mId" value="${itemLikeList.mId}" /> --%>
						        		<p><a data-toggle="modal" data-target="#myModal" class="btn btn-default btn_modify" role="button">회원 정보 수정</a></p>
						      		</div>
						    	</div>
						  	</div>
						</div>
						<!-- Modal -->
						<div id="myModal" class="modal fade" role="dialog">
							<div class="modal-dialog">
						    	<!-- Modal content-->
						    	<div class="modal-content">
						      		<div class="modal-header">
						        		<button type="button" class="close" data-dismiss="modal">&times;</button>
						        		<h4 class="modal-title">회원 정보 수정</h4>
						      		</div>
						      		<div class="modal-body">
						      			<div class="container-fluid">
		    								<div class="row">
							        			<div class="col-xs-12 a">
							        				<div class="row">	
							        					<div class="col-xs-8 modal_member_photo_frm">						        			
										       				<img src="./image/1.jpg" alt="..." class="img-circle modal_member_photo">
							        					</div>					
							        					<div class="col-xs-4 modal_member_photo_modify">
										        			<button class="btn btn-default btn_photo_modify" type="submit">프로필 사진 변경</button>
										        			<button class="btn btn-default btn_photo_remove" type="submit">프로필 사진 삭제</button>				        			
							        					</div>	        			
								       				</div>
								        		</div>
							        		</div>
							        		<div class="row">
							        			<div class="col-xs-2 modal_member_information_title">
							        				<div id="member_id_frm">						        		
							        					<span id="member_id">아이디</span><br/>
							        				</div>
							        				<div id="member_name_frm">
							        					<span id="member_name">이름</span><br/>
							        				</div>
							        				<div id="member_phone_frm">
							        					<span id="member_phone">연락처</span>
							        				</div>
								        			<div id="member_address_frm">
								        				<span id="member_address">주소</span><br/>
								        			</div>
							        			</div>
							        			<div class="col-xs-10 modal_member_information_modify">
							        				<input class="form-control" id="member_id_text" type="text" placeholder="">
							        				<input class="form-control" id="member_name_text" type="text" placeholder="">
							        				<input class="form-control" id="member_phone_text" type="text" placeholder="">
							        				<div class="row">
									        			<div class="col-xs-9">
										    				<input type="text" class="form-control" id="sample4_postcode" placeholder="우편번호">
									    				</div>
									    				<div class="col-xs-3">
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
						      		<div class="modal-footer">
						      			<button data-toggle="modal" data-target="#myModal" type="button" class="btn btn-default btn_member_save">저장</button>
						      			<button data-toggle="modal" data-target="#myModal" type="button" class="btn btn-default btn_member_delete">탈퇴</button>
						        		<button type="button" class="btn btn-default btn_member_back" data-dismiss="modal">취소</button>
						      		</div>
						    	</div>
						  	</div>
						</div>
			        </div>
			        <div class="col-md-9 myPage_buy">
			        	<div class="row">
			        		<div class="col-xs-3 buy_list">
			        			<div class="page-header">
								  	<h2 id="delivery_header">배송 조회<small><button class="btn btn-default btn_buy_more" type="submit">더보기</button></small></h2>
								</div>
			        		</div>
			        	</div>
			        	<div class="col-xs-12 buy">
			        		<div class="row buy_list_title">
			        			 <div class="col-xs-4 col-xs-offset-2 buy_list_name_title">
			        			 	<span id="item_name_title">상품 명</span>
			        			 </div>
							     <div class="col-xs-4 buy_list_price_title">
							     	<span id="item_price_title">상품 가격</span>
							     </div>
							     <div class="col-xs-2 buy_list_status_title">
							     	<span id="item_status_title">배송 상태</span>
							     </div>
			        		</div>
			        		<div class="row buy_list_item">
			        			<div class="col-xs-2 buy_list_photo">
			        				<img src="./image/1.jpg" alt="..." class="img-circle buy_photo">
			        			</div>
			        			<div class="buy_information">
				        			<div class="col-xs-4 buy_list_name">
				        				<span id="buy_name">가나다</span>
				        			</div>
				        			<div class="col-xs-4 buy_list_price">
				        				<span id="buy_price">10000원</span>
				        			</div>
				        			<div class="col-xs-2 buy_list_status">
				        				<span id="buy_status">배송중</span>
				        			</div>
			        			</div>
			        		</div>
			        	</div>
			        </div>
			        <div class="col-md-9 myPage_like">
			        	<div class="row">
			        		<div class="col-xs-3 like_list">
			        			<div class="page-header">
							  		<h2 id="like_header">찜한 목록<small><button class="btn btn-default btn_like_more" type="submit">더보기</button></small></h2>
								</div>
			        		</div>
			        		<div class="col-xs-12">
			        			<div class="row like_item_list">
			        				<div class="col-xs-3 like_item">
			        					<div class="row">
											<div class="col-sm-6 col-md-4">
										    	<div class="thumbnail like_thumbnail" id="like_item_first">
										    		<c:forEach var="i" items="${itemLikeList}">
											      		<img src="./image/${i.item_main_photo}" alt="...">
											      		<div class="caption">
											        		<h3>${i.item_name}</h3>
											        		<fmt:formatNumber value="${i.item_price}" pattern="#,###" /> 원
											        		<p><a href="#" class="btn btn-default btn_like_detail" onclick="shop.itemView('${i.item_id}')" role="button">상세보기</a><a href="#" class="btn btn-default glyphicon glyphicon-remove btn_like_remove" role="button"></a></p>
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
				</div>
		    </div>
		</div>
	</form>
	<script>shop.func()</script>
</div>