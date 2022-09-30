<%@ page isELIgnored = "false" language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
<title>Registration Form</title>
</head>
<body>
<div class="container">
  <h2>Student Registration Form</h2>
  <form class="form-horizontal" action="save" method="post">
    <div class="form-group">
		<input type="hidden" class="form-control" placeholder="Enter Id" name="id" value="${student.id}">
	</div>
	<div class="form-group">
	  <input type="text" class="form-control" placeholder="Enter Name" name="name" value="${student.name}">
	</div>
	<div class="form-group">
	  <input type="text" class="form-control" placeholder="Enter Department" name="dept"
	    value="${student.dept}">
	</div>
	<div class="form-group">
	  <input type="text" class="form-control" placeholder="Enter Country" name="country"
	    value="${student.country}">
	</div>
	
	<button class="btn btn-outline-warning btn-lg" type="submit" class="btn btn-primary">Save</button>
	
  </form>
  <a class="btn btn-success" href="home">Home Page</a>
</div>
</body>
</html>