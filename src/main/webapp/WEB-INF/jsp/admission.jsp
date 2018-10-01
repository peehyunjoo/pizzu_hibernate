<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<link rel="stylesheet" href="/css/main.css">
<script type="text/javascript" href="/css/main.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.1.3/js/bootstrap.min.js"></script>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css">
</head>
<body>
	<nav class="navbar navbar-light bg-light">
	    <span class="navbar-brand mb-0 h1">요청 리스트</span>
	</nav>
	<div class="container" style="padding-top:8%">
		<table class="table table-hover">
		  <thead>
		    <tr>
		      <th scope="col">요청 타입</th>
		      <th scope="col">제목</th>
		      <th scope="col">내용</th>
		      <th scope="col">가격</th>
		      <th scope="col">요청 날짜</th>
		      <th scope="col">승인/반려</th>
		    </tr>
		  </thead>
		  <tbody>
		    <c:forEach items="${admission}" var="approval">
			<tr>
				<td>${approval.type}</td>
				<td><a href="/admission">${approval.title}</a></td>
				<td>${approval.content}</td>
				<td>${approval.price}</td>
				<td>${approval.reg_date}</td>
				<td>반려/승인</td>
			</tr>
		    </c:forEach>
		  </tbody>
		</table>
		
		<form action="/admission" method="post">
			<table class="table table-hover" style="margin-top:20%;">
			  <thead>
			    <tr>
			      <th scope="col">내용</th>
			      <th scope="col">승인/반려</th>
			    </tr>
			  </thead>
			  <tbody>
				<tr>
					<td>
						<div class="input-group mb-3">
						  <input type="text" class="form-control" placeholder="내용" name="content" aria-describedby="basic-addon1">
						  <input type="hidden" value="${admission[0].idx}" name="approval_num">
						</div>
					</td>
					<td>
						<input type="radio" name="confirm" value="N">반려
						<input type="radio" name="confirm" value="Y">승인	
						 &nbsp;<button type="submit" class="btn btn-default">확인</button>
					</td>
				</tr>
			  </tbody>
			</table>
		</form>
	</div>
</body>
</html>