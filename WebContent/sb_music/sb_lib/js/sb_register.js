


$("#mId").blur(function(){
	
	
	let param = $('#frm_register').serialize();
	
	console.log(param);
	$.ajax({
		
		url: 'CK_id.ms',
		data : param ,
		type: 'post',
		dataType: 'json',
		
		success: function(data){
			alert(data);
			if(data === 1){
				$('#checkId').html("아이디가 이미 존재합니다.");
			}
			
			
			
			
		},
		error : function(request, status, error){
			alert(request.status + "\n에러메시지:" + error);
		}
		
		
		
	})
	
})