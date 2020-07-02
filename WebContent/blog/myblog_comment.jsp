<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
	String mId = "";
	if(session.getAttribute("mId") != null){
 		mId = (String)session.getAttribute("mId");	
	}
%>
<div id="c_cmt">
	<c:if test="${not empty cmtList}">
	  	<span id="c_cmt_title">댓글 ${cmtList[0].cnt}</span>
	    <hr/>
		<c:forEach var="cmt" items="${cmtList}">
			<c:choose>
				<c:when test="${cmt.cmtRepl eq 0}">
					<div class="c_cmt">
				    	<img src="./blog_image/cat.jpg" class="img-circle">
				      	<div class="dropdown c_cmt_manage">
				   			<span class="dropdown-toggle" data-toggle="dropdown">
								<span class="glyphicon glyphicon-option-vertical" aria-hidden="true"></span>
				   			</span>
				      		<ul class="dropdown-menu">
				      		<c:set var="loginId" value="<%=mId %>"/>
				      			<c:choose>
				      			<c:when test="${cmt.cmtMid eq loginId}">
					      			<li class="c_modify" data-toggle="modal" data-target="#myModal" onclick="blog.cmtModify(${cmt.cmtNo},'${cmt.cmtContent}')"><span>수정</span></li>
					      			<li class="c_delete" onclick="blog.cmtDelete(${cmt.cmtNo})"><span>삭제</span></li>
				      			</c:when>
				      			<c:otherwise>
				      				<li class="c_blame"><span>신고</span></li>
				      			</c:otherwise>
				      			</c:choose>
				      		</ul>
				  		</div>
				      	<div class="c_cmtMid">${cmt.cmtMid}</div>
				      	<div class="c_cmtDate">${cmt.cmtDate}</div>
				      	<div class="c_cmtContent">${cmt.cmtContent}</div>
				      	<div class="c_btnRepl" data-toggle="modal" data-target="#myModal">답글</div>
					</div>
				</c:when>
				<c:otherwise>
					<div class="c_repl">
						<img src="./blog_image/landscape.jpg" class="img-circle">
					    <div class="dropdown c_cmt_manage">
					   		<span class="dropdown-toggle" data-toggle="dropdown">
								<span class="glyphicon glyphicon-option-vertical" aria-hidden="true"></span>
					   		</span>
					      	<ul class="dropdown-menu">
					      		<c:choose>
						      		<c:when test="${cmt.cmtMid eq loginId}">
							      		<li class="c_modify" data-toggle="modal" data-target="#myModal" onclick="blog.cmtModify(${cmt.cmtNo},'${cmt.cmtContent}')"><span>수정</span></li>
							      		<li class="c_delete" onclick="blog.cmtDelete(${cmt.cmtNo})"><span>삭제</span></li>
						      		</c:when>
						      		<c:otherwise>
						      			<li class="c_blame"><span>신고</span></li>
						      		</c:otherwise>
					      		</c:choose>
					      	</ul>
					  	</div>
					    <div class="c_cmtMid">${cmt.cmtMid}</div>
					    <div class="c_cmtDate">${cmt.cmtDate}</div>
					    <div class="c_cmtContent">${cmt.cmtContent}</div>
					</div>
				</c:otherwise>
			</c:choose>
		</c:forEach>
	</c:if>
</div>
<form id="c_cmt_frm" name="c_cmt_frm" method="post">
	<input type="hidden" name="c_cmtNo" id="c_cmtNo"/>
	<input type="hidden" name="c_brdNo" value="${brdNo}"/>
	<input type="hidden" name="c_cmtBasicSet" id="c_cmtBasicSet"/>
	<input type="hidden" name="c_cmtMid" value="<%=mId%>"/>
	<div id="c_cmtInsert">
		<textarea id="c_cmtContent" name="c_cmtContent" placeholder="댓글을 입력해주세요."></textarea>
		<label><input type="checkbox" id="c_cmtSecret"/> 비밀글</label>
		<input type="button" id="c_btnCmtInsert" value="댓글 남기기" onclick="blog.cmtInsert()"/>
	</div>
	<!-- 수정 & 답글 모달 -->
	<div id="myModal" class="modal fade" role="dialog">
		<div class="modal-dialog">
		    <div class="modal-content">
		    	<div class="modal-header">
			        <button type="button" class="close" data-dismiss="modal">&times;</button>
			        <h4 class="modal-title">댓글 수정</h4>
				</div>
			    <div class="modal-body">
			    	<img id="c_modifyImg" src="./blog_image/landscape.jpg" class="img-circle">
			    	<span id="c_modifyMid"><%=mId%></span><br/>
			    	<textarea id="c_modifyContent" name="c_modifyContent"></textarea>
			    </div>
			    <div class="modal-footer">
			        <button type="button" id="c_btnCmtModify_Close" class="btn btn-default" data-dismiss="modal">취소</button>
			        <button type="button" id="c_btnCmtModify_Con" class="btn btn-default" onclick="blog.cmtModifyR()">확인</button>
		    	</div>
			</div>
		</div>
	</div>
</form>