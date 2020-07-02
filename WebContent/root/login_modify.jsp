<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="../root/sb_music/sb_lib/css/bootstrap.min.css">
<link rel="stylesheet" href="../root/sb_music/sb_lib/css/bootstrap-theme.min.css">
<link rel="stylesheet" href="../root/sb_music/sb_lib/css/sb_register.css">
<script src="../root/sb_music/sb_lib/js/jquery-3.4.1.js"></script>
<script src="../root/sb_music/sb_lib/js/jquery-ui.js"></script>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
#frm_mm{
    position: absolute;
    top: 5%;
    left: 21%;
    border: solid 1px gray;
    width: 800px;
    height: 800px;
}

/*input[type="text"], input[type="password"], input[type="email"], textarea {
    -moz-appearance: none;
    -webkit-appearance: none;
    -o-appearance: none;
    -ms-appearance: none;
    appearance: none;
    background: none;
    border: solid 1px #888888;
    color: inherit;
    display: block;
    outline: 0;
    padding: 0.75em;
    text-decoration: none;
    width: 54%;
} */
</style>

</head>
<body>
	<div id='header'>회원 정보 수정 </div>
<div>
	<form name='frm_mm' id='frm_mm' method='post'>
			<!-- UI  -->
			<label>아이디</label>
			<input id="wId" type='text' name='mId' value=""><br/>
			<label>성 명</label>
			<input id="wName" type='text' name='mName' value=""><br/>
			<label>가입일</label>
			<input id="wDate" type="da" name="rdate" value=""><br/>
			<%-- <fmt:formatDate value="" var="rdate" pattern="yyyy-MM-dd"/> --%>
            <label>연락처</label>
            <input id="wPhone" type="text" name="phone" value=""><br/>
            <label>이메일</label>
            <input id="wEmail" type="text" name="email" value=""><br/>
            
            
		<input type='button' id='btnUpdate' value='회원 수정'/>
		<input type='button' id='btndelete' value='회원 탈퇴'/>
		<input type='button' id='btnFind'   value='목록으로'/>
		
	</form>
</div>
</body>
</html>