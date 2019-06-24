<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<%@
taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"
 %>
 <%@taglib uri="http://www.springframework.org/tags/form" prefix="mvc" %>
<html>
<head>
	<meta charset="ISO-8859-1">
	<title>Restaurante Rustico</title>
	<link href="resources/css/loginStyle.css" rel = "stylesheet">

</head>
<script></script>
<body>

    <br>
	<h1 align="center">Restaurante Rustico</h1>

	<form action="${pageContext.request.contextPath}/login" method="post">
		
		  <div class="group">
    			<input type="text" name="user" id = "" ><span class="highlight"></span><span class="bar"></span>
    			<label>Usuario</label>
  		  </div>
  		  <div class="group">
    			<input type="password" name="pass" id = ""><span class="highlight"></span><span class="bar"></span>
    			<label>Contraseña</label>
  		  </div>
  		  <input type="submit" id = "loginBtn" name="Submit" class="button buttonBlue" value="Iniciar Sesión">
    	  		
  		  
	
	</form>	
		
</body>
</html>

