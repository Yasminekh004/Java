<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>Omikuji</title>
	<link rel="stylesheet" href="/webjars/bootstrap/css/bootstrap.min.css" />
	<link rel="stylesheet" type="text/css" href="/css/style.css">
	<script src="/webjars/bootstrap/js/bootstrap.min.js"></script>
</head>
<body>
	<div class="container">
		<h1>Here's Your Omikuji!</h1>
		
		<p class="test col-sm-4">In <c:out value="${inputInfo.luky}"></c:out> years, you will live in <c:out value="${inputInfo.city}"></c:out>
		 with <c:out value="${inputInfo.person}"></c:out> as your roommate, <c:out value="${inputInfo.hobby}"></c:out>
		  for a living. The next time you see a <c:out value="${inputInfo.thing}"></c:out>, you will have good luck.
		   Also, <c:out value="${inputInfo.nice}"></c:out>
		 </p>
		<a href="/omikuji">Go back</a>
	</div>
</body>
</html>