<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
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
<div id="w_border">
</div>
 <div id="w_borderline">
 
  <ul>
   <li style="font-size: 26px;">전체</li>
  </ul>
  
  <div id = "w_ba">
   <a href="../wpy/w_index.jsp"><img src="../wpy/w_images/w_foodB2.jpg"></a>
  </div>
 <c:forEach begin="0" end="10">
  <div id="w_dicmain">
   	<img id="w_img" src="../main_lib/images/dogimg.jpg">
     <ul id="w_tag">
     <a id="w_atag" href="#"><li>단어</li></a>
     <li>단어 정보:</li>
     </ul>
  </div>
 </c:forEach>
 </div>

<div>
<jsp:include page="../footer.jsp"></jsp:include>
</div>

</body>
</html>