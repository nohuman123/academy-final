<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="./js/jquery-3.4.1.js"></script>
<script src="./js/jquery.dropotron.min.js"></script>
<script src="./js/w_brand.js"></script>
</head>
<body>
   <c:forEach var="i" items="${list }">
	<div onclick="fd.foodv('${i.foodCode}')" class="tab_content" style="display: block;">
		   <ul>
			<li><img src="./w_images/${i.foodSysFile }" alt width="340" class="w_menu_image">
			<h3 class="w_h1">
			  ${i.foodName } <img src="./w_images/w_best.jpg" alt="인기" width="32" class="w_best">
		     </h3>
			<p>
			<span>${i.foodPrice }원</span>
		  	</p>
		  </li>
		</ul>
	</div>
	</c:forEach>
</body>
</html>