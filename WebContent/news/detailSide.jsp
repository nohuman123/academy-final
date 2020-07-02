<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>   
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<aside class="single_sidebar_widget post_category_widget d-none d-lg-block">
		<div class="top_view_s">
			<h3 class="widget_title">많이 본 뉴스</h3>
			<div class="view_sub_s">
				<span onclick="news_detail_side('경제')">경제</span>
				<span onclick="news_detail_side('정치')">정치</span>
				<span onclick="news_detail_side('IT')">IT</span>
			</div>
		</div>
		<div class="">
			<ol class="ordered-list">
				<c:forEach var="i" items="${list2}" varStatus="ii">
					<li onclick="news_detail2('${ii.index}')">
						<span>${i.nTitle}</span>
						<input type="hidden" value="${i.nSerial}" class="serial2${ii.index}"/>
					</li>
				</c:forEach>
			</ol>
		</div>
	</aside>
</body>
</html>