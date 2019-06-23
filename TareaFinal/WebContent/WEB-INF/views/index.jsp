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
	
	<h3> <a href="new">Agregar nueva sucursal</a></h3>
	
	<table border="1" padding="5" >
		<tr>
			<th style="text-align: center;">Codigo</th>
			<th style="text-align: center;">Nombre</th>
			<th style="text-align: center;">Ubicacion</th>
			<th style="text-align: center;">Horario Apertura</th>
			<th style="text-align: center;">Horario Cierre</th>
			<th style="text-align: center;">Mesas</th>
			<th style="text-align: center;">Gerente</th>
			<th style="text-align: center;">Acción</th>
		</tr>
		<c:forEach items="${listSucursal}" var="sucursal">
		<tr>
		<td style="text-align: center;">${sucursal.codigo}</td>
		<td>${sucursal.nombre}</td>
		<td>${sucursal.ubicacion}</td>
		<td style="text-align: center;">${sucursal.horario_a}</td>
		<td style="text-align: center;">${sucursal.horario_c}</td>
		<td style="text-align: center;">${sucursal.mesas}</td>
		<td>${sucursal.gerente}</td>
		</tr>
		</c:forEach>
	
	
	</table>




</div>

</body>
</html>