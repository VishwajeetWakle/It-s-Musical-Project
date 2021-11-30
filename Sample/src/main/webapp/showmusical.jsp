<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>${requestScope.search}</title>
    <link rel="stylesheet" href="praj.css" />
  </head>
  <body>
    <h2>It's Musical</h2>
    <div class="box">
     <c:forEach var="details" items="${requestScope.instrumentdetails}">
     <h2>You are search for  ${details.name}</h2>
      <div class="imagebox">
        <img src="${details.img}" alt="Guitar" />
        <audio controls>
				<source src="${details.sound}" type="audio/mp3" >
			</audio>	
			<br><br>
      </div>

      <div class="content">
        <h1></h1>

        <p>${details.disc}
        </p>

        <a href="${details.tag}"
          >For More Information
        </a>
      </div>
      </c:forEach>
    </div>
  </body>
</html>
