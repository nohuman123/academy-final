var fd = {}

fd.foodj = function(type) {
	
 $.post("../w_select.fd",{"type" : type},function(data,state){
	 $('.w_tab_container').html(data)
 })
}

/*fd.foodv = function(foodCode){
	frm_food.foodCode.value = foodCode;
	
	let param = $('#frm_food').serialize();
	$.post("../w_view.fd", param, function(data, state) {
    $('.w_tab_container').html(data)
	})
}
*/
fd.foodv = function(foodCode){

	$.post("../w_view.fd",{"foodCode" : foodCode}, function(data,state){
		$(".w_tab_container").html(data)
	})
	
}

fd.func = function(){
	
	$("#w_btninsert").click(function(){
		$("#content").load("w_image_insert.jsp");
	});
	
   $('#w_btnRegister').click(function(){
	   let param = new FormData($('#frm_food')[0]);
		$.ajax({
	     url : '../w_insertR.fd',
	     type : 'post',
	     data : param, 
	     contentType : false,
	     processData : false,
	     error : function(status, error){
	    	 console.log(error);
	     },
		 success : function(data, status){
			 location.href = "w_menu.jsp"
		 }
		
		})
		
	});
   
   $("#w_btnModify").click(function(){
	   let param = $('#frm_food').serialize();
		$.post("../w_modify.fd", param, function(data, state) {
			$('#content').html(data)
		})
   })
   
  /* $("w_btnUpdate").click(function(){
	   let food = new FormData($('#frm_food')[0]);
	   $("#frm_food").attr("action","../w_modifyR.fd");
	   $("#frm_food").submit();
   })*/
   
   $('#w_btnUpdate').click(function() {

		let param = new FormData($('#frm_food')[0]);
		$.ajax({
	     url : '../w_modifyR.fd',
	     type : 'post',
	     data : param, 
	     contentType : false,
	     processData : false,
	     error : function(status, error){
	    	 console.log(error);
	     },
		 success : function(data, status){
			 location.href = "w_menu.jsp"
		 }
		
		})
	});
   
   $('#w_btnDelete').click(function(){
	   let param = $('#frm_food').serialize();
		$.post("../w_delete.fd", param, function(data, state) {
			location.href = "w_menu.jsp"
		})
   })
   
   
   $('#login_w').click(function(){
		$('#frm_login').attr('action', '../login.mem').submit();
	})


	$('#mId').blur(function(){
		if(!/^[a-z0-9]{4,20}$/.test($('#mId').val())){
			$('#checkId').text("id must be alphabet, insert number between 4~20");
			$('#sm').attr("disabled", true);
		}else{
			var param = $('#frm_register').serialize();
			$.ajax({
				url : "../mIdCk.mem",
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
	

	$('#pwdCk').blur(function(){
		var pass = $('#pwd').val();
		var passCk = $('#pwdCk').val();
		
		if(pass != passCk){
			$('#checkPass').text("Deffernt password.");
		}else{
			$('#checkPass').text("");
		}
	})
	


	

   
}

var loginCk = function(){
	
}