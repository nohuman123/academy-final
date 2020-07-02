<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>	
<%-- <%@ page import="java.util.Date"%>
<%@ page import="java.util.Calendar"%>
<%@ page import="java.text.SimpleDateFormat"%>
<%
//오늘
Date now = new Date();        
SimpleDateFormat date = new SimpleDateFormat("yyyy.MM.dd E");
String today = date.format(now);

SimpleDateFormat date2 = new SimpleDateFormat("yyyy.MM.dd");
String today2 = date.format(now);

//일주일 전
Calendar week = Calendar.getInstance();
week.add(Calendar.DATE , -7);
String beforeWeek = new SimpleDateFormat("yyyy.MM.dd").format(week.getTime());
//한달
Calendar mon = Calendar.getInstance();
mon.add(Calendar.MONTH , -1);
String beforeMonth = new SimpleDateFormat("yyyy.MM").format(mon.getTime());
%> --%>

<div id="myblog_Mstat">
	<div class="container-fluid">
		<div class="row">
			<div class="col-xs-12">
				<h3>방문 통계</h3>
				<div id="c_visitor">
					<dl class="c_countVisitor">
						<dt>오늘 방문수</dt>
						<dd>10</dd>
					</dl>
					<dl class="c_countVisitor">
						<dt>어제 방문수</dt>
						<dd>0</dd>
					</dl>
					<dl class="c_countVisitor">
						<dt>누적 방문수</dt>
						<dd>10</dd>
					</dl>
				</div>
				<div id="c_visitorStat">
					<span id="c_statDate">날짜 출력하기!</span>
					<div class="btn-group" role="group">
					    <button type="button" class="btn btn-default">일간</button>
					    <button type="button" class="btn btn-default">주간</button>
					    <button type="button" class="btn btn-default">월간</button>
					</div>
					<div id="c_bestBrd">인기글</div>
					<div class="c_MbrdItem">
						<div class="c_brdHeaderImg">
							<img src="./blog_image/life.jpg" class="img-rounded">
						</div>
						<div class="c_Btitle" onclick="blog.brdView()">나는 게시물 제목2</div>
						<span class="c_Bcategory">카테고리 1</span>
						<span class="c_BmId">나는 아이디2</span>
						<br/>
						<span class="c_BDate">2020-05-12 11:44</span>
						<span class="c_Bcmt">댓글10</span>
					</div>
				</div>
			</div>
		</div>
	</div>
</div>