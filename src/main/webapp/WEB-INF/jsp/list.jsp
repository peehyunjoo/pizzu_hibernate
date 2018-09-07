<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.1.3/js/bootstrap.min.js"></script>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" 
integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
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
		    <c:forEach items="${list}" var="approval">
			<tr>
				<td>${approval.type}</td>
				<td>${approval.title}</td>
				<td>${approval.content}</td>
				<td>${approval.price}</td>
				<td>${approval.reg_date}</td>
				<td>반려/승인</td>

			</tr>
		    </c:forEach>
		  </tbody>
		</table>
	</div>
</body>
</html>