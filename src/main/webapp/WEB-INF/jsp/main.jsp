<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<script src="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.1.3/js/bootstrap.min.js"></script>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/bootswatch/4.1.3/cerulean/bootstrap.min.css" />
<link rel="stylesheet" href="/css/main.css">
<script type="text/javascript" href="/css/main.js"></script>
<title>Insert title here</title>
</head>
<body>

	<nav class="navbar navbar-light bg-light">
	    <span class="navbar-brand mb-0 h1">로그인</span>
	</nav>
	<div class="container" style="padding-top:8%">
		<form action="/join" method="post">
		  <div class="form-group row">
		    <label for="id" class="col-sm-2 col-form-label">id</label>
		    <div class="col-sm-10">
		      <input type="text" class="form-control" id="id" value="">
		    </div>
		  </div>
		  <div class="form-group row">
		    <label for="password" class="col-sm-2 col-form-label">Password</label>
		    <div class="col-sm-10">
		      <input type="password" class="form-control" id="password" placeholder="Password">
		    </div>
		  </div>
		  <button type="submit" class="btn btn-default">Submit Button</button>
		</form>
	</div>
</body>
</html>