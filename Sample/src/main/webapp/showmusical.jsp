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

    <script>
      function getImagePath() {
        return "./" + localStorage.getItem("selectedImage");
      }
      document.onload = function () {
        document.getElementById("someImage").src = getImagePath();
      };
    </script>
  </head>
  <body>
    
    <div class="Details">
    <h2>It's Musical</h2>
    <div class="box">
     <c:forEach var="details" items="${requestScope.instrumentdetails}">
     
     <div style="width: 20%">
      <h1>You are search for  ${details.name}</h1>
    </div>
      <div class="imagebox">
        
        <div class="image_section">
          <img src="${details.img}" height="600px" class="img_instrument" alt="Image of Instrument" />
          <img id="./" height="600px" />
        </div>
        <audio controls>
				<source src="${details.sound}" type="audio/mp3" >
			  </audio>	
			<br><br>
      </div>

      <div class="content">
        <h1></h1>

        <p>${details.disc}
        </p>
        <div class="details-section">
          ${details.disc}

          
        <a href="${details.tag}"
        >For More Information
        </a>
        </div>
      

      </div>
      </c:forEach>
    </div>
    	<a href="searchmusical.jsp" id="link">Back</a>

    </div>
  </body>
</html>
