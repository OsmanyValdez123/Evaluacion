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
<script type="text/javascript" src="js/catalogo.js"></script>
<link rel="stylesheet" type="text/css" href="css/datatables.min.css" />
<link rel="stylesheet" type="text/css"
	href="css/dataTables.bootstrap4.min.css" />
</head>
<script type="text/javascript">
	$(document).ready(function() {
	    $('#example').dataTable();
	} );
	
</script>
<body>
		<div class="container">
		<br>
	<table align="center" width="80%">
		<tr>
			<td align="center">
					<c:if test="${MensajeRespuesta != ''}">
						<div class="alert alert-success">
							<h4>${MensajeRespuesta} <a href="CatalogoUsuarios.jsp" class="close"
								data-dismiss="alert" aria-label="close">×</a></h4>
						</div>
					</c:if>
			</td>
		</tr>
	</table>
		
	<button type="button" class="btn btn-primary" data-toggle="modal" data-target="#exampleModal" onclick="limpiaCampos()">
	 Crear Usuario
	</button>
<div class="modal fade" id="exampleModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
  <div class="modal-dialog" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="exampleModalLabel">Crear Nuevo Usuario</h5>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      <form action="CatalogoUsuarios" method="post">
      <div class="modal-body">
        Nombre: <br>
        <input type="text" id="txtNombreNuevo" name="txtNombreNuevo"><br>
        Genero: <br>
        <input type="Genero" id="txtGeneroNuevo" name="txtGeneroNuevo"><br>
        Email: <br>
        <input type="text" id="txtEmailNuevo" name="txtEmailNuevo"><button type="button" onclick='addInput()'>+</button><br>
        <div id='input-cont'>
        
   		 </div>
        Estatus: <br>
        <select id="slcEstatusNuevo" name="slcEstatusNuevo">
        	<option value="200">Activo</option>
        	<option value="500">Inactivo</option>
        </select> <br>
        Subir Archivo: <br>
        <input type="file" style="border-color: rgb(44,184,10);" name="imagenesActuImg[]" accept="image/png, image/gif, image/jpeg" id="fileImagenAct" onchange=" return validarImagenes(this)"> 
      </div>
      <div id="preview"></div>
      <div class="modal-footer">
        <button type="button" class="btn btn-secondary" data-dismiss="modal">Cancelar</button>
        <button type="submit" class="btn btn-primary" onclick="return validaCamposNuevos()">Guardar</button>
        <input type="hidden" id="vista" name="vista" value="agregaUsuario">
      </div>
      </form>
    </div>
  </div>
</div>
			<br>
			<br>
			<div id="gridTablaUsuarios">
				
			</div>
			
			<div class="table-responsive ">
			<table class="table-striped table-hover" id="example">
					<thead
						style="background-color: #269CE4; color: white; font-family: sans-serif;">
						<tr>
							<th scope="col" style="width: 15%"></th>	
							<th scope="col" style="width: 15%">ID</th>
							<th scope="col" style="width: 30%">NOMBRE</th>
							<th scope="col" style="width: 20%">EMAIL</th>
							<th scope="col" style="width: 30%">GENERO</th>
							<th scope="col" style="width: 30%">ESTATUS</th>
							<th scope="col" style="width: 10%"></th>
							<th scope="col" style="width: 10%"></th>
							
						</tr>
					</thead>
				<c:forEach var="usuario" items="${CAT_USU}">
							<tr>
								<td><img src="Images/usuarioLogo.png" style="width: 50px;height:50px"></img></td>
								<td><c:out value="${usuario.id}"></c:out></td>
								<td><c:out value="${usuario.nombre}"></c:out></td>
								<td><c:out value="${usuario.email}"></c:out></td>
								<td><c:out value="${usuario.genero}"></c:out></td>
								<td><c:if test="${usuario.estatus == 200}">Activo</c:if><c:if test="${usuario.estatus == 500}">Inactivo</c:if></td>
								<td>
								<form action="CatalogoUsuarios" method="post">
									<input type="hidden" name="vista" value="eliminaUsuario">
									<input type="hidden" name="id_usuElimina" value="${usuario.id}">
									<button type="submit" class="btn btn-danger btn-circle">
										<i class="glyphicon glyphicon-cog" data-toggle="tooltip" title="Eliminar Usuario">Eliminar</i>
									</button>
								</form>
								</td>
								<td>
								<form action="CatalogoUsuarios" method="post">
									<input type="hidden" name="vista" value="editaUsuario">
									<input type="hidden" name="id_usu" value="${usuario.id}">
									<input type="hidden" name="nombre_usu" value="${usuario.nombre}">
									<input type="hidden" name="email_usu" value="${usuario.email}">
									<input type="hidden" name="genero_usu" value="${usuario.genero}">
									<input type="hidden" name="estatus_usu" value="${usuario.estatus}">
									<button type="submit" class="btn btn-info btn-circle">
										<i class="glyphicon glyphicon-cog" data-toggle="tooltip" title="Editar Usuario">Editar</i>
									</button>
								</form>
								</td>
							</tr>
				</c:forEach>
			</table>
			<br>
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