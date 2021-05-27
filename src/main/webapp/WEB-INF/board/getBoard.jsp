<%@page contentType="text/html; charset=UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>글 상세</title>
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

		<form method="get" action="" class="form-inline mt-3">
			<select id="SearchType" name="SearchType" class="form-control mx-1 mt-2">
				<option value=title>제목</option>
				<option value=username>작성자</option>
			</select> 
			
			<input type="text" name="search" class="form-control mx-1 mt-2" placeholder="내용을 입력하세요">
			
			<button type="submit" class="btn btn-primary mx-1 mt-2">검색</button>
			<a class="btn btn-primary mx-1 mt-2" data-toggle="modal" href="getBoardList.do">등록하기</a>
		</form>

		<div class="card bg-light mt-3">
		<div class="card-header bg-light">
			<div class="row">
				<div class="col-8 text-left"><strong>${board.title}</strong>&nbsp;&nbsp;&nbsp;<small>작성자:${board.writer}&nbsp;&nbsp;&nbsp;게시물번호:${board.seq}&nbsp;&nbsp;&nbsp; ${board.regDate}</small></div>
				<div class="col-4 text-right">
					<a href="deleteBoard.do?seq=${board.seq}">삭제</a>
				</div>
			</div>
		</div>
		<div class="card-body">
			<p class="card-text">${board.content}</p>
			<a href="getBoardList.do">글 등록</a>&nbsp;&nbsp;&nbsp;
			<a href="deleteBoard.do?seq=${board.seq}">글 삭제</a>&nbsp;&nbsp;&nbsp;
			<a href="getBoardList.do">글 목록</a>
		</div>
	</div>
	</section>
	
	<%@ include file="/../footer.jsp"%>
	
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