<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-eOJMYsd53ii+scO/bJGFsiCZc+5NDVN2yr8+0RDqr0Ql0h+rP48ckxlpbzKgwra6" crossorigin="anonymous">
<title>Counter</title>
</head>
<body>
	<div class="container mt-5 text-center">
		<h1>You have visited this site <c:out value="${count}"/> times.</h1>
		<br>
		<div class="d-flex justify-content-center">
			<div class="m-3"><a class="btn btn-outline-primary" href="/">Test another visit?</a></div>
			<div class="m-3"><a class="btn btn-outline-danger" href="/reset">Reset counter</a></div>
			<div class="m-3"><a class="btn btn-outline-primary" href="/counter2">Counter +2</a></div>
		</div>
		
	</div>
</body>
</html>