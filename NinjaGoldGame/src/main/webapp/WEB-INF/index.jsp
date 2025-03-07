<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core"%>    
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>Ninja Gold Game</title>
	<link rel="stylesheet" href="/webjars/bootstrap/css/bootstrap.min.css" />
	<link rel="stylesheet" type="text/css" href="/css/style.css">
	<script src="/webjars/bootstrap/js/bootstrap.min.js"></script>
</head>
<body>
	<div>
		<div class="container">
			<h2>Your Gold: </h2> 
			<span class="yourGold"><c:out value="${gold}"></c:out></span>
		</div>
		
		<div class="row row_container">
			
				<div class="col-xl-3 find">
				<h2>Farm</h2>
				<span>(earns 10-20 gold)</span>
				<form action="/" method="post"><button name="farm">Find Gold!</button></form>
			</div>
			
				<div class="col-xl-3 find">
				<h2>Cave</h2>
				<span>(earns 5-10 gold)</span>
				<form action="/" method="post"> <button name="cave">Find Gold!</button> </form>
			</div>
			
				<div class="col-xl-3 find">
					<h2>House</h2>
					<span>(earns 2-5 gold)</span>
					<form action="/" method="post"><button name="house">Find Gold!</button></form>
				</div>	
						
			<div class="col-xl-3 find">
				<h2>Quest</h2>
				<span>(earns/takes 0-50 gold)</span>
				<form action="/" method="post"><button name="quest">Find Gold!</button></form>
			</div>
			
			<div class="col-xl-3 find">
				<h2>Spa</h2>
				<span>(takes 5-20 gold)</span>
				<form action="/" method="post"><button name="spa">Find Gold!</button></form>
			</div>
					
		</div>
		<h2 id="activivteTitle">Activites:</h2>
		<div class="log-container">
			<c:forEach var="log" items="${logs}">
				<c:if test="${log.contains('earned')}">
					<p style="color: green;"><c:out value="${log}"></c:out><br></p>
				</c:if>
				<c:if test="${log.contains('lost')}">
					<p style="color: red;"><c:out value="${log}"></c:out><br></p>
				</c:if>
			</c:forEach>				
		</div>
		
		<a href="/reset" class="btn btn-outline-primary resetBtn">Reset Gold</a>
	</div>
</body>
</html>