<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>    
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Nueva Sucursal</title>
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

input[type=submit] {
  background-color: #8B0065;
  border: 0;
  border-radius: 8px;
  cursor: pointer;
  color: #fff;
  font-size:12px;
  line-height: 1.4;
  padding: 10px;
  width: 120px;
  font-weight: bold
  
}
}
</style>
</head>
<body>
<div align="center">
	<h2>Nueva sucursal</h2>
	<form:form action="save" method="post" modelAttribute="sucursal" >
		<table border="0" cellpadding="5">
		<tr>
			<td>Codigo: </td>
			<td><form:input  path ="codigo"/></td>
		</tr>
			<tr>
			<td>Nombre: </td>
			<td><form:input type="text" name="nombre" path="nombre" /></td>
		</tr>
			<tr>
			<td>Ubicación: </td>
			<td><form:input type="text" name="ubicacion" path="ubicacion" /></td>
		</tr>
			<tr>
			<td>Horario Apertura: </td>
			<td><form:input type="text" name="horario_a" path="horario_a" /></td>
		</tr>
		<tr>
			<td>Horario Cierre: </td>
			<td><form:input type="text" name="horario_c" path="horario_c" /></td>
		</tr>
			<tr>
			<td>Mesas: </td>
			<td><form:input type="text" name="mesas" path="mesas" /></td>
		</tr>
			<tr>
			<td>Gerente : </td>
			<td><form:input type="text" name="gerente"  path="gerente" /></td>
		</tr>
		<tr>
			<td colspan="2"><input type="submit" value="Agregar" /></td>
		
		</tr>
		</table>
	</form:form>


</div>

</body>
</html>