<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE HTML>
<html>
<head>
<title>창업문의</title>
<!--[if lte IE 8]><script src="css/ie/html5shiv.js"></script><![endif]-->
<script src="./js/jquery-3.4.1.js"></script>
<script src="./js/jquery.dropotron.min.js"></script>
<script src="./js/w_brand.js"></script>

<link rel="stylesheet" href="./css/skel.css" />
<link rel="stylesheet" href="./css/style.css" />
		<!--[if lte IE 8]><link rel="stylesheet" href="css/ie/v8.css" /><![endif]-->
</head>
<body>

	
						<form name='frm_food' id='frm_food' method='post' enctype='multipart/form-data'>
						      <label>메뉴 가격</label>
						      <input type="text" name="w_price" value="${vo.foodPrice }"><br/>
						      
						      <label>메뉴 이름</label>
						      <input type="text" name="w_foodName" value="${vo.foodName }"><br/>
						      
						      <label>메뉴 종류</label>
						      <input type="text" name="w_foodType" value="${vo.foodType }"><br/>	

						      <input type="file" id="w_btnPhoto" name="w_photo">
						      
						      <fieldset><legend>[ 첨부된 파일 ]</legend>
									<div>
										<span>
										<img src="./w_images/${vo.foodSysFile }" alt width="340" class="w_menu_image">
										</span>
									</div>
							</fieldset>
						      
						      
						    <div id="w_button">
						      <input type="button" id="w_btnUpdate" class="w_btnPhoto1" value="수정"/>
						      <input type='button' id='w_btnDelete' class="w_btnPhoto2" value='삭제'/>
							  <input type="button" id="w_btnFind"   class="w_btnPhoto3" value="취소" onclick= "location.href = 'w_menu.jsp' " />
							</div>
							<input type='hidden' name='foodCode' value='${vo.foodCode}'/>
						</form>

<script>fd.func()</script>
	</body>
</html>