<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
	String mId = "";
	if(session.getAttribute("mId") != null){
		mId = (String)session.getAttribute("mId");
	}
%>



<form id="frm_resultPay" name="frm_resultPay">
	<input type="hidden" id="mId" name="mId" value="<%=mId%>">
</form>


<script src="../sb_music/sb_lib/js/jquery-3.4.1.js"></script>



<script type="text/javascript" src="../sb_music/sb_lib/js/sb_resultPay.js"></script>
</body>
</html>