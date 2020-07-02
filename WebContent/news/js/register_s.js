/**
 * http://usejsdoc.org/
 */



var daumAdd = function(){
	new daum.Postcode({
		oncomplete:function(data){
			$('#zipCode').val(data.zonecode);
			$('#address').val(data.address);
		}
	}).open();
}

$('#sm').click(function(){
	$('#frm_register').attr('action', 'Register.mem').submit();
})

	

$('#mId').blur(function(){
	if(!/^[a-z0-9]{4,20}$/.test($('#mId').val())){
		$('#checkId').text("id must be alphabet, insert number between 4~20");
		$('#sm').attr("disabled", true);
	}else{
		var param = $('#frm_register').serialize();
		$.ajax({
			url : "mIdCk.mem",
			type : "POST",
			cache : false,
			dataType : "json",
			data : param,
			success : function(data){
				if(data == 1){
					$('#checkId').text("Already used Id");
					$('#sm').attr("disabled", true);
				}else{
					$('#checkId').text("Nice Id");
					$('#sm').attr("disabled", false);
				}
			},
			error : function(request, status, error){
				alert("code:"+request.status+"\n"+"message:"+request.responseText+"\n"+"error:"+error)
			}
		})
	}
	
})
	
$('#lPwd').keydown(function(key){
	if(key.keyCode == 13){
		login();
	}
})
	
var login = function(){
	var nSerial = $('.nSerial').val();
	var ref = document.referrer;
	var param = $('#frm_login_s').serialize();
	$.ajax({
		url : "login.mem",
		type : "POST",
		cache :  false,
		dataType : "json",
		data : param,
		success : function(data){
			if(data.result == 1){
				location.href = ref+"?nSerial="+data.nSerial+"&mId="+data.mId;
			}else{
				alert("아이디나 비밀번호를 확인해주세요!!");
				return false;
			}
		},
		error : function(request, status, error){
			alert("code:"+request.status+"\n"+"message:"+request.responseText+"\n"+"error:"+error)
		}
	})
}
	

$('#pwdCk').blur(function(){
	var pass = $('#pwd').val();
	var passCk = $('#pwdCk').val();
	
	if(pass != passCk){
		$('#checkPass').text("Deffernt password.");
	}else{
		$('#checkPass').text("");
	}
})


$('#email').blur(function(){
	var reg_email = /^([0-9a-zA-Z_\.-]+)@([0-9a-zA-Z_-]+)(\.[0-9a-zA-Z_-]+){1,2}$/;
	var email = $('#email').val();
	
	if(!reg_email.test(email)){
		$('#checkEmail').text("differnt email");
	}else{
		$('#checkEmail').text("");
	}
	
})
	

$('#lId').blur(function(){
	if(!/^[a-z0-9]{4,20}$/.test($('#lId').val())){
		$('#checkId').text("id must be alphabet, insert number between 4~20");
		return false;
	}else{
		$('#checkId').text("");
	}
})
	
	
var loginCk = function(){
		
}	
	
	
