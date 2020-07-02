<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>   
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">
<script src="../main_lib/js/jquery-3.4.1.js"></script>
<link rel="stylesheet" href="../main_lib/css/root_lol.css">
<script src="../main_lib/js/root_lol.js"></script>
</head>
<body id="ls_body">


	<div class="container-fluid" id="top_con">
		<div id="top_nav">
			<div class="col-sm-10">
				<span id="ls_logo" onclick="location.href='../root/gg.mem'">ROOT.GG</span>
			</div>
			<div class="col-sm-2">
				<form action="lol.mem">
					<input type="text" name="findStr" id="ls_findStr">
				</form>
			</div>
		</div>
	</div>
	<div class="container" id="ls_main">
		
		
		<img src="${imgURL }" width="100px">
		<span id="ls_level">${summoner.summonerLevel }</span>
		<span id="sum_id">${summoner.name }</span>
		<button type="button" id="ls_reload">전적 갱신</button>
	</div>
	<hr id="ls_hr">
	
	<div class="container">
			<div id="rank_Info" class="col-sm-4">
				<div class="col-sm-5">
					<img alt="티어" src="${tierImgURL }" id="ls_tier">
				</div>
				<div class="col-sm-7" id="ls_tierInfo">
					<br>
					${leagueInfo.queueType }
					<c:if test="${leagueInfo.queueType == 'RANKED_SOLO_5x5' } }">
						<span>솔로 랭크</span>
					</c:if>
					<br>
					<span id="ls_point">${leagueInfo.leaguePoints }LP</span>
					<br>
					<span>${leagueInfo.wins}승 </span>
					<span>${leagueInfo.losses }패</span>
					<br>
					<span>승률 </span>
					<c:set var="ls_rate" value="${leagueInfo.wins/(leagueInfo.wins + leagueInfo.losses)*100 }"/>
					<fmt:formatNumber value="${ls_rate }" pattern="#,###.#"/>%
				</div>
			</div>
		
			<!-- stat.win으로 이겼으면 파랑 -->
			<h3>최근 전적</h3>
			<div id="game_detail" class="col-sm-7"> 
					<div class="col-sm-12">
						승리!!
					</div>
					<div class="col-sm-7" id="g_left">
						<!-- 사진 -->
						<div class="col-sm-2">

							<img src="http://ddragon.leagueoflegends.com/cdn/10.11.1/img/champion/${champ }.png" width="100px" id="gd_img">
						</div>
						<!-- 스펠 -->
						<div class="col-sm-1">
							<img src="../main_lib/images/spell/spell${MyInfo.spell1Id}.png" width="40px">
							<img src="../main_lib/images/spell/spell${MyInfo.spell2Id}.png" width="40px">			
						</div>
						<!-- kda -->
						<div class="col-sm-3" id="gd_kda">
							<h5>킬뎃</h5>
							<span id="kda">${stat.kills }킬</span><br>
							<span id="kda2">${stat.deaths }</span><span id="kda">데스</span><br>
							<span id="kda">${stat.assists }어시</span><br>
							<c:set var="cKDA" value="${(stat.kills+stat.assists)/stat.deaths }"/>
							<fmt:formatNumber value="${cKDA}" pattern="##.##" />:1 KDA	
						</div>	
						<!-- 아이템 -->
						<div class="col-sm-5">
							<h5>아이템</h5>
							<img src="http://ddragon.leagueoflegends.com/cdn/10.11.1/img/item/${stat.item0}.png" width="30px" height="30px" onerror="this.src='../main_lib/images/none.png'">
							<img src="http://ddragon.leagueoflegends.com/cdn/10.11.1/img/item/${stat.item1}.png" width="30px" height="30px" onerror="this.src='../main_lib/images/none.png'">
							<img src="http://ddragon.leagueoflegends.com/cdn/10.11.1/img/item/${stat.item2}.png" width="30px" height="30px" onerror="this.src='../main_lib/images/none.png'">
							<img src="http://ddragon.leagueoflegends.com/cdn/10.11.1/img/item/${stat.item6}.png" width="30px" height="30px" onerror="this.src='../main_lib/images/none.png'">
							<img src="http://ddragon.leagueoflegends.com/cdn/10.11.1/img/item/${stat.item3}.png" width="30px" height="30px" onerror="this.src='../main_lib/images/none.png'">
							<img src="http://ddragon.leagueoflegends.com/cdn/10.11.1/img/item/${stat.item4}.png" width="30px" height="30px" onerror="this.src='../main_lib/images/none.png'">
							<img src="http://ddragon.leagueoflegends.com/cdn/10.11.1/img/item/${stat.item5}.png" width="30px" height="30px" onerror="this.src='../main_lib/images/none.png'">
						</div>
						
					</div>
			
					<!-- 소환사들 -->
					<div class="col-sm-1" id="gd_imgs">
						<c:forEach items="${tenC }" var="v" varStatus="s">
							<img src="http://ddragon.leagueoflegends.com/cdn/10.11.1/img/champion/${v }.png" width="19px">					
							<c:if test="${s.index == 4 }">
								<span id="vs">VS</span><br>
							</c:if>
						</c:forEach>
					</div>
					<div class="col-sm-4" id="gd_ids">
						<c:forEach items="${Players }" var="v" varStatus="s">
							<c:if test="${s.index < 5 }">

								${v.summonerName } 
								<br>				
							</c:if>
							<c:if test="${s.index == 5}">
								<span id="vs">VS</span><br>
							</c:if>
							<c:if test="${s.index > 4 }">
								
								${v.summonerName } 
								<br>				
							</c:if>
						</c:forEach>
					</div>
			</div>
				
			
	
	</div>
	



<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js"></script>
</body>
</html>