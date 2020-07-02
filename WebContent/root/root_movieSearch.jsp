<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>   
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>영화 검색</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">
<script src="../main_lib/js/jquery-3.4.1.js"></script>
<link rel="stylesheet" href="../main_lib/css/root_movie.css">
</head>
<body>

	<div class="container">
		<form id="frm_movie">
			<img id="logo" onclick="location.href='../index.jsp'" src="../main_lib/images/root.png">
			<span id="logo_t" onclick="location.href='root_movie.jsp'">영화</span>
			<input type="text" name="findStr" id="findStr" autocomplete="off">
		</form>
		<hr>
	</div>
	
	
	<div class="container">
	<h2>영화 검색결과</h2>
	
		<c:forEach items="${movieList }" var="s">
			<div id="movie_div">
				<img src="${s.image }">
				<a href="${s.link }" id="mv_title">${s.title }</a>
				<br>
				<c:if test="${!empty s.subtitle }">
					<span id="mv_sub">${s.subtitle }</span>
				</c:if>
				<hr>
				<div id="mv_des">
					<c:if test="${!empty s.pubDate }">
						<span id="mv_sp">${s.pubDate }</span><br>
					</c:if>
					<c:if test="${!empty s.director }">
						<span id="mv_sp">감독 :</span>${s.director }<br>
					</c:if>
					<c:if test="${!empty s.actor }">
						<span id="mv_sp">배우 :</span>${s.actor }<br>
					</c:if>
					<c:if test="${!empty s.userRating }">
						<span id="mv_sp">평점 :</span> ${s.userRating }<br>
					</c:if>
				</div>
			</div>
			<br>
		</c:forEach>
	
	</div>
	
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js"></script>
</body>
</html>