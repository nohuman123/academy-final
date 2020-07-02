<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<div class="container-fluid">
	<div class="row">
		<div class="col-xs-12">
			<h3>블로그 설정</h3>
			<div id="c_myblog_manageSet">
				<label>블로그 헤더사진</label><br/>
				<div id="c_myblog_headerImg">
					<img id="c_bHeaderImg" src="./blog_image/${bVo.hPhoto}">
					<input type="file" id="c_btn_bHeaderImg">
					<button type="button" id="c_myblog_headerImg_add" class="btn btn-default btn-lg">
						<span class="glyphicon glyphicon-plus" aria-hidden="true"></span>
					</button>
					<button type="button" id="c_myblog_headerImg_rem" class="btn btn-default btn">
						<span class="glyphicon glyphicon-minus" aria-hidden="true"></span>
					</button>
				</div>
				<div id="c_myblog_setCon">
					<label>블로그 이름</label><br/>
					<input type="text" id="c_bTitle" value="${bVo.bTitle}">
					<button type="button" id="c_myblog_btnSetCon">변경사항 저장</button>
				</div>
	    	</div>
	    	<br/>
	    	<h3>데이터 관리</h3>
			<div id="c_myblog_dataDel">
				<div>
					블로그의 데이터가 모두 삭제됩니다.<br/>
					데이터양에 따라 삭제 시간이 달라지며, 삭제가 진행되는 동안 블로그 접속이 원활하지 않을 수 있습니다.<br/>
					정말 삭제하시겠습니까?
				</div>
				<button type="button" id="c_myblog_btnDataDel">삭제하기</button>
			</div>
		</div>
	</div>
</div>
