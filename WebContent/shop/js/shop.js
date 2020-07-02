/**
 * http://usejsdoc.org/
 */
let shop = {}

shop.category = function(item_category) {
	$("#item_category").val(item_category)
	let param = $("#shop_frm").serialize();
		$.post("../more.shop", param, function(data, state){
			$("#main").html(data);
	})
}

shop.optionValue_click = function(option_value){
	
	let option_list = "<li id='select_item_frm_li'>"
						+ "<div class='col-xs-6 select_item_option_name'>"
							+ "<span class='select_item_option_name_text'>" + option_value + "</span>"
						+ "</div>"
						+ "<div class='col-xs-3 select_item_num'>"
							+ "<div class='row'>"
								+ "<input type='text' class='itemView_num_count' name='count' value='1' />"
								+ "<div class='btn_select_item_num_frm'>"
									+ "<button type='button' class='btn btn-default btn-lg btn_count_up' onclick='shop.countUp(this)'>"
										+ "<span class='glyphicon glyphicon-menu-up' aria-hidden='true'></span>"
									+ "</button>"
									+ "<button type='button' class='btn btn-default btn-lg btn_count_down' onclick='shop.countDown(this)'>"
										+ "<span class='glyphicon glyphicon-menu-down' aria-hidden='true'></span>"
									+ "</button>"
								+ "</div>"
							+ "</div>"
						+ "</div>"
						+ "<div class='col-xs-3 select_item_remove'>"
							+ "<button type='button' class='btn btn-default btn-lg btn_select_item_remove' onclick='shop.totPrice_remove(this)'>"
								+ "<span class='glyphicon glyphicon-remove' aria-hidden='true'></span>"
							+ "</button>"
						+ "</div>"
					+ "</li>";
					
	$("#select_item_frm_ul").append(option_list);
	var totItemPrice = Number($("#itemView_price_content_in").val())*$(".itemView_num_count").length;
	alert(totItemPrice);
	$("#select_item_tot_price_text").text(totItemPrice);
}

function shopItemTotPrice(){
	var item_tot_price = $("#select_item_tot_price_text").text();
}

shop.countUp = function(value){
	let item_price = Number($("#itemView_price_content_in").val());
	let item_tot_price = Number($("#select_item_tot_price_text").text());
	let ea = 0;
	alert(item_price);
	$("#select_item_tot_price_text").html(item_tot_price);
	if(value == value){
		ea = Number($(value).parents().prev("input").val())+1;
		$(value).parents().prev("input").val(ea);
		item_tot_price = item_tot_price+item_price;
		$("#select_item_tot_price_text").html(item_tot_price);
		alert(item_tot_price);
	}
}

shop.countDown = function(value){
	let item_price = Number($("#itemView_price_content_in").val());
	let ea = 0;
	alert(item_price);
	if(value == value){
		item_tot_price = Number($("#select_item_tot_price_text").text());
		if(Number($(value).parents().prev("input").val())>1){			
			ea = Number($(value).parents().prev("input").val())-1;
			$(value).parents().prev("input").val(ea);
			item_tot_price = item_tot_price-item_price;
			$("#select_item_tot_price_text").html(item_tot_price);
			alert(item_tot_price);
		}
	}
}
shop.myPage = function(mId){
	$("#mId").val(mId);
	alert(mId);
	let param = $("#shop_frm").serialize();
	$.post("../myPage.shop", param, function(data, state){
		$("#main").html(data);
	})
}
/*
shop.totPrice_remove = function(option){
	let item_price = Number($("#itemView_price_content_in").val());
	let item_tot_price = Number($("#select_item_tot_price_text").text());
	let ea = 0;
	
	if(option == option){
		ea = Number($(option).parents().prev("input").val());
		alert(ea);
		alert(option);
		let remove_price = item_tot_price -(item_price*ea);
		$("#select_item_frm_li").remove(this);
		$("#select_item_tot_price_text").html(remove_price);
		alert($(this).parents("li"));
		
		$(this).parent().parent().addClass("d-none");
	}
}
*/
shop.itemView = function(item_id){
	$.post("../view.shop", {"item_id" : item_id}, function(data, state){
		$("#main").html(data);
	})
}

shop.mainFunc = function(){
	let param = $("#shop_frm").serialize();
	$.post("../main.shop", param, function(data, state){
		$("#main").html(data);
	})
}

shop.func = function(){
	
	$(".btn_more").click(function(){
		alert("아이템 더보기");
		let param = $("#shop_frm").serialize();
		$.post("../more.shop", param, function(data, state){
			$("#main").html(data);
		})
	})
	
	$(".btn_basket").click(function(){
		let param = $("#shop_frm").serialize();
		$.post("../basket.shop", param, function(data, state){
			$("#main").html(data);
		})
	})
	

	$(".btn_itemView_payment").click(function(){
		alert("결제하시겠습니까?")
		let param = $("#shop_frm").serialize();
		$.post("../payment.shop", param, function(data, state){
			$("#main").html(data);
		})
	})
	
	$(".btn_itemView_basket").click(function(){
		alert("장바구니에 추가되었습니다.")
		let param = $("#shop_frm").serialize();
		$.post("../basket.shop", param, function(data, state){
			$("#main").html(data);
		})
	})
	
	$(".btn_itemView_like").click(function(){
		alert("회원 아이디 : " + mId + "상품 아이디 : " + item_id);
		if($("#btn_itemView_like_click").hasClass("glyphicon-heart-empty")){
			alert("찜 목록에 추가되었습니다.")
			$("#btn_itemView_like_click").removeClass("glyphicon-heart-empty")
			$("#btn_itemView_like_click").addClass("glyphicon-heart")
			document.getElementById("btn_itemView_like_click").style.color = "red";
			
			/*찜하기 등록*/ 
			$.ajax({
				url : "../itemLike.shop",
				dataType : "json",
				type : "post",
				data : {
					"mId" : $("#mId").val(),
					"item_id" : $("#item_id").val()
				},
				success :function(){
					alert("성공");
				}
			});
			
		}else{
			alert("찜 목록에서 삭제되었습니다.")
			$("#btn_itemView_like_click").removeClass("glyphicon-heart")
			$("#btn_itemView_like_click").addClass("glyphicon-heart-empty")
			document.getElementById("btn_itemView_like_click").style.color = "black";
			
			/*찜하기 삭제*/
			$.ajax({
				url : "../itemLikeDelete.shop",
				type : "post",
				data : {
					"item_id" : $("#item_id").val()
				},
				success : function(){
					alert("삭제 성공");
				}
			})
		}
	})
	
	$(".basket_payment").click(function(){
		alert("결제창으로 이동합니다.")
		let param = $("#shop_frm").serialize();
		$.post("../payment.shop", param, function(data, state){
			$("#main").html(data);
		})
	})
	
	$(".basket_cancel").click(function(mId){
		$("#mId").val = mId;
		alert("마이페이지로 이동합니다.")
		let param = $("#shop_frm").serialize();
		$.post("../myPage.shop", param, function(data, state){
			$("#main").html(data);
		})
	})
	
	$(".payment").click(function(){
		alert("결제가 완료되었습니다.")
		let param = $("#shop_frm").serialize();
		$.post("../myPage.shop", param, function(data, state){
			$("#main").html(data);
		})
	})
	
	$(".cancel").click(function(){
		alert("장바구니로 돌아갑니다.")
		let param = $("#shop_frm").serialize();
		$.post("../basket.shop", param, function(data, state){
			$("#main").html(data);
		})
	})
	
	$(".btn_like_more").click(function(){
		let param = $("#shop_frm").serialize();
		$.post("../more.shop", param, function(data, state){
			$("#main").html(data);
		})
	})
	
	$(".btn_like_detail").click(function(){
		let param = $("#shop_frm").serialize();
		$.post("../view.shop", param, function(data, state){
			$("#main").html(data);
		})
	})
	
	$(".btn_member_save").click(function(){
		alert("회원 정보가 정상적으로 수정되었습니다.")
	})
	
	$(".btn_member_delete").click(function(){
		alert("정상적으로 탈퇴되었습니다.")
	})
}