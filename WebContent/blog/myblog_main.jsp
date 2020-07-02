<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<%
	String mId = "";
	if(session.getAttribute("mId") != null){
 		mId = (String)session.getAttribute("mId");	
	}
%>
<div id="c_dimmedSidebar"></div>
<form id="c_blog_frm" name="c_blog_frm" method="post">
	<input type="hidden" name="c_bNo" id="c_bNo" value="${myblogHeader.bNo}"/>
	<input type="hidden" name="c_brdNo" id="c_brdNo"/>
	<input type="hidden" name="c_cName" id="c_cName"/>
	<input type="hidden" name="c_mId" id="c_mId" value="${myblogHeader.mId}"/>
</form>
<aside id="c_sidebar">
	<div id="c_innerSidebar">
		<button type="button" id="c_sidebar_close" class="btn btn-default btn-lg x">
  			<span class="glyphicon glyphicon-remove" aria-hidden="true"></span>
		</button>
		<button type="button" class="btn btn-default btn-lg home" onclick="blog.otherBlog()">
  			<span class="glyphicon glyphicon-home" aria-hidden="true"></span> ${myblogHeader.bTitle}
		</button>
		<div id="c_myblog_Cate">
			<c:forEach var="c" items="${myblogHeader.category}">
				<div class="c_CateItem" onclick="blog.category('${c.cName}')">${c.cName} <span>(${c.cnt})</span></div>
			</c:forEach>
		</div>
		<hr/>
		<div id="c_myblog_manageTool">
			<button type="button" onclick="blog.brdInsert('<%=mId%>')">글쓰기</button>
			<button type="button" onclick="blog.manageMain()">블로그 관리</button>
		</div>
	</div>
</aside>
<div id="c_myBlog_header">
	<div class="container-fluid">
	    <div class="row">
	        <div class="col-xs-12">
	        	<img id="c_myBlog_headerImg" src="./blog_image/${myblogHeader.hPhoto}">
	        	<img id="c_sidebar_open" src="./blog_image/menu2.png">
	        	<div id="c_myblogTitle" onclick="blog.otherBlog()">${myblogHeader.bTitle}</div>
	        </div>
	    </div>
	</div>
</div>
<div id="c_myBlog_content">
	<div class="container">
	    <div class="row">
	        <div class="col-xs-12">
				<span id="c_myBlog_allBrd">${category.cName} <span class="badge">${category.cnt}</span></span>
	        	<div id="c_myBlog_list">
	        		<c:forEach  var="brdList" items="${myblogBrdList}">
	        			<c:if test="${brdList.basicSet == 0}">
			        		<div class="c_myBlog_brd_item" onclick="blog.brdView('${brdList.mId}', ${brdList.brdNo})">
			        			<c:choose>
	        						<c:when test="${empty brdList.brdHeader}">
	        							<img src="./blog_image/life.jpg" class="img-rounded">
	        						</c:when>
	        						<c:otherwise>
						       			<img src="./blog_image/${brdList.brdHeader}" class="img-rounded">
	    	    					</c:otherwise>
	        					</c:choose>
			        			<div class="c_brd_Subject">${brdList.subject}</div>
			        			<div class="c_brd_Cont">${brdList.content}</div>
			        			<div class="c_brd_Date">${brdList.brdDate}</div>
			        		</div>
	        			</c:if>
	        		</c:forEach>
	        	</div>	 	
	        </div>
	    </div>
	</div>
</div>

<div id="c_blog_paging">
	<div class="container">
		<div class="row">
			<div class="col-xs-12">
				<ul class="pager">
				  	<li>
				      <a href="#" aria-label="Previous">
				        <span aria-hidden="true"> < </span>
				      </a>
				    </li>
				    <li><a href="#">1</a></li>
				    <li><a href="#">2</a></li>
				    <li><a href="#">3</a></li>
				    <li><a href="#">4</a></li>
				    <li><a href="#">5</a></li>
				    <li>
				      <a href="#" aria-label="Next">
				        <span aria-hidden="true"> > </span>
				      </a>
				    </li>
				</ul>
		    </div>
		</div>
	</div>
</div>
<script> blog.myblog_func(); </script>
