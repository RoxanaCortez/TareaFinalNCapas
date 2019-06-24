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
<style>
html,
body {
	height: 100%;
	font-family: monospace;
}

h1{
	color: #000;
	text-align: center;
	font-family: monospace;
	font-weight: bold;
}

h2{
	color: #000;
	text-align: center;
	font-family: monospace;
	font-weight: bold;
}

p{
	color: #787777;
	 font-size: 18px;
	
}

body {
	margin: 0;
	background:  #fff;
	font-family: sans-serif;
	font-weight: 100;
}

.container {
	position: absolute;
	top: 50%;
	left: 50%;
	transform: translate(-50%, -50%);
}

table {
	width: 600px;
	border-collapse: collapse;
	overflow: hidden;
	box-shadow: 0 0 20px rgba(0,0,0,0.1);
}

th,
td {
	padding: 5px;
	color: #fff;
	border:1px solid #868686;
	color: #000;
}
th {
		text-align: center;
		background-color: #8B0065;
		border:1px solid #868686;
		color: #fff;
		font-weight: bold;
		 
	}
tbody {
	
	td {
		position: relative;
		
	}
}
</style>
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