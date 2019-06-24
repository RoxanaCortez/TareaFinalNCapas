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
	<title>Gestor de sucursales</title>

</head>


	<h1>Gestor de sucursales</h1>
	<br>
	<form action="${pageContext.request.contextPath}/login" method="post">
		
		<div>
			<input type="text" name="user" id = ""  >
			<input type="password" name="pass" id = "" >
		</div>
		
		<br>
		
		<div>
			<input type="submit" id = "loginBtn" name="Submit" value="Iniciar Sesión" />
		</div>
	</form>	
	<br>
             
		
		
</body>
</html>