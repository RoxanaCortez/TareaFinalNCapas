<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<div align="center">
	<h1>Sucursal</h1>
	
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
		<td>
			<a href="edit?codigo=${sucursal.codigo}">Editar</a>
			&nbsp;&nbsp;&nbsp;
			<a href="delete?codigo=${sucursal.codigo}">Delete</a>
		</td>
		</tr>
		</c:forEach>
	
	
	</table>




</div>

</body>
</html>