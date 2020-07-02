/**
 * http://usejsdoc.org/
 */

$('.eMail').blur(function(){
	var eMail = $('.eMail').val();
	if(eMail == ""){
		$('#emailCk_s').text("");
	}else{
		var param = $('#pwdFind_s').serialize();
		$.ajax({
			url : "eMailCk.all",
			type : "POST",
			cache : false,
			dataType : "json",
			data : param,
			success : function(data){
				if(data.ck == 1){
					$('#emailCk_s').text("");
					$('.eCk').attr("disabled", false);
				}else{
					$('#emailCk_s').text("이메일이 존재하지 않습니다.");
					$('.eCk').attr("disabled", true);
					return false;
				}
			},
			error : function(request, status, error){
				alert("code:"+request.status+"\n"+"message:"+request.responseText+"\n"+"error:"+error)
			}
		})
	}
})

var codeIssue = function(){
	var param = $('#pwdFind_s').serialize();
	$.ajax({
		url : "codeIssue.all",
		type : "POST",
		cache : false,
		dataType : "text",
		data : param,
		success : function(data){
			$('#emailCk_s').text(data);
		},
		error : function(request, status, error){
			alert("code:"+request.status+"\n"+"message:"+request.responseText+"\n"+"error:"+error)
		}
	})
}

/*var  pwdPage = function(){
	var param = $('#pwdFind_s').serialize();
	$.ajax({
		url : "pwdPage.all",
		type : "POST",
		cache : false,
		dataType : "json",
		data : param,
		success : function(data){
			if(data.result == 1){
				window.location.href = "pwChange.jsp?mId="+data.mId;
			}else{
				alert("코드가 일치하지 않습니다!!");
				return false;
			}
		},
		error : function(request, status, error){
			alert("code:"+request.status+"\n"+"message:"+request.responseText+"\n"+"error:"+error)
		}
	})
}*/

var pwdIssue = function(){
	var param = $('#pwdFind_s').serialize();
	$.ajax({
		url : "pwdIssue.all",
		type : "POST",
		cache : false,
		dataType : "json",
		data : param,
		success : function(data){
			if(data == 1){
				alert("새 비밀번호 발급 완료");
				location.href = "./login.jsp";
			}else{
				alert('비밀번호 발급 실패');
				return false;
			}
		},
		error : function(request, status, error){
			alert("code:"+request.status+"\n"+"message:"+request.responseText+"\n"+"error:"+error)
		}
	})
}

$('.mId').blur(function(){
	var param = $('#pwdFind_s').serialize();
	$.ajax({
		url : "idCk.all",
		type : "POST",
		cache : false,
		dataType : "json",
		data : param,
		success : function(data){
			if(data == 1){
				$('.eCk').attr("disabled", false);
				$('#mIdCk_s').text("");
			}else{
				$('#mIdCk_s').text("아이디가 존재하지 않습니다.");
				$('.eCk').attr("disabled", true);
			}
		},
		error : function(request, status, error){
			alert("code:"+request.status+"\n"+"message:"+request.responseText+"\n"+"error:"+error)
		}
	})
})

var idCk = function(){
	$('#pwdFind_s').attr('action', 'pwPageChange.all').submit();
}

$('.phone').blur(function(){
	var param = $('#idFind_s').serialize();
	$.ajax({
		url : "phoneCk.all",
		type : "POST",
		cache : false,
		dataType : "json",
		data : param,
		success : function(data){
			if(data == 1){
				$('.eCk').attr("disabled", false);
				$('#idCk_s').text("");
			}else{
				$('#idCk_s').text("전화번호가 존재하지 않습니다.");
				$('.eCk').attr("disabled", true);
			}
		},
		error : function(request, status, error){
			alert("code:"+request.status+"\n"+"message:"+request.responseText+"\n"+"error:"+error)
		}
	})
})

var idFind = function(){
	$('#idFind_s').attr('action', 'idFind.all').submit();
}

