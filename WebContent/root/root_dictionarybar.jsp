<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="../main_lib/css/w_root_dictionary.css">
<link rel="stylesheet" href="../main_lib/css/bootstrap.min.css">

<script src="../main_lib/js/jquery-3.4.1.js"></script>
<script src="../main_lib/js/bootstrap.min.js"></script>
</head>
<body>
<div id="w_body">
	<div id="w_header" >
	 <a href="../index.jsp"><img style="width=100; pxpadding-top: 28px;" src="../main_lib/images/root.png"></a>
	</div>
	<div id="w_search">
	 <h1 style="font-size: 23px;">사전 검색</h1>
	</div>
	<div id="w_searchbar">
	 <input type="text" id="w_bar" value="">
	</div>
	<div id="w_searchbut">
	 <input type="button" id="w_btnSearch" value="검색">
	</div>
</div>
<div id="w_border1">
<jsp:include page="root_dictionary.jsp"></jsp:include>

</div>	
</body>
</html>