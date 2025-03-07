<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%@ page isErrorPage="true" %>    
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>   

<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>Update Book</title>
	<link rel="stylesheet" href="/webjars/bootstrap/css/bootstrap.min.css" />
	<link rel="stylesheet" type="text/css" href="/css/style.css">
	<script src="/webjars/bootstrap/js/bootstrap.min.js"></script>
</head>
<body>
	<div class="container">
		<h1>Edit Book</h1>
		<form:form action="/books/${book.id}" method="post" modelAttribute="book" class="my-form">
		    <input type="hidden" name="_method" value="put">
		    <p>
		        <form:label path="title">Title</form:label>
		        <form:errors path="title" class="text-danger"/>
		        <form:input path="title" class="form-control"/>
		    </p>
		    <p>
		        <form:label path="description">Description</form:label>
		        <form:errors path="description" class="text-danger"/>
		        <form:textarea path="description" class="form-control"/>
		    </p>
		    <p>
		        <form:label path="language">Language</form:label>
		        <form:errors path="language" class="text-danger"/>
		        <form:input path="language" class="form-control"/>
		    </p>
		    <p>
		        <form:label path="numberOfPages">Pages</form:label>
		        <form:errors path="numberOfPages" class="text-danger"/>     
		        <form:input type="number" path="numberOfPages" class="form-control"/>
		    </p>    
		    <input type="submit" value="Submit"/>
		</form:form>
		<a href="/reset" class="btn btn-outline-primary back">Go back</a>
	</div>
</body>
</html>