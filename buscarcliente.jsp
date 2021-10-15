
<!DOCTYPE html>
<html>
<head>


<!-- paquete de caracteres -->
<meta charset="utf-8">
<!-- Tama�o de la pantalla -->
<meta name="viewport" content="width=device-width">
<!-- titulo de la pesta�a -->
<title>Buscar cliente</title>
<!-- bootstrap-->
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC"
	crossorigin="anonymous">

<!-- font awesome -->
<link rel="stylesheet"
	href="https://use.fontawesome.com/releases/v5.15.4/css/all.css"
	integrity="sha384-DyZ88mC6Up2uqS4h/KRgHuoeGwBcD4Ng9SiP4dIRy0EXTlnuz47vAwmeGwVChigm"
	crossorigin="anonymous">

<!-- Cargando mi hoja de estilo -->
<link href="style.css" rel="stylesheet" type="text/css" />



</head>


<body background="https://cdn.pixabay.com/photo/2016/02/17/19/08/lotus-1205631_960_720.jpg" opacity=0.5>
	<!-- Navbar-->
	<nav class="navbar navbar-dark bg-dark">
		<div class="container-fluid">
			<a class="navbar-brand links" href="index.html"><i class="fas fa-chalkboard-teacher"></i>Tienda Tecnologica</a>
			<nav class="navbar navbar-dark bg-dark">
		<div class="container">
			<button type="button" class="btn btn-outline-primary" onclick="window.location.href='/listausuarios.jsp'">
			<i class="fas fa-users"></i> Usuarios</button>
			<button type="button" class="btn btn-outline-primary" onclick="window.location.href='/listaclientes.jsp'">
			<i class="fas fa-address-book"></i> Clientes</button>
			<button type="button" class="btn btn-outline-primary" onclick="window.location.href='/listaproveedores.jsp'">
			<i class="fas fa-truck"></i> Proveedores</button>
			<button type="button" class="btn btn-outline-primary" onclick="window.location.href='/listaproductos.jsp'">
			<i class="fas fa-apple-alt"></i> Productos</button>
			<button type="button" class="btn btn-outline-primary" onclick="window.location.href='/listaventas.jsp'">
			<i class="fas fa-money-check-alt"></i> Ventas</button>
			<button type="button" class="btn btn-outline-primary" onclick="window.location.href='/listareportes.jsp'">
			<i class="fas fa-clipboard-list"></i> Reportes</button>
		</div>
	</nav>
		</div>
	</nav>

	<div style="padding-left: 5px">
		<h3 class="card-header">Buscando un cliente</h3>
		<div class="container">


			<div id="error" class="alert alert-danger visually-hidden"
				role="alert">Error al buscar el cliente, el cliente no existe</div>

			<div id="correcto" class="alert alert-success visually-hidden"
				role="alert">Cliente encontrado con exito</div>

			<form id="form1">
			
				<div class="input-group mb-3">
					<span class="input-group-text" id="basic-addon4">Cedula cliente a buscar</span> <input
						type="text" class="form-control"
						placeholder="Inserte cedula aqui..."
						aria-describedby="basic-addon4" required id="usersearch" >
				</div>
				
				<div class="input-group mb-3">
					<span class="input-group-text" id="basic-addon1">Cedula</span> <input
						type="text" class="form-control"
						aria-describedby="basic-addon1" required id="cedula_cliente" disabled="disabled">
				</div>
				<div class="input-group mb-3">
					<span class="input-group-text" id="basic-addon5">Correo</span> <input
						type="text" class="form-control"
						aria-describedby="basic-addon5" required id="correo_electronico"  disabled="disabled">
				</div>
				

				<div class="input-group mb-3">
					<span class="input-group-text" id="basic-addon3">Direccion</span>
					<input type="text" class="form-control"
						aria-describedby="basic-addon3" required id="direccion"  disabled="disabled">
				</div>
				<div class="input-group mb-3">
					<span class="input-group-text" id="basic-addon2">Nombre completo</span> <input
						type="text" class="form-control"
						aria-describedby="basic-addon2" required id="nombre_completo" disabled="disabled">
				</div>
				<div class="input-group mb-3">
					<span class="input-group-text" id="basic-addon4">Telefono</span> <input
						type="text" class="form-control"
						aria-describedby="basic-addon4" required id="telefono"  disabled="disabled">
				</div>

				
			</form>

			<button type="button" class="btn btn-primary" onclick="enviar()">
				<i class="fas fa-search"></i> Buscar cliente
			</button>
			
		
			<center>
			<div class="container">
				<div class="row">
				<a href="#" class="link" onclick="window.location.href='/insertarcliente.jsp'"><h5>Agregar cliente</h5></a>
				<a href="#" class="link" onclick="window.location.href='/eliminarcliente.jsp'"><h5>Eliminar cliente</h5></a>
				<a href="#" class="link" onclick="window.location.href='/actualizarcliente.jsp'"><h5>Actualizar cliente</h5></a>
				<a href="#" class="link" onclick="window.location.href='/buscarcliente.jsp'"><h5>Buscar un cliente</h5></a>
				<a href="#" class="link" onclick="window.location.href='/listaclientes.jsp'"><h5>Listar todos los clientes</h5></a>
				</div>
			</div>
			</center>
		</div>

	</div>
	<nav class="navbar fixed-bottom navbar-dark bg-dark">
		<div class="row justify-content-between">
			<div class="col-4">
				<a class="navbar-brand links" href="#">Diseñado y programado por Scrum4</a>
			</div>
		</div>
	</nav>
	<script>
		function enviar() {

				
				var req = new XMLHttpRequest();
				var coincidencia = false;
				var user=   document.getElementById("usersearch").value;
				req.open('GET', 'http://localhost:8080/consultarcliente?cedula_cliente='+user, false);
				req.send(null);
				var clientes = null;
				if (req.status == 200)
					clientes = JSON.parse(req.responseText);
				console.log(JSON.parse(req.responseText));
				
			

				var element = document.getElementById("error");
				element.classList.add("visually-hidden");
				var element2 = document.getElementById("correcto");
				element2.classList.remove("visually-hidden");
				console.log(clientes.toString());
				
			if (clientes.toString()!=""){

				document.getElementById("cedula_cliente").value = clientes[0].cedula_cliente;
				document.getElementById("correo_electronico").value = clientes[0].correo_electronico;
				document.getElementById("direccion").value = clientes[0].direccion;
				document.getElementById("nombre_completo").value = clientes[0].nombre_completo;
				document.getElementById("telefono").value = clientes[0].telefono;
				
				
				document.getElementById("usersearch").value = "";
			

			} else {
				var element = document.getElementById("error");
				element.classList.remove("visually-hidden");
				var element2 = document.getElementById("correcto");
				element2.classList.add("visually-hidden");
				document.getElementById("cedula_cliente").value = "";
				document.getElementById("correo_electronico").value = "";				
				document.getElementById("direccion").value = "";
				document.getElementById("nombre_completo").value = "";
				document.getElementById("telefono").value = "";
				
			}
		}
	</script>

</body>
</html>