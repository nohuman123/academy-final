/**
 * http://usejsdoc.org/
 */

$(document).ready(function() {
	
	let param = $('#index_frm').serialize();
	$.ajax({
		url : 'IndexInfo.mem',
		data : param,
		type : 'POST',
		dataType : 'json',
		success : function(data){
			
			$('#email').text(data.email);
			
			
			
		}
	})
});

var myPage = function(){
	$('#frm_top').attr('action', './sb_music/Membership.mem').submit();
}

/*function logout(){
	$.post('logout.mem');
	alert("로그아웃 되었습니다.");
	location.reload(true);
	
}*/

