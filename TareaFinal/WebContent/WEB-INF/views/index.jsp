<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>    
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Restaurante Rustico</title>
</head>
<body>
<div align="center">
	<h1>Sucursales</h1>
	<form method="get" action="search">
		<input type="text" name="keyword"/>	
		<input type="submit" value="search"/>
	</form>
	
	<table>
		<tr>
			<th>Codigo</th>
			<th>Nombre</th>
			<th>Ubicacion</th>
			<th>Horario</th>
			<th>Mesas</th>
			<th>Gerente</th>
		</tr>
		<c:forEach items="${listSucursal}" var="sucursal">
		<tr>
		<td>${sucursal.codigo}</td>
		<td>${sucursal.nombre}</td>
		<td>${sucursal.ubicacion}</td>
		<td>${sucursal.horarios}</td>
		<td>${sucursal.mesas}</td>
		<td>${sucursal.gerente}</td>
		</tr>
		</c:forEach>
	
	
	</table>




</div>

</body>
</html>