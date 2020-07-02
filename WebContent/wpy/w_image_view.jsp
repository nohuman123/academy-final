<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>꼬치예전</title>
<script src="./js/jquery-3.4.1.js"></script>
<script src="./js/jquery.dropotron.min.js"></script>
<script src="./js/w_brand.js"></script>

<link rel="stylesheet" href="./css/skel.css" />
<link rel="stylesheet" href="./css/style.css" />
</head>

<body>


		<!-- UI  -->
   <form name='frm_food' id='frm_food' method='post'>
		<label>메뉴 가격</label>
		<input type='text' readonly name='foodPrice' value='${vo.foodPrice }'/><br/>
		
		<label>메뉴 이름</label>
		<input type='text' name='foodName' size='90' value='${vo.foodName }'/><br/>
		
		<label>메뉴 종류</label>
		<input type='text' name='foodType' size='90' value='${vo.foodType }'/><br/>


		<fieldset><legend>[ 첨부된 파일 ]</legend>
				<div>
					<span><img src="./w_images/${vo.foodSysFile }" alt width="340" class="w_menu_image"></span>
				</div>
		</fieldset>



	    
		<input type='button' id='w_btnModify' class="w_btnPhoto1" value='수정'/>
		<input type='button' id='w_btnFind' class="w_btnPhoto2" onclick="location.href='w_menu.jsp'" value='목록으로'/>
		
		<input type='hidden' name='foodCode' value='${vo.foodCode}'/>

	</form>
<script>fd.func()</script>
</body>
</html>