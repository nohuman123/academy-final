<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

</head>
<body>

	<div class="container" id="news">
		<header>
			<form onsubmit="this.action=search()" id="frm_search">
				<div class="input-group">
					<input type="text" id="search" name="search" class="form-control" placeholder="곡 검색" autocomplete="off">
					<span class="input-group-addon" onclick="search()"><img src="../sb_music/sb_lib/images/wm.png" id="search-left"></span>
				</div>
			</form>
		</header>
		
		
		<!-- 뉴스 -->
		<img src="../sb_music/sb_lib/images/news.png" width="130px">
		<div id="myCarousel" class="carousel slide">
			<div class="carousel-inner">
				<div class="item active">
					<div class="col-sm-4" onclick="window.open('https://www.hankookilbo.com/News/Read/202004241622343323?NClass=HF04')">
						<img src="../sb_music/sb_lib/images/rain.jpg">
						<br>
						<span>비 "정지훈"의 데뷔 19년 소감</span>
					</div>
					
					<div class="col-sm-4" onclick="window.open('https://www.sedaily.com/NewsView/1Z1K6ZIB21')">
						<img src="../sb_music/sb_lib/images/펭수.jpg" >
						<br>
						<span>세계 팽귄의 날을 기념하는 펭수의 첫 디지털 싱글</span>
					</div>
					
					<div class="col-sm-4" onclick="window.open('http://hiphople.com/news_world/16950017')">
						<img src="../sb_music/sb_lib/images/말론.jpg">
						<br>
						<span>포스트 말론의 'Circle' 빌보드 최장시간 Top10 기록!</span>
					</div>
				</div>
				
				<div class="item">
					<div class="col-sm-4" onclick="window.open('https://www.hankookilbo.com/News/Read/202004221084741333?NClass=HF04')">
						<img src="../sb_music/sb_lib/images/있지.jpg">
						<br>
						<span>ITZY의 'WANNABE' 뮤직비디오 1억뷰 달성!</span>
					</div>
					
					<div class="col-sm-4" onclick="window.open('https://www.ytn.co.kr/_sn/0117_202004241546155261')">
						<img src="../sb_music/sb_lib/images/b1a4.jpg" >
						<br>
						<span>B1A4, 데뷔 9주년 랜선 팬미팅 진행</span>
					</div>
					
					<div class="col-sm-4" onclick="window.open('http://www.kukinews.com/news/article.html?no=776295')">
						<img src="../sb_music/sb_lib/images/ㄷㄷㄷㅈ.jpg" width="310px" height="182px">
						<br>
						<span>머쉬베놈 '두둥등장'</span>
					</div>
				</div>
				<a class="left carousel-control" href="#myCarousel" data-slide="prev">‹</a>
                <a class="right carousel-control" href="#myCarousel" data-slide="next">›</a>
			</div>
		</div>
		
	</div>
	
	<hr>
	
	<div class="container" id="recommend">
		<img src="../sb_music/sb_lib/images/main_Text1.png" width="250px">
		<div align="center">
			<div class="col-sm-3">
				<img src="../sb_music/sb_lib/album/오마이걸-nonstop.PNG" width="200px;">
				<br>
				<span>NONSTOP-오마이걸</span>
			</div>
			<div class="col-sm-3">
				<img src="../sb_music/sb_lib/album/조정석-아로하.PNG" width="200px;">
				<br>
				<span>아로하-조정석</span>
			</div>
			<div class="col-sm-3">
				<img src="../sb_music/sb_lib/album/방탄-on.PNG" width="200px;">
				<br>
				<span>Map Of The Soul-방탄소년단</span>
			</div>
			<div class="col-sm-3">
				<img src="../sb_music/sb_lib/album/처음처럼.PNG" width="200px;">
				<br>
				<span>CEREMONIA-M.C The MAX</span>
			</div>
		</div>
	</div>

	<hr>
	
	<!-- top10 -->
	<div class="container" id="top10">
		<img src="../sb_music/sb_lib/images/top10.png">
		<div id="top10_list">
			<div class="col-sm-2">
				순위
			</div>
			<div class="col-sm-3">
				곡명
			</div>
			<div class="col-sm-3">
				가수
			</div>
			<div class="col-sm-1">
				듣기
			</div>
			<div class="col-sm-1">
				뮤비
			</div>
			<div class="col-sm-1">
				담기
			</div>
			<div class="col-sm-1">
				다운
			</div>
		</div>
		
		
		
		<c:forEach var="v" items="${top10 }" varStatus="s">
			<div id="top10_select">
				<div class="col-sm-2">
					<span id="ten1">${s.count}</span> 
				</div>
				<div class="col-sm-3">
					<span id="ten2" class="tops" onclick="info('${v.music_serial}')">${v.music_name }</span>
				</div>
				<div class="col-sm-3">
					<span id="ten3" class="tops">${v.artist_name }</span>
				</div>
				<div class="col-sm-1">
					<span id="ten4" class="tops" onclick="play('${v.music_serial}')">듣기</span>
				</div>
				<input type="hidden">
				<div class="col-sm-1">
					<span id="ten5" class="tops" onclick="movie('${v.music_serial}')">뮤비</span>
				</div>
				<div class="col-sm-1">
					<span id="ten6" class="tops" onclick="kimchi('${v.music_serial}')">담기</span>
				</div>
				<div class="col-sm-1">
					<span id="ten7" class="tops">다운</span>
				</div>
				
				
				<hr>
			</div>
			
		</c:forEach>
	
	</div>

</body>
</html>