<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<div id='header1'>결과</div>
	${msg }

	<form name='frm_food' id='frm_food' method='post'>
		
		<input type='button' id='w_btnMenu' onclick="location.href = 'w_menu.jsp' " value='목록으로' /> 
		
	</form>
  <script>fd.func()</script>
</body>
</html>