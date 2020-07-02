<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="../sb_music/sb_lib/css/sb_membership.css">
</head>
<body>

<%
	String mId = "guest";
	if(session.getAttribute("mId") != null){
		mId = (String)session.getAttribute("mId");
	}
	
	
	
	
%>

	<div id="mem_body">
		<div id="mem_head" align="center">
			<br>
			WaterMelon에서만 경험할 수 있는 WM멤버쉽
		</div>
		<div class="conatiner-fluid">
			<div align="center" id="mem_neck">
				워터멜론 멤버쉽 구독
			</div> 
			<br>
			<div align="center" id="redtop">
			<br>
			<hr>
				<span id="red">현재 특가 EVENT!!</span> <span>첫 구독 시 첫달 무료 이벤트 진행</span><br>
				지금 아니면 불가능한 가격 <br>
				
				
				<button id="mem_sel">무제한 스트리밍 <br> 월 0원 > 다음달 9900원</button>
				<span id="mem_small">
					<br>
					● 멤버쉽은 해지하기 어려울 수 있습니다.<br>
					● 환불은 본사의 적절한 적차에 의해 적용되며 얼마나 걸릴지는 모릅니다.<br>
					● 결제 후 해지사유가 적절하지 않을 시 해지가 되지 않을수도 있습니다.<br>
					● 구독비용이 통보 없이 오를 수 있습니다. <br>
				</span>
			<form action="sb_pay.jsp">
				<input type="hidden" id="mId" name="mId" value="<%=mId%>">
				
				<button type="submit" id="mem_pay">
					구독하기
				</button>
		
			</form>
				
				
				<br><br><br><br><br>
				
				
			</div>
			
			
			
			
		</div>
	</div>
<script type="text/javascript" src="../sb_music/sb_lib/js/sb_membership.js"></script>
</body>
</html>