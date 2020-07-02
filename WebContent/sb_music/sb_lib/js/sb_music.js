var home = function(){
	$('#changePage').load('sb_home.mu');
}


var movie = function (serial){
	frm_top.m_serial.value = serial;
	let param = $('#frm_top').serialize();
	$('#changePage').load('sb_movie.mu', param);
}

var info = function(serial){
	frm_top.m_serial.value = serial;
	let param = $('#frm_top').serialize();
	$('#changePage').load('sb_info.mu', param);
	
}

var search = function(){
	let param = $('#frm_search').serialize();
	$('#changePage').load('sb_search.mu', param);
}

$('#search').keydown(function(){
	if(event.keyCode === 13){
		event.preventDefault();
		search();
		
	}
})

