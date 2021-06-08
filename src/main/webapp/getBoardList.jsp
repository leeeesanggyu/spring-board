<%@page import="java.util.List"%>
<%@page contentType="text/html; charset=UTF-8"%>
<%@taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>


<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Board List</title>
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/css/bootstrap.min.css"
	integrity="sha384-TX8t27EcRE3e/ihU7zmQxVncDAy5uIKz4rEkgIXeMed4M0jlfIDPvg6uqKI2xXr2"
	crossorigin="anonymous">
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/js/bootstrap.bundle.min.js"
	integrity="sha384-ho+j7jyWK8fNQe+A12Hb8AhRq26LrZ/JpcUGGOn+Y7RsweNrtN/tE3MoK7ZeZDyx"
	crossorigin="anonymous"></script>
</head>
<body>
<%@ include file="/../header.jsp"%>
	<section class="container">
	
		<form method="post" action="getBoardList.do" class="form-inline mt-3">
			<select id="SearchType" name="SearchType" class="form-control mx-1 mt-2">
				<option value=title>제목</option>
				<option value=content>내용</option>
			</select> 
			<input type="text" name="search" class="form-control mx-1 mt-2" placeholder="내용을 입력하세요">
			<button type="submit" class="btn btn-primary mx-1 mt-2">검색</button>
			<a class="btn btn-primary mx-1 mt-2" data-toggle="modal" href="#registerModal">등록하기</a>
		</form>

		<c:forEach items="${boardList}" var="board">

			<div class="card bg-light mt-3">
				<div class="card-header bg-light">
					<div class="row">
						<div class="col-8 text-left">
							<strong><a href="getBoard.do?seq=${board.seq}"> ${board.title}</a> </strong>&nbsp;<small>작성자 ${board.writer}&nbsp;${board.regDate} </small>
						</div>
						<div class="col-4 text-right">
							<a href="deleteBoard.do?seq=${board.seq}">삭제</a>
						</div>
					</div>
				</div>
				
			</div>
		</c:forEach>
	</section>
	<%@ include file="/../footer.jsp"%>
	
	
	<div class="modal fade" id="registerModal" tabindex="-1" role="dialog" aria-labelledby="modal" aria-hidden="true">
		<div class="modal-dialog">
			<div class="modal-content">
				<div class="modal-header">
					<h5 class="modal-title" id="modal">게시물 작성</h5>
					<button type="button" class="close" data-dismiss="modal" aria-label="Close">
						<span aria-hidden="true">&times;</span>
					</button>
				</div>
				<div class="modal-body">

					<form action="insertBoard.do" method="post" enctype="multipart/form-data">
						<div class="form-group">
							
							<label>제목</label>
							<input type="text" name="title" class="form-control" maxlength="30">
						</div>
						<div class="form-group">
							<label>내용</label>
							<textarea name="content" class="form-control" maxlength="2048" style="height: 180px;"></textarea>
						</div>
						<div class="form-group">
							<label>업로드</label>
							<input type="file" name="uploadFile" class="form-control">
						</div>
					  	<div class="form-group">
							<label>작성자 : ${userName}</label>
							<input type="hidden" name="writer" class="form-control" value="${userName}" maxlength="30">
						</div>
						<div class="modal-footer">
							<button type="submit" class="btn btn-primary">등록하기</button>
							<button type="button" class="btn btn-secondary" data-dismiss="modal">취소</button>
						</div>
					</form>

				</div>
			</div>
		</div>
	</div>
	
	
	<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"
		integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj"
		crossorigin="anonymous"></script>
	<script
		src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"
		integrity="sha384-9/reFTGAW83EW2RDu2S0VKaIzap3H66lZH81PoYlFhbGU+6BZp6G7niu735Sk7lN"
		crossorigin="anonymous"></script>
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/js/bootstrap.min.js"
		integrity="sha384-w1Q4orYjBQndcko6MimVbzY0tgp4pWB4lZ7lr30WKz0vr/aWKhXdBNmNb5D92v7s"
		crossorigin="anonymous"></script>
</body>
</html>