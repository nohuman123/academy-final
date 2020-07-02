<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
	String mId = "";
	if(session.getAttribute("mId") != null){
 		mId = (String)session.getAttribute("mId");	
	}
%>
<div id="c_dimmedSidebar"></div>
<form id="c_brd_frm" name="c_brd_frm" method="post">
	<input type="hidden" name="c_brdNo" id="c_brdNo" value="${board.brdNo}"/>
	<input type="hidden" name="c_mId" id="c_mId" value="${myblogHeader.mId}"/>
	<input type="hidden" name="c_cName" id="c_cName"/>
	<input type="hidden" name="c_bNo" id="c_bNo" value="${board.bNo}"/>
	<input type="hidden" name="c_likeFlag" id="c_likeFlag"/>
</form>
<aside id="c_sidebar">
	<div id="c_innerSidebar">
		<button type="button" class="btn btn-default btn-lg x" id="c_sidebar_close">
  			<span class="glyphicon glyphicon-remove" aria-hidden="true"></span>
		</button>
		<button type="button"class="btn btn-default btn-lg home" onclick="blog.otherBlog()">
	  		<span class="glyphicon glyphicon-home" aria-hidden="true"></span> ${myblogHeader.bTitle}
		</button>
		<div id="c_myblog_Cate">
			<c:forEach var="c" items="${myblogHeader.category}">
				<div class="c_CateItem" onclick="blog.category('${c.cName}')">${c.cName} <span>(${c.cnt})</span></div>					
			</c:forEach>
		</div>
		<hr/>
		<div id="c_myblog_manageTool">
			<button type="button" onclick="blog.brdInsert()">글쓰기</button>
			<button type="button" onclick="blog.manageMain()">블로그 관리</button>
		</div>
	</div>
</aside>
<div id="c_myBlog_header">
	<div class="container-fluid">
	    <div class="row">
	        <div class="col-xs-12">
	        	<img id="c_myBlog_headerImg" src="./blog_image/${board.brdHeader}">
	        	<img id="c_sidebar_open" src="./blog_image/menu2.png">
	        	<div id="c_myblogTitle" onclick="blog.otherBlog()">${myblogHeader.bTitle}</div>
	        	<div id="c_brdItem">
		        	<div id="c_brd_Subject">${board.subject}</div>
		        	<div id="c_brd_Date">${board.brdDate}</div>
	        	</div>
	        </div>
	    </div>
	</div>
</div>
<div id="c_brd">
	<div class="container">
	    <div class="row">
	    	<div class="col-md-2"></div>
	        <div class="col-md-8">
		        <div id="c_brd_Cont">${board.content}</div>
		        <div id="c_brdTag">
		        	<h3>Tag</h3>
		        	<c:forEach var="t" items="${tagList}">
		        		<span>#${t}</span>
		        	</c:forEach>
		        </div>
	        	<div id="c_brd_btn_group">
	        		<c:choose>
	        			<c:when test="${board.brdLike == 0}">
  							<span id="c_btnBrdLike" class="glyphicon glyphicon-heart-empty" aria-hidden="true" onclick="blog.brdLike('<%=mId%>')">공감</span>
	        			</c:when>
	        			<c:otherwise>
  							<span id="c_btnBrdLike" class="glyphicon glyphicon-heart-empty" aria-hidden="true" onclick="blog.brdLike('<%=mId%>')">${board.brdLike}</span>
	        			</c:otherwise>
	        		</c:choose>
  					<div class="dropdown" id="c_brd_manage">
      					<span class="dropdown-toggle" data-toggle="dropdown">
  							<span class="glyphicon glyphicon-option-horizontal" aria-hidden="true"></span>
      					</span>
      					<c:set var="id" scope="session" value="<%=mId%>"/>
      					<c:choose>
	      					<c:when test="${myblogHeader.mId eq id}">
			        			<ul class="dropdown-menu">
			        			  <li><a href="#" onclick="blog.brdModify()">수정</a></li>
					      		  <li><a href="#" id="c_btnBrdDelete" onclick="blog.brdDelete(${board.brdNo}, '<%=mId%>')">삭제</a></li>
					      		  <li><a href="#" id="c_btnBrdPublic"> 공개로 전환</a></li>
					      		  <li><a href="#" id="c_btnBrdSecret"> 비공개로 전환</a></li>
			        			</ul>
	      					</c:when>
	      					<c:otherwise>
			        			<ul class="dropdown-menu">
			        			  <li><a href="#" >신고하기</a></li>
			        			</ul>
	      					</c:otherwise>
      					</c:choose>
      				</div>
	        	</div>
	        	<div id="c_cmtContent">
	        	</div>
	        </div>
	        <div class="col-md-2"></div>
	    </div>
	</div>
</div>
<c:forEach var="likeList" items="${board.likeMid}">
	<input type="hidden" name="c_likeMid" value="${likeList}"/>
</c:forEach>
<input type="hidden" id="loginId" value="<%=mId%>"/>
<script>
  	if ($("#c_btnBrdLike").text() != "0") { //해당 게시글에 공감 수가 있을 경우 실행
		var list = $("input[name=c_likeMid]");
		var listMid = new Array(list.length)
		
		//로그인한 회원과 DB에 공감을 누른 회원이 같으면 공감버튼 눌려져있도록
		for (var i=0; i<list.length; i++) {
			listMid[i] = list.eq(i).val();
			if ($("#loginId").val() == listMid[i]) { 
				$("#c_btnBrdLike").removeClass("glyphicon-heart-empty");
				$("#c_btnBrdLike").addClass("glyphicon-heart");
			}
		}
	}
  	
  	blog.cmtView();
	blog.myblog_func();
</script>