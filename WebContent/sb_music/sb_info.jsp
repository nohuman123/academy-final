<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="../sb_music/sb_lib/css/sb_page.css">
</head>
<body >

	<div class="container-fluid" id="info_body">
		<div class="col-sm-3" id="info_photo">
			<img src="../sb_music/sb_lib/images/info.png" width="130px">
			<br><br>
			<img src="../sb_music/sb_lib/album/${info.album_photo }.PNG" width="200px">
			<br>
			<span id="info_name">${info.music_name }</span>
			<br>
			<span id="info_artist">${info.artist_name }</span>
			<br>
			<div id="info_etc" class="col-sm-4">장르    </div><div class="col-sm-8" id="info_etc2">${info.genre }</div>
			<br>
			<div id="info_etc" class="col-sm-4">발매사  </div><div class="col-sm-8" id="info_etc2">${info.company }</div>
			<br>
			<div id="info_etc" class="col-sm-4">기획사  </div><div class="col-sm-8" id="info_etc2">${info.enter }</div>
			<br><br><br><br>
			<button id="playAll" onclick="play(${info.music_serial})">▶   듣기</button>
		</div>
		<div class="col-sm-9" id="info_id">
			
			
			<div class="col-sm-4" id="info_lylics">
				<img src="../sb_music/sb_lib/images/lylics.png" width="100px">
				<br><br>
				<span id="lylics">${info.lylics }</span>
			</div>
			<div class="col-sm-8" id="info_video">
				<img src="../sb_music/sb_lib/images/mv.png" width="100px">
				<br><br>
				<iframe width="500" height="300" src="${info.music_video}" frameborder="0" allow="accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
			</div>
		</div>
		
		
	</div>
	
	
</body>
</html>