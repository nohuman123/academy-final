<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<div id="myblog_Mcmt">
	<div class="container-fluid">
		<div class="row">
			<div class="col-xs-12">
				<h3>댓글 관리</h3><span id="c_Mcmt_count"> 1033</span>
				<div id="c_McmtSearch">
					<div class="dropdown more">
			       		<span class="dropdown-toggle" data-toggle="dropdown" role="button" aria-expanded="false">
			        		보기 <span class="glyphicon glyphicon-chevron-down" aria-hidden="true"></span>
			        	</span>
				        <ul class="dropdown-menu" role="menu">
				        	<li role="presentation"><a role="menuitem" tabindex="-1" href="#">모든 댓글 보기</a></li>
						    <li role="presentation" class="divider"></li>
						    <li role="presentation" class="dropdown-header">상태별 보기</li>
						    <li role="presentation"><a role="menuitem" tabindex="-1" href="#">전체</a></li>
						    <li role="presentation"><a role="menuitem" tabindex="-1" href="#">공개</a></li>
						    <li role="presentation"><a role="menuitem" tabindex="-1" href="#">비공개</a></li>
						    <li role="presentation" class="divider"></li>
						    <li role="presentation" class="dropdown-header">카테고리별 보기</li>
						    <li role="presentation"><a role="menuitem" tabindex="-1" href="#">카테고리 전체보기</a></li>
						    <li role="presentation"><a role="menuitem" tabindex="-1" href="#">카테고리 없음</a></li>
						    <li role="presentation"><a role="menuitem" tabindex="-1" href="#">카테고리 1</a></li>
						    <li role="presentation"><a role="menuitem" tabindex="-1" href="#">카테고리 2</a></li>
				        </ul>
			        </div>
			        <input type="text" id="c_cmtFindStr" placeholder="댓글 관리에서 검색합니다." autofocus="autofocus">
			        <button type="button" class="btn btn-default" id="c_btnCmtFind">
			        	<span role="presentation" class="glyphicon glyphicon-search"><span> 검색</span></span>
			        </button>
				</div>
				<div id="c_McmtList">
					<div class="c_McmtItem">
						<span class="c_cmtMid">@나는 댓글 단 사람 아이디1</span>
						<span class="c_cmtDate">2020-05-12 12:14</span>
						<div class="c_cmtContent">나는 댓글내용이얌1 </div>
						<div class="c_brdTitle">
							<span role="presentation" class="glyphicon glyphicon-file"></span> 댓글 단 게시물 제목1
						</div>
						<div class="c_Mcmt_btnGroup">
							<button type="button" data-toggle="modal" data-target="#myModal">답글</button>
							<button type="button" class="c_btnCmtDelete">삭제</button>
						</div>
					</div>
					<div class="c_McmtItem">
						<span class="c_cmtMid">@나는 댓글 단 사람 아이디2</span>
						<span class="c_cmtDate">2020-05-12 12:29</span>
						<div class="c_cmtContent">나는 댓글내용이얌2 </div>
						<div class="c_brdTitle">
							<span role="presentation" class="glyphicon glyphicon-file"></span> 댓글 단 게시물 제목2
						</div>
						<div class="c_Mcmt_btnGroup">
							<button class="c_btnBrdWrite" data-toggle="modal" data-target="#myModal">답글</button>
							<button type="button" class="c_btnCmtDelete">삭제</button>
						</div>
					</div>
				</div>
				<!-- 답변 모달 -->
				<div id="myModal" class="modal fade" role="dialog">
					<div class="modal-dialog">
					    <div class="modal-content">
					    	<div class="modal-header">
						        <button type="button" class="close" data-dismiss="modal">&times;</button>
						        <h4 class="modal-title">답글 입력</h4>
							</div>
						    <div class="modal-body">
						    	<img id="c_replUserImg" src="./blog_image/landscape.jpg" class="img-circle">
						    	<span id="c_replMid">나야 아이디</span><br/>
						    	<textarea id="c_replContent"></textarea>
						    </div>
						    <div class="modal-footer">
						        <button type="button" id="c_btnReplInsert_Close" class="btn btn-default" data-dismiss="modal">취소</button>
						        <button type="button" id="c_btnReplInsert_Con" class="btn btn-default">확인</button>
					    	</div>
						</div>
					</div>
				</div>
				<div id="c_blog_paging">
					<ul class="pager">
					    <li>
					      <a href="#" aria-label="Previous"><span aria-hidden="true"> < </span></a>
					    </li>
					    <li><a href="#">1</a></li>
					    <li><a href="#">2</a></li>
					    <li><a href="#">3</a></li>
					    <li><a href="#">4</a></li>
					    <li><a href="#">5</a></li>
					    <li>
					      <a href="#" aria-label="Next"><span aria-hidden="true"> > </span></a>
					    </li>
					</ul>
	        	</div>			
			</div>
		</div>
	</div>
</div>
<script>manage.view();</script>