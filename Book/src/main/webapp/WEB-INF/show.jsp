<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core"%>    
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>Reading Books</title>
</head>
<body>
	<h1><c:out value='${book.title}'></c:out></h1>
	<span>Description: <c:out value='${book.description}'></c:out></span>
	<span>Language: <c:out value='${book.language}'></c:out></span>
	<span>Number of Pages: <c:out value='${book.numberOfPages}'></c:out></span>
</body>
</html>