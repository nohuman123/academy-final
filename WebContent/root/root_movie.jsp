<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>영화</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">
<script src="../main_lib/js/jquery-3.4.1.js"></script>
<link rel="stylesheet" href="../main_lib/css/root_movie.css">
</head>
<body>

	<div class="container">
		<form id="frm_movie" action="movie.mem">
			<img id="logo" onclick="location.href='../index.jsp'" src="../main_lib/images/root.png">
			<span id="logo_t" onclick="location.href='root_movie.jsp'">영화</span>
			<input type="text" name="findStr" id="findStr" autocomplete="off">
		</form>
		<hr>
	</div>
	<div class="container-fluid">
		<div id="mvCarousel" class="carousel slide" data-ride="carousel">
			<ol class="carousel-indicators">
				<li data-target="#mvCarousel" data-slide-to="0" class="active"></li>
				<li data-target="#mvCarousel" data-slide-to="1"></li>
				<li data-target="#mvCarousel" data-slide-to="2"></li>
				<li data-target="#mvCarousel" data-slide-to="3"></li>
			</ol>
			
			<div class="carousel-inner" role="listbox">
				<div class="item active">
					<img src="../main_lib/images/m1.jpg">
				</div>
				
				<div class="item">
					<img src="../main_lib/images/m2.jpg">
				</div>
				<div class="item">
					<img src="../main_lib/images/m3.jpg">
				</div>
				<div class="item">
					<img src="../main_lib/images/m4.jpg">	
				</div>
				
			</div>
			
		</div>
	</div>
		
	
	







<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js"></script>
</body>
</html>