<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset=utf-8 />
<title>Insert title here</title>
<link rel="stylesheet" href="../sb_music/sb_lib/css/jquery-ui.css">
<link rel="stylesheet" href="../sb_music/sb_lib/css/bootstrap.min.css">
<link rel="stylesheet" href="../sb_music/sb_lib/css/bootstrap-theme.min.css">
<link rel="stylesheet" href="../sb_music/sb_lib/css/sb_register.css">
<script src="../sb_music/sb_lib/js/jquery-3.4.1.js"></script>
<script src="../sb_music/sb_lib/js/jquery-ui.js"></script>
<script src="http://dmaps.daum.net/map_js_init/postcode.v2.js"></script>
</head>
<body>
	
	
	<br><br><br><br>
	<div align="center">
		<h1><a href="../index.jsp"><img src="../main_lib/images/root.png" alt="" style="height:50px;"></a></h1>
		<br><br>
		<div class="container">	
			<form id="frm_register" name="frm_register">
				
				<span>아이디</span><br> 
				<input type="text" id="mId" name="mId"><div id="checkId" ></div><br>
				<span>비밀번호</span> <br> 
				<input type="password" id="pwd" name="pwd"><br>
				<span>비밀번호 확인</span> <br> 
				<input type="password" id="pwdCk" name="pwdCk"><div id="checkPass" ></div><br>
				<span>성명</span> <br> 
				<input type="text" id="mName" name="mName"><br>
				<span>생년월일</span> <br> 
				<input type="date" id="birth" name="birth"><br>
				<span>전화번호</span> <br> 
				<input type="tel" id="phone" name="phone"><br>
				<span>이메일주소</span> <br> 
				<input type="email" id="email" name="email"><div id="checkEmail" ></div><br>
				<span>집주소</span> <br> 
				<input type="text" id="zipCode" name="zipCode" style="width:300px; margin-right: 25px;"><button type="button" id="addSearch" onclick="daumAdd();">주소찾기</button><br/><br/>
				<input type="text" id="address" name="address"><br><br>
				<span>성별</span><br>
				<select id="gender" name="gender">
					<option value="1">남성</option>
					<option value="2">여성</option>
					<option value="3">애매함</option>
				</select>
				<br><br>
				
				<button id="sm" type="button">회원가입</button>
			
			</form>
		</div>
	</div>


<script src="../news/js/register_s.js" >
	login_ck();
</script>
</body>
</html>