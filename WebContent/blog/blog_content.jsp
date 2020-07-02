<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<form id="c_blog_frm" name="c_blog_frm" method="post">
	<input type="hidden" id="c_bNo" name="c_bNo"/>
	<input type="hidden" id="c_brdNo" name="c_brdNo"/>
	<input type="hidden" id="c_mId" name="c_mId"/>
</form>
<!-- 주제별 베스트 글 -->
<div id="c_mainBlog">
	<div id="c_bestContent">
		<div class="container">
		    <div class="row">
		    	<c:forEach var="i" items="${bestBrdList}">
			    	<div class="col-sm-4">
			 			<div class="thumbnail">
			   				<div onclick="blog.brdView('${i.mId}', ${i.brdNo})">
			   					<c:choose>
	        						<c:when test="${empty i.brdHeader}">
	        							<img src="./blog_image/life.jpg" class="img-rounded">
	        						</c:when>
	        						<c:otherwise>
			     			    		<img src="./blog_image/${i.brdHeader}">
			     		    		</c:otherwise>
			     		   		</c:choose>
								<div class="caption">
		          					<div class="c_bestSubject">${i.subject}</div>
		          					<p/>
		          					<div>
			          					<c:forEach var="t" items="${i.blogInfo}">
			          						<span>${t.bTitle}</span><br/>
			          					</c:forEach>
			          					<span class="c_bestMid">by ${i.mId}</span>
		          					</div>
		        				</div>
			    			</div>
			    		</div>
			    	</div>
		    	</c:forEach>
		    </div>
		</div>
	</div>
	<!-- 블로그 글 리스트 -->
   <div id="c_blogList">
		<div class="container">
	    	<div class="row">
	    		<c:forEach var="i" items="${brdList}">
		        	<div class="col-sm-12">
		        		<div class="c_blogList" onclick="blog.brdView('${i.mId}', ${i.brdNo})">
		        			<span class="c_listBrdImg">
			   					<c:choose>
	        						<c:when test="${empty i.brdHeader}">
	        							<img src="./blog_image/life.jpg" class="img-rounded">
	        						</c:when>
	        						<c:otherwise>
				        				<img src="./blog_image/${i.brdHeader}" class="img-rounded"/>
	        						</c:otherwise>
	        					</c:choose>
		        			</span>
		        			<div class="c_listCont">
		        				<div class="c_listData">
		        					<!-- <span class="c_listCate">카테고리</span>
		        					<br><br> -->
		        					<time class="c_listBrdDate" datetime="${i.brdDate}"></time><br>
		        					<span>공감 <span class="badge">${i.brdLike}</span></span>
		        				</div>
		        				<div class="c_listSubject">${i.subject}</div>
		        				<div class="c_listInnerCont">${i.content}</div>
		        			</div>
		        			<div class="c_listInfo">
				        		<c:forEach var="bInfo" items="${i.blogInfo}">
			        				<span class="c_listUserImg">
			        					<img src="./blog_image/${bInfo.mPhoto}" class="img-circle">
			        				</span>
			        				<span class="c_listTitle">${bInfo.bTitle}</span>
			        			</c:forEach>
		        				<span class="c_listMid">by ${i.mId}</span>
		        			</div>
		        		</div>
		        	</div>
	        	</c:forEach>
    		</div>
    	</div>
	</div>
</div>
<script>
	$(".c_listInnerCont p").each(function(){
		$(this).closest(".c_listInnerCont").append($(this).text());
	    $(this).remove();
		$(".c_listInnerCont p br").remove();
	});
	$(".c_listInnerCont div").each(function(){
		if (!$(".c_listInnerCont div").text().trim().length) {
	    	$(".c_listInnerCont div").remove();
	    }
	});
	$(".c_listInnerCont img").each(function(){
		$(this).remove();
	});

	//게시물 시간
	$(document).ready(function(){
		$("time.c_listBrdDate").timeago();
	});
</script>
