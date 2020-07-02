<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="../sb_music/sb_lib/css/sb_page.css">
</head>
<body>
	
	<div class="container" id="top100" >
		<div class="col-sm-12" id="top_h">
			<span id="top_head">현재 top100</span> 
			<div align="right">
				<button id="playAll">▶  전체 재생</button>
			</div>
			<br><br><br>
			<hr>
		</div>
		<br><br><br>
		
		<div class="col-sm-12" id="top_header">
			<div class="col-sm-2">
				앨범 사진
			</div>
			<div class="col-sm-1">
				곡 순위
			</div>
			<div class="col-sm-3">
				곡 이름
			</div>
			<div class="col-sm-3">
				가수
			</div>
			<div class="col-sm-1">
				듣기
			</div>
			<div class="col-sm-1">
				가사
			</div>
			<div class="col-sm-1">
				다운
			</div>
		</div>
		
		<c:forEach var="v" items="${top100}" varStatus="s">
			<div id="top100_list" class="col-sm-12">
				<div class="col-sm-2">
					<img src="../sb_music/sb_lib/album/${v.album_photo }.PNG" width="80px;">
				</div>
				<div class="col-sm-1" id="top_c">
					${s.count }
				</div>
				<div class="col-sm-3" id="top_c">
					${v.music_name }
				</div>
				<div class="col-sm-3" id="top_c">
					${v.artist_name }
				</div>
				<div class="col-sm-1" id="top_c">
					<span id="top_m" onclick="play2(${v.music_serial})">듣기</span>
				</div>
				<div class="col-sm-1" id="top_c">
					<span id="top_m" onclick="">가사</span>
				</div>
				<div class="col-sm-1" id="top_c">
					<span id="top_m">다운</span>
				</div>
			</div>
		</c:forEach>
		
	</div>
	
	
	
</body>
</html>