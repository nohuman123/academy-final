<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<form id="c_manage_frm" name="c_manage_frm" method="post">
	<input type="hidden" name="c_mId" value="${bVo.mId}"/>
</form>
<div id="c_blog_manage">
	<div class="container-fluid">
	    <div class="row">
	    	 <div class="col-xs-1"></div>
	        <!-- 관리서브 메뉴바 -->
	        <div class="col-xs-10">
	        	<div class="row">
			        <div class="col-sm-3 col-md-2">
			        	<form id="c_blog_frm" name="c_blog_frm" method="post">
				        	<div id="c_manage_sub">
				        		<div id="c_subProfile">
				        			<img src="./blog_image/${bVo.mPhoto}" onclick="manage.blogSet()"/>
				        			<div>
					        			<span id="c_subBtitle">${bVo.bTitle}</span><br/>
					        			<span id="c_subMid">${bVo.mId}</span>
				        			</div>
				        		</div>
				         		<div id="c_bManage_menu">
				        			<div class="c_Msubmenu home" onclick="manage.manageMainContent()">
			  							<span class="glyphicon glyphicon-home" aria-hidden="true"></span> 블로그관리 홈
				        			</div>
				        			<div id="c_Msubmenu_content" class="c_Msubmenu_group">
				        				<div class="c_Msubmenu ">
			  								<span class="glyphicon glyphicon-file" aria-hidden="true"></span> 콘텐츠
				        				</div>
			  							<span class="c_Msubmenu_item" onclick="manage.brd()">글 관리</span><br/>
			  							<span class="c_Msubmenu_item">카테고리 관리</span>
				        			</div>
				        			<div id="c_Msubmenu_cmt" class="c_Msubmenu_group">
					        			<div class="c_Msubmenu">
					        				<span class="glyphicon glyphicon-comment" aria-hidden="true"></span> 댓글
					        			</div>
					        			<span class="c_Msubmenu_item" onclick="manage.cmt()">댓글 관리</span>
				        			</div>
				        			<div id="c_Msubmenu_stats" class="c_Msubmenu_group">
				        				<div class="c_Msubmenu">
					        				<span class="glyphicon glyphicon-stats" aria-hidden="true"></span> 통계
					        			</div>
					        			<span class="c_Msubmenu_item" onclick="manage.stat()">방문 통계</span>
				        			</div>
				        			<div id="c_Msubmenu_deco" class="c_Msubmenu_group">
				        				<div class="c_Msubmenu">
					        				<span class="glyphicon glyphicon-edit" aria-hidden="true"></span> 꾸미기
					        			</div>
					        			<span class="c_Msubmenu_item">스킨 변경</span>
				        			</div>
				        		</div>
				        		<div id="c_bManage_menu_s">
					        		<div class="btn-group btn-group-justified" role="group" aria-label="...">
										<div class="btn-group" role="group">
										    <button type="button" class="btn btn-default">
										    	<span class="glyphicon glyphicon-home"></span> 블로그관리 홈
										    </button>
										</div>
										<div class="btn-group" role="group">
										    <button type="button" class="btn btn-default img">
										    	<span id="c_myblogSet_s" onclick="manage.blogSet()">
											        <img  src="./blog_image/boy.jpg"> 블로그 설정							     
										    	</span>
										    </button>
										</div>
										<div class="btn-group" role="group">
										    <button type="button" class="btn btn-default dropdown-toggle" data-toggle="dropdown" aria-expanded="false">
										    	<span class="glyphicon glyphicon-file"></span> 콘텐츠
										    	<span class="caret"></span>
										    </button>
										    <ul class="dropdown-menu" role="menu">
										    	<li><a href="#" onclick="manage.brd()">글 관리</a></li>
										    	<li><a href="#">카테고리 관리</a></li>
										    </ul>
										</div>
									</div>
									<div class="btn-group btn-group-justified" role="group" aria-label="...">
										<div class="btn-group" role="group">
										    <button type="button" class="btn btn-default dropdown-toggle" data-toggle="dropdown" aria-expanded="false">
										    	<span class="glyphicon glyphicon-comment" aria-hidden="true"></span> 댓글
										    	<span class="caret"></span>
										    </button>
										    <ul class="dropdown-menu" role="menu">
										    	<li onclick="manage.cmt()"><a href="#">댓글 관리</a></li>
										    </ul>
										</div>
										<div class="btn-group" role="group">
										    <button type="button" class="btn btn-default dropdown-toggle" data-toggle="dropdown" aria-expanded="false">
										    	<span class="glyphicon glyphicon-stats" aria-hidden="true"></span> 통계
										    	<span class="caret"></span>
										    </button>
										    <ul class="dropdown-menu" role="menu">
										    	<li><a href="#">방문 통계</a></li>
										    </ul>
										</div>
										<div class="btn-group" role="group">
										    <button type="button" class="btn btn-default dropdown-toggle" data-toggle="dropdown" aria-expanded="false">
											    <span class="glyphicon glyphicon-edit" aria-hidden="true"></span> 꾸미기
											    <span class="caret"></span>
										    </button>
										    <ul class="dropdown-menu" role="menu">
										    	<li><a href="#">스킨변경</a></li>
										    </ul>
										</div>
									</div>
				        		</div>
	        				</div>
        				</form>
	        		</div>
			        <div class="col-sm-9 col-md-10">
		        	   <!-- 관리 컨텐츠 -->
			        	<div id="c_manageContent"></div>
			        </div>
	    		</div>
	        </div>
	        <div class="col-xs-1"></div>
	    </div>
	</div>
</div>
<script>manage.manageMainContent();</script>