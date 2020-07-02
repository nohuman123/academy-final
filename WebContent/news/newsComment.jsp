<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<div class="count_comment_s">
	<h5>${cnt}개</h5>
</div>
<div class="input-group mb-3">
	<input type="text" name="content" id="cC_s" class="form-control cContent" placeholder="댓글을 입력해주세요"/>
	<div class="input-group-append">
		<button class="btn btn-outline-secondary" type="button"
			id="button-addon2" onclick="news_comment()">입력</button>
	</div>
</div>
<div class="cmt_box">
	<ul class="list_category">
		<li>추천순</li>
		<li>등록순</li>
	</ul>
</div>
<div id="commnet_s">
	<div class="comments-area">
	<c:forEach var="i" items="${comment}" varStatus="ii">
	<fmt:formatDate value="${i.cDate}" var="fmtDate" pattern="yyyy-MM-dd"/>
	<c:set var="indent" value="${i.cIndent }"/>
	<c:set var="index" value="${ii.index }"/>
	<c:set var="group" value="${i.cGroup}"/>
		<c:if test="${indent eq 0}">
		<input type="hidden" value="${i.cSerial}" class="serial${ii.index}">
		<input type="hidden" value="${i.cIndent}" class="indent${ii.index}">
		<input type="hidden" value="${i.cGroup}" class="cg${ii.index}"/>
		<div class="comment-list">
			<div class="single-comment justify-content-between d-flex">
				<div class="user justify-content-between d-flex">
					<div class="desc">
						<div class="d-flex justify-content-between">
							<div class="d-flex align-items-center">
								<h5>
									<a href="#">${i.mName}</a>
								</h5>
								<p class="date">${fmtDate}</p>
							</div>
						</div>
						<p class="comment">${i.cContent}</p>
						<div class="d-flex justify-content-between">
								<div class="reply-btn reply_count${ii.index}" onclick='hide_come(${ii.index})'>
											답글
								</div>
						</div>
					</div>
				</div>
				<div class="test_s">
					<div class="dropdown img_cmt2">
						<a class="dropdown-toggle" href="#" role="button" id="dropdownMenuLink" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
							<img src="./img/icon/vertical-dots.png" > 
						</a>
						<div class="dropdown-menu" style="min-width: 5rem" aria-labelledby="dropdownMenuLink">
							<a class="dropdown-item" href="#" onclick="news_comment_delete('${ii.index}','${i.cGroup}')">삭제</a>
						</div>
					</div>									
					<div>
						<br />
						<br />
					</div>
					<div>
						<span class="comment_recomm" style="float: right;">
							<c:choose>
								<c:when test="${not empty sessionScope.mName}">
									<button type="button" class="btn_g btn_recomm" onclick="like_func_s(${ii.index})" style="border: none; cursor: pointer;">
										<span class="img_cmt ico_recomm bounce"><img class="recomm${ii.index}" src="./img/news/unlike.png" style="width: 18px; height: 18px;"></span>
										<span class="num_txt num_txtr${ii.index}">
											${i.cLike}
										</span>
									</button>
								</c:when>
								<c:otherwise>
									<button type="button" class="btn_g btn_recomm" onclick="login_s()" style="border: none; cursor: pointer;">
										<span class="img_cmt ico_recomm bounce"><img src="./img/news/unlike.png" style="width: 18px; height: 18px;"></span> 
										<span class="num_txt">
											${i.cLike}
										</span>
									</button>
								</c:otherwise>
							</c:choose>
							<c:choose>
								<c:when test="${not empty sessionScope.mName}">
									<button type="button" class="btn_g btn_oppose" onclick="diLike_func_s(${ii.index})" style="border: none; cursor: pointer;">
										<span class="img_cmt ico_oppose bounce"><img class="oppose${ii.index}" src="./img/news/like.png" style="width: 18px; height: 18px;"></span> 
										<span class="num_txt num_txto${ii.index}">
											${i.cDiLike}
										</span>
									</button>
								</c:when>
								<c:otherwise>
									<button type="button" class="btn_g btn_oppose" onclick="login_s()" style="border: none; cursor: pointer;">
										<span class="img_cmt ico_oppose bounce"><img src="./img/news/like.png" style="width: 18px; height: 18px;"></span> 
										<span class="num_txt">
											${i.cDiLike}
										</span>
									</button>
								</c:otherwise>
							</c:choose>
						</span>
					</div>
				</div>
			</div>
		</div>
		<!-- 대댓글 시작-->
		</c:if>
		<div class="hide_comment${index} hide_come">
			<div class="comment-list2">
				<div class="input-group mb-3" style="padding-top: 5px;">
					<input type="text" id="cC_s2" class="form-control reC${ii.index}" placeholder="댓글을 입력해주세요" aria-label="Recipient's username" aria-describedby="button-addon2">
					<div class="input-group-append">
						<button class="btn btn-outline-secondary" type="button" id="button-addon2" onclick="news_re_comment(${ii.index})">입력</button>
					</div>
				</div>
				<c:forEach items="${reComment}" var="re" varStatus="ri">
				<fmt:formatDate value="${re.cDate}" var="reDate" pattern="yyyy-MM-dd"/>
				<c:set var="reGroup" value="${re.cGroup }"/>
				<c:if test="${reGroup eq group }">
				<input type="hidden" value="${re.cSerial}" class="sserial${ri.index}">
				<input type="hidden" value="${re.cIndent}" class="iindent${ri.index}">
				<div class="single-comment justify-content-between d-flex">
					<div class="user justify-content-between d-flex">
						<div class="desc">
							<div class="d-flex justify-content-between">
								<svg class="bi bi-arrow-return-right" width="1em" height="1em" viewBox="0 0 16 16" fill="currentColor" xmlns="http://www.w3.org/2000/svg">
							<path fill-rule="evenodd" d="M10.146 5.646a.5.5 0 01.708 0l3 3a.5.5 0 010 .708l-3 3a.5.5 0 01-.708-.708L12.793 9l-2.647-2.646a.5.5 0 010-.708z" clip-rule="evenodd" />
							<path fill-rule="evenodd" d="M3 2.5a.5.5 0 00-.5.5v4A2.5 2.5 0 005 9.5h8.5a.5.5 0 000-1H5A1.5 1.5 0 013.5 7V3a.5.5 0 00-.5-.5z"clip-rule="evenodd" />
						</svg>
								<div class="d-flex align-items-center">
									<h5>
										<a href="#">${re.mName}</a>
									</h5>
									<p class="date">${reDate}</p>
								</div>
							</div>
							<p class="comment">${re.cContent }</p>
						</div>
					</div>
					<!-- 삭제버튼 -->
					<div class="dropdown img_cmt2">
						<a class="" href="#" role="button" id="dropdownMenuLink" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
							<img src="./img/icon/vertical-dots.png" > 
						</a>
						<div class="dropdown-menu" style="min-width: 5rem" aria-labelledby="dropdownMenuLink">
							<a class="dropdown-item" href="#" onclick="news_comment_deletes('${ri.index}')">삭제</a>
						</div>
					</div>
					<!-- 삭제버튼  끝-->
				</div>
				<hr class="hr_s" />
				</c:if>
				</c:forEach>
			</div>
		</div>
		<!-- 대댓글 끝-->
	</c:forEach>
	</div>
</div>
</body>
</html>