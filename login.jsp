
<!DOCTYPE html>
<html>

<head>
<!-- paquete de caracteres -->
<meta charset="utf-8">
<!-- Tama�o de la pantalla -->
<meta name="viewport" content="width=device-width">
<!-- titulo de la pesta�a -->
<title>Tienda tecnológica</title>

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
			<a class="navbar-brand links" href="index.html"><i class="fas fa-chalkboard-teacher"></i>
			 Tienda Tecnológica
			</a>
		</div>
	</nav>
	<center>
		<!-- Contenedor de los botones y texto -->
		<div class="container-col-xs">
	<div class="row" style="
	        width:100%;height:60px;">
	</div>
	  <!--Imagen usuario -->
	  <p></p>
	   <img style= "border-radius:80px " src="https://cdn.pixabay.com/photo/2018/11/13/21/43/instagram-3814049_960_720.png"  width="100" height: auto >
	
	  <!--p sirve para dar espacio -->
	    <p></p>
	    
	    <div class="col-md-3">
	  <!--Usuario -->
	  <div class="input-group flex-nowrap">
	  <span class="input-group-text" id="addon-wrapping"><i class="fas fa-user-circle" style="color: blue";></i></span>
	  <input id="inputuser" type="text" class="form-control" placeholder="Usuario" aria-label="Username" aria-describedby="addon-wrapping">
	  </div>
	
	  <p></p>
	  <!--Contrase�a -->
	   <div class="input-group flex-nowrap">
	  <span class="input-group-text" id="addon-wrapping"><i class="fab fa-keycdn" style="Color: #E0DD2B";></i></span>
	  <input id="inputpass" type="password" class="form-control" placeholder="Contraseña" aria-label="Password" aria-describedby="addon-wrapping">
	  </div>
	  </div>
	
	  <p>  </p>
	  <div class="col-md-3">
	  <!--Botón de ingreso -->
	  <div class="d-grid gap-2 col-6 mx-auto">
	  <button type="button" class="btn btn-info" onclick="comparar()">Ingresar</button>
	  </div>
	  </div>
	  
	  <p></p>
	  <!--Crear nuevo usuaro -->
	  <a href="#" class="link" onclick="insertar()">Crear nuevo usuario</a>
	  <p><a href="#" class="link">¿Olvidó la contraseña?</a></p>
	  <div id="error" class="alert alert-danger visually-hidden"
					role="alert">Usuario o contraseña incorrecta!</div>
	  </div>
		</center>	
			
				
				<div id="error" class="alert alert-danger visually-hidden"
					role="alert">Usuario o contraseña incorrecta!</div>

		

	<nav class="navbar fixed-bottom navbar-dark bg-dark">
		<div class="row justify-content-between">
			<div class="col-4">
				<a class="navbar-brand links" href="#">
					Diseñado y programado por Scrum 4 </a>
			</div>
			
		</div>
	</nav>
	
	<!-- Script que trae la informacion de la api y la compara con las entradas -->
	<script>
		function comparar() {
			//trayendo texto de input de username
			var x = document.getElementById("inputuser").value;
			//trayendo texto de input de password
			var y = document.getElementById("inputpass").value;
			//url de la api 
			var baseurl = "http://localhost:8080/listarusuarios";
			//creando un objeto de manipulacion de solicitudes
			var xmlhttp = new XMLHttpRequest();
			//abriendo la api
			xmlhttp.open("GET", baseurl, true);
			//funcion interna que compara la informaci�n
			xmlhttp.onreadystatechange = function() {
				//si se obtiene un 200 (Conexion correcta)
				if (xmlhttp.readyState === 4 && xmlhttp.status === 200) {
					//convirtiendo JSON en variable javascrip
					var usuarios = JSON.parse(xmlhttp.responseText);
					
					//verificando uno por uno si existe ese usuario
					for (i = 0; i < usuarios.length; i++) {
						
						//imprimiendo en la consola del navegador pata verificar
						console.log(usuarios);
						console.log(x);
						console.log(usuarios[i].usuario);
						console.log(y);
						console.log(usuarios[i].password);
						
						//si el nombre coincide
						if (usuarios[i].usuario === x) {
							//si la clave coincide
							if (usuarios[i].password === y) {
								console.log("si");
								var element = document.getElementById("error");
								element.classList.add("visually-hidden");
								document.getElementById("inputuser").value = "";
								document.getElementById("inputpass").value = "";
								window.location.href = "listausuarios.jsp";
								return;
							} else {
								//si la clave NO coincide
								console.log("error clave");
								var element = document.getElementById("error");
								element.classList.remove("visually-hidden");
								document.getElementById("inputuser").value = "";
								document.getElementById("inputpass").value = "";
								return;
							}
						}
					}
					//Si no existe el usuario
					console.log("no encontrado");
					
					//quitando la capacidad de ocultacion del error para mostrarlo
					var element = document.getElementById("error");
					element.classList.remove("visually-hidden");
					document.getElementById("inputuser").value = "";
					document.getElementById("inputpass").value = "";
					return;
				}
			};
			//ejecutando
			xmlhttp.send();
		}
		
		function insertar() {
			
			//url de la api 
			var baseurl = "http://localhost:8080/insertarusuario";
			
			//creando un objeto de manipulacion de solicitudes
			var xmlhttp = new XMLHttpRequest();
			//abriendo la api
			xmlhttp.open("GET", baseurl, true);
			window.location.href = "insertarusuario.jsp";

			//ejecutando
			xmlhttp.send();
		}
		
		
	</script>
	
	

</body>

</html>