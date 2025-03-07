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

	<a href="/books/new" class="btn btn-outline-primary">Add new Book</a>

	<h1>All Books</h1>
	<table class="table table-striped">
	    <thead>
	        <tr>
	            <th>ID</th>
	            <th>Title</th>
	            <th>Description</th>
	            <th>Language</th>
	            <th>Number of Pages</th>
	            <th>Edit/Delete</th>
	        </tr>
	    </thead>
	    <tbody>
	         <c:forEach var="book" items="${books}">
	         	<tr>
		            <td><c:out value='${book.id}'></c:out></td>
		            <td><a href="/books/${book.id}"><c:out value='${book.title}'></c:out></a></td>
		            <td class="descr"><c:out value='${book.description}'></c:out></td>
		            <td><c:out value='${book.language}'></c:out></td>
		            <td><c:out value='${book.numberOfPages}'></c:out></td>
		            <td><a href="/books/${book.id}/edit">Update</a>/
		            <form action="/books/${book.id}" method="post">
					    <input type="hidden" name="_method" value="delete">
					    <input type="submit" value="Delete">
					</form>
		            </td>
	       		</tr>
	         </c:forEach>
	    </tbody>
	</table>

</body>
</html>