<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

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
		<h1>Send a Omikuji</h1>
	
	    <form action='/confirm' method='post' class="col-sm-4">
	    
		    <div class="form-group row">    
		    <label>Pick any number from 5 to 25</label>
		    	<input class="form-control luky" type='number' name='luky' placeholder="0"> 
		    </div>
		    
		    <div class="form-group row">
			<label>Enter the name of any city:</label>
		    	<input class="form-control" type="text" name='city'>   	
		    </div>
		    
		    <div class="form-group row">
			<label>Enter the name of any real person:</label>
		    	<input class="form-control" type='text' name='person'> 
		    </div>
		    
		    <div class="form-group row">   	
		    <label>Enter professional endeavor or hobby:</label>
		    	<input class="form-control" type='text' name='hobby'>	
		    </div>
		    
		    <div class="form-group row">
		    <label>Enter any type of living thing:</label>
		    	<input class="form-control" type='text' name='thing'>
		    </div>
		    
		    <div class="form-group row">
		    <label>Say something nice to someone:</label>
				<textarea class="form-control" name='nice' rows="5" cols="33"></textarea>
			</div>
				
			<h6>Send and show a friend</h6>   
			<input type='submit' value='send' class="btn btn-primary send"> 
		    	
	    </form>
	</div>
</body>
</html>