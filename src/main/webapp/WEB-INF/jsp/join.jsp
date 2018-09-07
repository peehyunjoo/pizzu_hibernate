<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<script src="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.1.3/js/bootstrap.min.js"></script>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/bootswatch/4.1.3/cerulean/bootstrap.min.css" />
<title>test</title>
</head>
<body>
	<nav class="navbar navbar-light bg-light">
	    <span class="navbar-brand mb-0 h1">회원가입</span>
	</nav>
	<div class="container" style="padding-top:8%">
		<div>
			<form action="/join" method="post">
				<input type="text" name="id" id="id" />
				<input type="text" name="pwd" id="pwd" />
				<input type="hidden" name="level" id="level" value="1" />
				<button type="submit" class="btn btn-default">Submit Button</button>
				<button type="reset" class="btn btn-default">Reset Button</button>
			</form>
		</div>
	</div>
</body>
</html>