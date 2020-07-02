<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css" integrity="sha384-9aIt2nRpC12Uk9gS9baDl411NQApFmC26EwAOH8WgZl5MYYxFfc+NcPb1dKGj7Sk" crossorigin="anonymous">
<link rel="stylesheet" href="../news/css/idPwFind.css">
<script src="../sb_music/sb_lib/js/jquery-3.4.1.js"></script>
<script src="../sb_music/sb_lib/js/jquery-ui.js"></script>
</head>
<body>
	<div class="container">
		<br><br><br><br>
		<div class="row">	
			<div class="col-sm-4"></div>
			<div class="col-sm-4">
				<div class="card">
					<h5 class="card-header">아이디 찾기</h5>
					<div class="card-body">
						<h5 class="card-title">찾으신 아이디</h5>
						<p class="card-text">${result}</p>
						<a href="${pageContext.request.contextPath}/login.jsp" class="btn btn-primary">로그인</a>
					</div>
				</div>
			</div>
			<div class="col-sm-4"></div>
		</div>
	</div>

<script src="../news/js/idPwFind.js"></script>
</body>
</html>