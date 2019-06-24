<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>    
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Restaurante Rustico</title>
	<link href="resources/css/indexStyle.css" rel = "stylesheet">
</head>

<body>
<div align="center">

<br>
<h1 style="color:#8B0065">Restaurante Rustico</h1><br>
	<h1>Sucursales</h1>

	<h3> <a style="text-decoration:none; color:#2EC500"  href="new">Registrar sucursal</a></h3>
	
	<table border="1" padding="5" >
		<tr>
			<th style="text-align: center;">Sucursal</th>

			<th style="text-align: center;">Acción</th>
		</tr>
		<c:forEach items="${listSucursal}" var="sucursal">
		<tr>
		<td>${sucursal.nombre}</td>
		
		<td align="center">
			<a style="text-decoration:none; color:#008FBE"  href="edit?codigo=${sucursal.codigo}">Editar</a>
			&nbsp;&nbsp;&nbsp;
			<a  style="text-decoration:none; color:#E30000" href="delete?codigo=${sucursal.codigo}">Eliminar</a>
			&nbsp;&nbsp;&nbsp;
			<a style="text-decoration:none; color:#8B0065"  href="perfil?codigo=${sucursal.codigo}">Ver perfil</a>
			
		</td>
		</tr>
		</c:forEach>
	
	
	</table>




</div>

</body>
</html>