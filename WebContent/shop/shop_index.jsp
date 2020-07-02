<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Insert title here</title>
<script src="./js/jquery-3.4.1.js"></script>
<script src="./js/shop.js"></script>
<link href="" rel="stylesheet">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">
<link href="./css/shop_index.css" rel="stylesheet">
<link href="./css/shop_main.css" rel="stylesheet">
<link href="./css/shop_itemMore.css" rel="stylesheet">
<link href="./css/shop_basket.css" rel="stylesheet">
<link href="./css/shop_payment.css" rel="stylesheet">
<link href="./css/shop_myPage.css" rel="stylesheet">
<link href="./css/shop_itemView.css" rel="stylesheet">
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js"></script>
</head>
<body>
<%
   String inc ="../main.shop"; 
   if (request.getParameter("inc") != null) {
      inc = request.getParameter("inc");
   }
%>
<div id="shop_body">
	<div class="container-fluid">
		<div class="row">
			<div class="col-xs-12">
				<%@include file="shop_header.jsp" %>
			</div>
			<div class="col-xs-12" id="main">			
				<jsp:include page="<%=inc%>" />
			</div>
			<div class="col-xs-12">
				<%@include file="shop_footer.jsp" %>
			</div>
		</div>
	</div>
</div>
</body>
</html>