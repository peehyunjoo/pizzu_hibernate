<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.1.3/js/bootstrap.min.js"></script>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" 
integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
<script src="https://cdn.jsdelivr.net/npm/gijgo@1.9.10/js/gijgo.min.js" type="text/javascript"></script>
<link href="https://cdn.jsdelivr.net/npm/gijgo@1.9.10/css/gijgo.min.css" rel="stylesheet" type="text/css" />
<link rel="stylesheet" href="/css/main.css">
<script type="text/javascript" href="/css/main.js"></script>
<title>Insert title here</title>
<style>
.navbar{
	background-color: #f8bbd0;
}
select{
	background-color : #ffeeff;
	color : black;
}
</style>
<script>
	$('#datepicker').datepicker({
    	uiLibrary: 'bootstrap4'
	});
</script>
</head>
<body>
	<nav class="navbar navbar-light bg-light">
	    <span class="navbar-brand mb-0 h1">결제</span>
	</nav>
	
	<div class="container" style="padding-top:8%">
		<form action="/approval" method="post">
		  <div class="form-group">
		    <label for="date">날짜</label>
		    <input id="datepicker" name="datepicker" width="276" />
		  </div>
		  <div class="form-group">
		    <label for="exampleFormControlSelect1">타입</label>
		    <select class="form-control" id="type" name="type">
		      <option value="1">물품</option>
		      <option value="2">약속</option>
		    </select>
		  </div>
		  <div class="form-group">
		    <label for="title">제목</label>
		    <input type="text" class="form-control" id="title" name="title">
		  </div>
		  <div class="form-group">
		    <label for="content">내용</label>
		    <textarea class="form-control" id="content" name="content" rows="3"></textarea>
		  </div>
		  <div class="form-group">
		    <label for="price">가격</label>
		    <input type="text" class="form-control" id="price" name="price">
		  </div>
		  <button type="submit" class="btn btn-default">Submit Button</button>
		</form>
	</div>
</body>
</html>