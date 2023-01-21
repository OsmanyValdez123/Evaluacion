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
<script type="text/javascript" src="js/datatables.min.js"></script>
<script type="text/javascript" src="js/dataTables.bootstrap4.min.js"></script>
<link rel="stylesheet" type="text/css" href="css/datatables.min.css" />
<link rel="stylesheet" type="text/css"
	href="css/dataTables.bootstrap4.min.css" />
<script type="text/javascript" src="js/catalogo.js"></script>	
</head>
<body>
	<div class="container">
	<nav class="navbar navbar-light bg-light">
  		<a class="navbar-brand" href="">Edita Usuario </a>
	</nav>
	<div>
		<img alt="imagenUsuario" src="Images/usuarioLogo.png" style="width: 80px;height:80px">
		<form action="CatalogoUsuarios" method="post"> 
			<br>
			Nombre: <br>
			<input type="text" id="txtNombreAct" name="txtNombreAct" value="${nombre_usu}" style="width: 80%"> <br><br>
			Genero: <br>
			<input type="text" id="txtGeneroAct" name="txtGeneroAct" value="${genero_usu}" style="width: 80%"> <br><br>
			Email: <br>
			<input type="text" id="txtEmailAct" name="txtEmailAct" value="${email_usu}" style="width: 80%"><button type="button" onclick='addInput()'>+</button> <br><br>
			 <div id='input-cont'>
        
   		 	</div>
			<br>
			<input type="text" id="txtCorreoAlternativo" value="" style="display:none"> 
			Estatus: <br>
			<select id="slcEstatusAct" name="slcEstatusAct" style="width: 80%">
				<option  value="200">Activo</option>
				<option  value="500">Inactivo</option>
			</select>
			<br><br>
			Subir Archivo: <br>
			<input type="file" style="border-color: rgb(44,184,10);" name="imagenesActuImg[]" accept="image/png, image/gif, image/jpeg" id="fileImagenAct" onchange=" return validarImagenes(this)">
			<div id="preview" width="100%" height="100%"></div>
			<br><br>
			<input type="hidden" id="idUsuAct" name="idUsuAct" value="${id_usu}">  
			<button type="submit" class="btn btn-info btn-lg btn-block">Actualizar</button>
			<input type="hidden" id="vista" name="vista" value="ActualizaUsuario"> 
		</form>
		<br>
		<form action="CatalogoUsuarios" method="post">
			<button type="submit" class="btn btn-warning btn-lg btn-block">Cancelar</button>
			<input type="hidden" id="vista" name="vista" value="regresarCatalogo">
		</form>
		
	</div>
	</div>
<script>
        const container = document.getElementById('input-cont');

        // Call addInput() function on button click
        function addInput(){
            let input = document.createElement('input');
            input.placeholder = 'Otro Correo';
            container.appendChild(input);
        }
        
        function limpiaCampos(){
        	$('#input-cont').val('');
        	
        }
</script>		
</body>
</html>