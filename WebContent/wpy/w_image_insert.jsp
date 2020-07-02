<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE HTML>
<html>
<head>
<title>메뉴입력</title>
<!--[if lte IE 8]><script src="css/ie/html5shiv.js"></script><![endif]-->
<script src="./js/jquery-3.4.1.js"></script>
<script src="./js/jquery.dropotron.min.js"></script>
<script src="./js/w_brand.js"></script>


<link rel="shortcut icon" href="#">
<link rel="stylesheet" href="./css/skel.css" />
<link rel="stylesheet" href="./css/style.css" />
		<!--[if lte IE 8]><link rel="stylesheet" href="css/ie/v8.css" /><![endif]-->
</head>
<body>
<form name='frm_food' id='frm_food' method='post' enctype='multipart/form-data'>
      <label>메뉴 가격</label>
      <input type="text" name="w_price"><br/>
      <label>메뉴 이름</label>
      <input type="text" name="w_foodName"><br/>
      <label>메뉴 종류</label>
      <input type="text" name="w_foodType"><br/>			    
      <span class="w_photo"><img id="w_photo1" src="./w_images/w_modeumjeon.jpg" alt width="340"></span>	
      <input type="file" id="w_btnPhoto" class="w_btnfile" name="w_photo">
    <div id="w_button">
      <input type="button" id="w_btnRegister" class="w_btnPhoto1" value="저장"/>
	  <input type="button" id="w_btnMenu"     class="w_btnPhoto2"  value="취소" onclick= "location.href = 'w_menu.jsp' " />
	</div>
</form>
<script>fd.func();</script>
	</body>
</html>