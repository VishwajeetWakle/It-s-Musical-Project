<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
    

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>It's Musical || Search</title>
<link rel="stylesheet" href="praj.css" />
</head>
<body>
	<br>
	<h1>Hello Welcome to It's Musical</h1>
	<br><br>
	<h3>Here you can get all info about the musical instruments </h3>
	<h3>Just try with your fav musical instrument</h3><br><br>
	
	<div align="center"><br><br>
	 	 		<c:choose>
	 			<c:when test="${param.code eq '160'}">
	 				<div class="alert alert-danger">
	 					Error. This Instrument Not Found....
	 				</div>
	 			</c:when>
	 		</c:choose>
	 		</div><br><br>
	<div align="center">
		<form action="result-musical">
			<input  type="text" name="search" placeholder="Search an instrument..."><br><br>
			<button type="submit">Search</button>
		</form>
	</div>
	<br>
	<a href="List.jsp" id="link">For List Of Instruments</a>
</body>
</html>