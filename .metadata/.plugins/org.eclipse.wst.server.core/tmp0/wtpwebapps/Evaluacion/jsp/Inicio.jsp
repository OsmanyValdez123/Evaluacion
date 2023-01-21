<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
 <%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>  
<%@ taglib prefix = "fmt" uri = "http://java.sun.com/jsp/jstl/fmt" %>    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Ejercicio de Evaluacion</title>
<script  type="text/javascript" src="js/jquery.min.js"></script>
<script  type="text/javascript" src="js/jquery-ui.min.js"></script>
<script type="text/javascript" src="js/jquery.js"></script> 
<script  type="text/javascript" src="js/bootstrap.min.js"></script>
<link rel="stylesheet" type="text/css" href="css/bootstrap1.min.css">

<!-- LIBRERIA PARA IMAGENES Y JQUERY -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>

<!--  CSS BOOTSTRAP  y JQUERY-->
<link rel="stylesheet" type="text/css" href="css/bootstrap1.css">
<link rel="stylesheet" href="css/font-awesome.min.css">
<link rel="stylesheet" type="text/css" href="css/jquery-ui-1.10.3.custom.css">
<link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">

<script  type="text/javascript" src="js/jsjquery.min.js"></script>
<script  type="text/javascript" src="js/bootbox.min.js"></script>
<!--  JS JSGRID -->
<link rel='stylesheet prefetch' href="css/jsgrid.min.css"/> 
<link rel='stylesheet prefetch' href="css/jsgrid-theme.min.css"/> 
<script type="text/javascript" src="js/jsgrid.js"></script> 
<script type="text/javascript" src="js/jsgrid.min.js"></script> 
<!--  JS BOOTSTRAP -->
<script  type="text/javascript" src="js/bootstrap.js"></script> 		
<link rel="stylesheet" href="css/jquery-ui.css"/>
<link rel="stylesheet" href="css/jquery-ui.css" />
<script src="js/jquery-ui.js"></script>
<script type="text/javascript" src="js/catalogo.js"></script>
</head>
<body>
	<div class="container">
	<nav class="navbar navbar-light bg-light">
  		<a class="navbar-brand" href="">Inicia Sesion</a>
	</nav>
		
		<form action="ServidorUsuario" method="post">
			Usuario: <input type="text" id="txtUsu" name="txtUsu">
			Password: <input type="password" id="txtPass" name="txtPass">
			<br>
			<button type="submit" class="btn btn-success" onclick="">Enviar</button>
			<input type="hidden" id="vista" name="vista" value="Inicio.jsp">  
		</form>
	</div>
	
</body>
</html>