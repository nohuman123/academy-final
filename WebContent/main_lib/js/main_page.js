/*
 * 포털 메인페이지
 */

let main = {}

main.view = function(){
	$("#main").load("main.mem");
}

/* 블로그 게시물상세보기 */
main.brdView = function(mId, brdNo) {
	$("#c_mId").val(mId);
	$("#c_brdNo").val(brdNo);
	$("#c_blog_frm").attr("action", "./blog/blog_Index.jsp?inc=../blogBrd.bg").submit();
}

var news_detail = function(serial){
	let nSerial = $('.serial'+serial).val();
	if(nSerial!=""){
		$('.s_nserial').val(nSerial);
	}
	$('#s_news_frm').attr('action', 'newsDetail.mem').submit();
}

var logout = function(){
	$('#h_shop_frm').attr('action', 'logout.mem').submit();
}

main.shopView = function(item_id){
	alert(item_id);
	$("#item_id").val(item_id);
	$("#h_shop_frm").attr("action", "./shop/shop_index.jsp?inc=../view.shop").submit();
}