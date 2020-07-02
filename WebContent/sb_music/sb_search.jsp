<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>최고의 포털 사이트 ROOT</title>
<link rel="icon" href="../main_lib/images/root.ico">
<link rel="stylesheet" href="../sb_music/sb_lib/css/sb_page.css">
</head>
<body>
	<div class="container" id="searchBody">
		<h3>검색 결과</h3>
		<br>
		<div class="container">
			<div class="col-sm-12" id="search_top">
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
				<hr>
			</div>
			<c:if test="${!empty search}">
				<c:forEach var="v" items="${search}" varStatus="s">
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
			</c:if>
			<c:if test="${empty search }">
				<h4>검색 결과가 없습니다.</h4>
			
			</c:if>
			
		</div>
	</div>

</body>
</html>