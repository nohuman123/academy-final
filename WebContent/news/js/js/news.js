/**
 * 
 */
let news = function(){
	$('.head_s a').click(function(){
		$('h2').removeClass('head_ch_s');
		$(this).children('h2').addClass('head_ch_s');
	})
	
	$('.nav-item a').click(function(){
		$('li').removeClass('active');
		$(this).parent('li').addClass('active');
	})
	
	$('.trend-top-cap h2').click(function(){
		alert('asdad');
		$('#tes_s').attr('action', 'newsDetail.news').submit();
	})
}

/* 답글 열고 닫기 */
let hide_com = function(replyCount){
	if($('.reply_count'+replyCount).hasClass('reply_count'+replyCount)){
		$('.reply_count'+replyCount).addClass('reply_close'+replyCount).removeClass('reply_count'+replyCount);
		$('.hide_comment'+replyCount).css('display', 'block');
	}else if($('.reply_close'+replyCount).hasClass('reply_close'+replyCount)){
		$('.reply_close'+replyCount).addClass('reply_count'+replyCount).removeClass('reply_close'+replyCount);
		$('.hide_comment'+replyCount).css('display', 'none');
	}
}