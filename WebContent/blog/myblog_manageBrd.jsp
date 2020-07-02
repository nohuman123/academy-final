<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<div id="myblog_Mbrd">
	<div class="container-fluid">
		<div class="row">
			<div class="col-xs-12">
				<h3>글 관리</h3><span id="c_Mbrd_count"> 10</span>
				<button type="button" id="c_BrdWrite" class="btn btn-default" onclick="blog.brdInsert()">
					<span class="glyphicon glyphicon-pencil"></span> 글쓰기
				</button>
				<form id="c_blog_frm" name="c_blog_frm" method="post">
					<div id="c_MbrdSearch">
				        <div class="dropdown more">
				        	<span class="dropdown-toggle" data-toggle="dropdown" role="button" aria-expanded="false">
				        		보기 <span class="glyphicon glyphicon-chevron-down" aria-hidden="true"></span>
				        	</span>
				          	<ul class="dropdown-menu" role="menu">
					            <li role="presentation"><a role="menuitem" tabindex="-1" href="#">모든 글 보기</a></li>
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
				        <input type="text" id="c_brdFindStr" placeholder="글 관리에서 검색합니다." autofocus="autofocus">
				        <button type="button" class="btn btn-default" id="c_btnBrdFind">
				        	<span role="presentation" class="glyphicon glyphicon-search"><span> 검색</span></span>
				        </button>
					</div>
					<div id="c_MbrdList">
						<div class="c_MbrdItem">
							<div class="c_brdHeaderImg">
								<img src="./blog_image/night.jpg" class="img-rounded">
							</div>
							<div class="c_Btitle" onclick="blog.brdView()">나는 게시물 제목</div>
							<span class="c_Bcategory">카테고리 1</span>
							<span class="c_BmId">나는 아이디</span>
							<br/>
							<span class="c_BDate">2020-05-12 11:18</span>
							<span class="c_Bcmt">댓글3</span>
							<div class="c_Mbrd_btnGroup">
								<button type="button" onclick="blog.brdModify()">수정</button>
								<button type="button" class="c_btnBrdDelete">삭제</button>
								<button type="button" class="c_btnBrdSecret">비공개</button>
								<button type="button" class="c_btnBrdPublic">공개</button>
							</div>
						</div>
						<div class="c_MbrdItem">
							<div class="c_brdHeaderImg">
								<img src="./blog_image/life.jpg" class="img-rounded">
							</div>
							<div class="c_Btitle" onclick="blog.brdView()">나는 게시물 제목2</div>
							<span class="c_Bcategory">카테고리 1</span>
							<span class="c_BmId">나는 아이디2</span>
							<br/>
							<span class="c_BDate">2020-05-12 11:44</span>
							<span class="c_Bcmt">댓글10</span>
							<div class="c_Mbrd_btnGroup">
								<button type="button" onclick="blog.brdModify()">수정</button>
								<button type="button" class="c_btnBrdDelete">삭제</button>
								<button type="button" class="c_btnBrdSecret">비공개</button>
								<button type="button" class="c_btnBrdPublic">공개</button>
							</div>
						</div>
					</div>
					<div id="c_blog_paging">
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
	        	</form>			
			</div>
		</div>
	</div>
</div>
<script>manage.view();</script>