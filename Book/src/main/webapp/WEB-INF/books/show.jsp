<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core"%>    
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>Reading Books</title>
	<link rel="stylesheet" href="/webjars/bootstrap/css/bootstrap.min.css" />
	<link rel="stylesheet" type="text/css" href="/css/style.css">
	<script src="/webjars/bootstrap/js/bootstrap.min.js"></script>
</head>
<body>
	<h1><c:out value='${book.title}'></c:out></h1>
	<p>Description: <c:out value='${book.description}'></c:out></p>
	<p>Language: <c:out value='${book.language}'></c:out></p>
	<p>Number of Pages: <c:out value='${book.numberOfPages}'></c:out></p>
	
	<a href="/books/${book.id}/edit" class="btn btn-outline-primary">Update</a>
	<a href="/reset" class="btn btn-outline-primary back">Go back</a>
</body>
</html>