<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
	<title></title>
	<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/css/bootstrap.min.css" integrity="sha384-TX8t27EcRE3e/ihU7zmQxVncDAy5uIKz4rEkgIXeMed4M0jlfIDPvg6uqKI2xXr2" crossorigin="anonymous">
</head>
<body>

	<nav class="navbar navbar-expand-lg  navbar-light bg-light">
	    	<a class="navbar-brand" href="getBoardList.do">SPRING 게시판 만들기</a>
	    	<button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbar">
	        	<span class="navbar-toggler-icon"></span>
	      	</button>
    	<div class="collapse navbar-collapse" id="navbar">
        <ul class="navbar-nav mr-auto">
        	<li class="nav-item active">
            	<a class="nav-link" href="logout.do">로그아웃</a>
          	</li>
        </ul>

        <form action="./header_search_Action.php" method="get" class="form-inline my-2 my-lg-0">
        	<input type="text" name="search" class="form-control mr-sm-2" placeholder="내용을 입력하세요.">
        	<button class="btn btn-outline-success my-2 my-sm-0" type="submit">검색</button>
        </form>
      </div>
    </nav>
<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js" integrity="sha384-9/reFTGAW83EW2RDu2S0VKaIzap3H66lZH81PoYlFhbGU+6BZp6G7niu735Sk7lN" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/js/bootstrap.min.js" integrity="sha384-w1Q4orYjBQndcko6MimVbzY0tgp4pWB4lZ7lr30WKz0vr/aWKhXdBNmNb5D92v7s" crossorigin="anonymous"></script>
</body>
</html>
