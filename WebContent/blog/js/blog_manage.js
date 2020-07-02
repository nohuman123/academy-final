let manage = {}

manage.manageMainContent = function () { //블로그 관리 메인(블로그 설정)
	let param = $("#c_manage_frm").serialize();
	$.post("../blogSetManage.bg", param, function(data, state) { 
		$("#c_manageContent").html(data);
	});
}

manage.view = function(){
	/* myblog_manageSet */
	$("#c_myblog_headerImg_add").click(function(){
		$("#c_btn_bHeaderImg").trigger('click');
	});
	
	$("#c_btn_bHeaderImg").change(function(e) {
		let url = e.target.files[0];
		
		let reader = new FileReader();
		reader.readAsDataURL(url);
		
		reader.onload = function(ev) {
			let img = new Image();
			img.src = ev.target.result;
			$("#c_bHeaderImg").attr("src", img.src);
		}
	});
	
	$("#c_myblog_headerImg_rem").click(function() {
		$("#c_btn_bHeaderImg").val("");
		$("#c_bHeaderImg").removeAttr("src");
	});
	
	/* myblog_manageBrd */
	$(".c_MbrdItem").hover(function() { //글 수정, 삭제 버튼 그룹
		let btnGroup = $(this).children(".c_Mbrd_btnGroup");
		btnGroup.css("display", "block");
	}, function(){
		let btnGroup = $(this).children(".c_Mbrd_btnGroup");
		btnGroup.css("display", "none");
	});
	
	/* myblog_manageCmt */
	$(".c_McmtItem").hover(function() { //답변, 삭제 버튼 그룹
		let btnGroup = $(this).children(".c_Mcmt_btnGroup");
		btnGroup.css("display", "block");
	}, function(){
		let btnGroup = $(this).children(".c_Mcmt_btnGroup");
		btnGroup.css("display", "none");
	});
}

manage.blogSet = function() {
	let param = $("#c_blog_frm").serialize(); 
	$.post("../blogSetManage.bg", param, function(data, state) { 
		$("#c_manageContent").html(data);
	});
}

manage.brd = function() {
	let param = $("#c_blog_frm").serialize(); 
	$.post("../brdManage.bg", param, function(data, state) { 
		$("#c_manageContent").html(data);
	});
}

manage.cmt = function() {
	let param = $("#c_blog_frm").serialize(); 
	$.post("../cmtManage.bg", param, function(data, state) { 
		$("#c_manageContent").html(data);
	});
}

manage.stat = function() {
	let param = $("#c_blog_frm").serialize(); 
	$.post("../statManage.bg", param, function(data, state) { 
		$("#c_manageContent").html(data);
	});
}

