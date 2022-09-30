<%@ page isELIgnored = "false" language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix = "c" uri="http://java.sun.com/jsp/jstl/core"  %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Student List</title>
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
</head>
<body>
<div class = "container">
		<table class="table table-hover table-condensed">
    <thead>
      <tr>
        <th>SNo.</th>
        <th>Name</th>
        <th>Department</th>
        <th>Country</th>
        <th>Actions</th>
      </tr>
    </thead>
    <c:forEach var = "student" items="${students}" varStatus="c">
    <tbody>
    	<tr>
    		<td>${c.count}</td>
    		<td>${student.name}</td>
    		<td>${student.dept}</td>
    		<td>${student.country}</td>
    		<td>
    			<a class="btn btn-warning" href="update?id=${student.id}">Edit</a>
    			<a class="btn btn-danger" href="delete?id=${student.id}"
    			onclick="if (!(confirm('Are you sure you want to delete the student?')))return false">Delete</a>
    		</td>
    	</tr>
    </tbody>
    </c:forEach>
  </table>
	</div>
	<a class="btn btn-success" href="home">Home Page</a>
</body>
</html>