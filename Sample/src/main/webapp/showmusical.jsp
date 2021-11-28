<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>${requestScope.search}</title>
</head>
<body>
	<h1>Hello Musical</h1>
	<c:forEach var="details" items="${requestScope.instrumentdetails}">
			
			<h3>${details.name}</h3>
			<img src="${details.img}">
			<audio controls>
				<source src="${details.sound}" type="audio/mp3" ></audio>	
			<audio controls>
			<source src="D:\vishwajeet FSD\pal.mp3">
			</audio>
			<p>${details.disc}</p>
			<a href="${details.tag}">For more details</a>
				
			
			</c:forEach>
			
</body>
</html>