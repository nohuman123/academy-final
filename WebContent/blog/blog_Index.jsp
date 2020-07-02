<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>블로그</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">
<link href="https://cdn.jsdelivr.net/npm/summernote@0.8.18/dist/summernote.min.css" rel="stylesheet">
<link rel="stylesheet" href="./css/blog.css">
<link rel="stylesheet" href="./css/blog_manage.css">
<script src="./js/blog.js"></script>
<script src="./js/blog_manage.js"></script>
<script src="./js/jquery-3.4.1.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery-timeago/1.6.5/jquery.timeago.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery-timeago/1.6.5/locales/jquery.timeago.ko.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/summernote@0.8.18/dist/summernote.min.js"></script>
<script src="./js/summernote-ko-KR.js"></script>
<!-- <script src="https://cdn.jsdelivr.net/npm/chart.js@2.8.0"></script> 통계에 쓸 차트 -->
</head>
<body>
<%
	String inc = "./blog_header.jsp"; 
	if (request.getParameter("inc") != null) {
		inc = request.getParameter("inc");
	}
%>

<div id="c_blogMain">
	<%@ include file="blog_top.jsp"%>

	<div id="c_blogMainCon">
		<jsp:include page="<%=inc%>"/>
	</div>  		
	                                       
	<%@ include file="blog_footer.jsp"%>

</div>
</body>
</html>