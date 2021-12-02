<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
      <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Add New Instrument</title>
</head>
<body>
	
	
	<div align="center">
	 	
	 		<c:choose>
	 			<c:when test="${requestScope.code eq '110'}">
	 				<div class="alert alert-success">
	 					Contact created Successfully.
	 				</div>
	 			</c:when>
	 			<c:when test="${requestScope.code eq '120'}">
	 				<div class="alert alert-danger">
	 					Error. Try Again....
	 				</div>
	 			</c:when>
	 		</c:choose>
	 		</div><br><br>
	
	<div align="center">
		<h3>Add New Instrument</h3>
		<form action="save">
			Enter Instrument Name : <input type="text" name="name"><br><br>
			Enter Instrument Disc : <input type="text" name="disc"><br><br>
			Enter Instrument link : <input type="date" name="link"><br><br>
			For audio (.mp3) and img(.png) you should add them into webapp<br> 
			of the project with name as a instrument name <br>
			only change the extension <br><br>
			<button type="submit" class="btn btn-success">Save</button>
		</form>
	</div>
</body>
</html>