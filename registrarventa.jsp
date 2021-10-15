<!DOCTYPE html>
<html>
<head>


<!-- paquete de caracteres -->
<meta charset="utf-8">
<!-- Tamaño de la pantalla -->
<meta name="viewport" content="width=device-width">
<!-- titulo de la pestaña -->
<title>Registrar venta</title>
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
		<h3 class="card-header">Registrando venta</h3>
		<div class="container">


			<div id="error" class="alert alert-danger visually-hidden"
				role="alert">Error al buscar el cliente, el cliente no existe</div>

			<div id="correcto" class="alert alert-success visually-hidden"
				role="alert">Cliente encontrado con exito</div>

      <!-- buscar cliente -->
			<form id="form1">
			
				<div class="input-group mb-3">
          <input type="text"       class="form-control"
						placeholder="Inserte cedula cliente"
						aria-describedby="basic-addon4" required id="clientesearch" >
            <button type="button" class="btn btn-primary" onclick="enviar()">
				      <i class="fas fa-search"></i> 
			      </button>
				</div>
        <!-- Trae de la tabla el nombre del cliente -->        
				<div class="input-group mb-3">
					<span class="input-group-text" id="basic-addon4">Nombre cliente</span> <input
						type="text" class="form-control"
						aria-describedby="basic-addon2" required id="nombre_cliente"  readonly="readonly">
				</div>				
        <!-- genera el numero consecutivo de la venta -->
				<div class="input-group mb-3">
					<span class="input-group-text" id="basic-addon5">Consecutivo</span> <input
						type="text" class="form-control"
						aria-describedby="basic-addon1" required id="consecutivo">
				</div>
        <!-- insertar producto 1 -->
        <center>
				<div class="input-group-sm mb-3">
          <input type="text" class="form-control"
						placeholder="Inserte codigo producto"
						aria-describedby="basic-addon1" required id="codigosearch1">
            <button type="button" class="btn btn-primary" onclick="enviar()"><i class="fas fa-search"></i> </button>
                <input	type="text"   class="form-control" 						aria-describedby="basic-addon2" required id="nombre_producto1"  readonly="readonly"> 
        </div>

  			<div class="input-group input-group-sm mb-3">
            <input type="number" value="1" id="cantidad1"> 
            <span class="input-group-text" id="basic-addon1">Valor total</span> <input type="text" class="form-control" id="total1">
            <div>
            <button class="btn btn-danger buttonDelete" type="button">X</button></div>
            </div>
          
        </div>
        <!-- insertar producto 2 -->
       
				<div class="input-group-sm mb-3">
          <input type="text" class="form-control"
						placeholder="Inserte codigo producto"
						aria-describedby="basic-addon2" required id="codigosearch2" >
            <button type="button" class="btn btn-primary" onclick="enviar()"><i class="fas fa-search"></i> </button>
                <input	type="text"   class="form-control" 						aria-describedby="basic-addon2" required id="nombre_producto2"  readonly="readonly"> 
        </div>
  			<div class="input-group input-group-sm mb-3">
            <input type="number" value="1" id="cantidad2"> 
            <span class="input-group-text" id="basic-addon1">Valor total</span> <input type="text" class="form-control" id="total2">
            <div>
            <button class="btn btn-danger buttonDelete" type="button">X</button></div>
            </div>
          </center>  
        </div>       
        <!-- insertar producto 3 -->
       
				<div class="input-group-sm mb-3">
          <input type="text" class="form-control"
						placeholder="Inserte codigo producto"
						aria-describedby="basic-addon3" required id="codigosearch3" >
            <button type="button" class="btn btn-primary" onclick="enviar()"><i class="fas fa-search"></i> </button>
                <input	type="text"   class="form-control" 						aria-describedby="basic-addon2" required id="nombre_producto3"  readonly="readonly"> 
        </div>
  			<div class="input-group input-group-sm mb-3">
            <input type="number" value="1" id="cantidad3"> 
            <span class="input-group-text" id="basic-addon1">Valor total</span> <input type="text" class="form-control" id="total3">
            <div>
            <button class="btn btn-danger buttonDelete" type="button">X</button></div>
            </div>
          </center>  
        </div>
        <div class="input-group input-group-sm mb-3">
						<span class="input-group-text" id="basic-addon1">Total	IVA</span> <input type="text" class="form-control" id="total_iva">
										</div>
        <div class="input-group input-group-sm mb-3">						<span class="input-group-text"    id="basic-addon1">Total	venta</span><input type="text" class="form-control" id="total_venta">
				</div>

         </center> 
  		</form>

  		<center>
			<div class="container">
				<div class="row">
				<a href="#" class="link" onclick="window.location.href='/insertarcliente.jsp'"><h5>Confirmar venta</h5></a>
				<a href="#" class="link" onclick="window.location.href='/eliminarcliente.jsp'"><h5>Cancelar venta </h5></a>
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
		includeHTML();
	</script>

	<script src="https://cdn.jsdelivr.net/npm/simple-datatables@latest"
		crossorigin="anonymous"></script>

	<script>
		function buscarCliente() {
			var client = document.getElementById("cedula_cliente").value;
			var req = new XMLHttpRequest();
			var coincidencia = false;
			req.open('GET', 'http://localhost:8080/consultarcliente?cedula='
					+ client, false);
			req.send(null);
			var cliente = null;
			if (req.status == 200)
				cliente = JSON.parse(req.responseText);
			console.log(cliente);

			
			var icono = document.getElementById("clientesearch");
			if (cliente.toString() != "") {

				document.getElementById("nombre_cliente").value = cliente[0].nombre_cliente;
				
				icono.classList.replace("text-danger", "text-success");
				icono.classList.replace("fa-times", "fa-check");

			} else {
				document.getElementById("nombre_cliente").value = "";
				icono.classList.replace("text-success", "text-danger");
				icono.classList.replace("fa-check", "fa-times");
			}
		}
		
		var precio1=0.0;
		function insertarProducto1(){
			var prod1 = document.getElementById("codigo_producto1").value;
			var req = new XMLHttpRequest();
			var coincidencia = false;
			req.open('GET', 'http://localhost:8080/consultarproducto?code='
					+ prod1, false);
			req.send(null);
			var producto1 = null;
			if (req.status == 200)
				producto1 = JSON.parse(req.responseText);
			
			
			
			var icono = document.getElementById("codigosearch1");
			if (producto1.toString() != "") {

				console.log(producto1);
				document.getElementById("nombre_producto1").value=producto1[0].nombre_producto;
				precio1=parseFloat(producto1[0].precio_venta);
				console.log("Precio1: "+precio1)
				icono.classList.replace("text-danger", "text-success");
				icono.classList.replace("fa-times", "fa-check");

			} else {
				document.getElementById("nombre_producto1").value = "";
				icono.classList.replace("text-success", "text-danger");
				icono.classList.replace("fa-check", "fa-times");
			}
			
		}
		
		var precio2=0.0;
		function cargarProducto2(){
			var prod2 = document.getElementById("codigo_producto2").value;
			var req = new XMLHttpRequest();
			var coincidencia = false;
			req.open('GET', 'http://localhost:8080/consultarproducto?code='
					+ prod2, false);
			req.send(null);
			var producto2 = null;
			if (req.status == 200)
				producto2 = JSON.parse(req.responseText);
			var icono = document.getElementById("codigosearch2");
			if (producto2.toString() != "") {

				console.log(producto2);
				document.getElementById("nombre_producto2").value=producto2[0].nombre_producto;
				precio1=parseFloat(producto2[0].precio_venta);
				console.log("Precio2: "+precio2)
				icono.classList.replace("text-danger", "text-success");
				icono.classList.replace("fa-times", "fa-check");

			} else {
				document.getElementById("nombre_producto2").value = "";
				icono.classList.replace("text-success", "text-danger");
				icono.classList.replace("fa-check", "fa-times");
			}
		}
		
		var precio3=0.0;
		function cargarProducto3(){
			var prod3 = document.getElementById("codigo_producto3").value;
			var req = new XMLHttpRequest();
			var coincidencia = false;
			req.open('GET', 'http://localhost:8080/consultarproducto?code='
					+ prod3, false);
			req.send(null);
			var producto3 = null;
			if (req.status == 200)
				producto3 = JSON.parse(req.responseText);
			var icono = document.getElementById("codigosearch3");
			if (producto3.toString() != "") {

				console.log(producto3);
				document.getElementById("nombre_producto3").value=producto3[0].nombre_producto;
				precio1=parseFloat(producto3[0].precio_venta);
				console.log("Precio3: "+precio3)
				icono.classList.replace("text-danger", "text-success");
				icono.classList.replace("fa-times", "fa-check");

			} else {
				document.getElementById("nombre_producto3").value = "";
				icono.classList.replace("text-success", "text-danger");
				icono.classList.replace("fa-check", "fa-times");
			}
		}
		
		
	</script>

</body>
</html>