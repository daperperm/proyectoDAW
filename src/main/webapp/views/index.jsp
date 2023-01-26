<!DOCTYPE html>
<html lang="es">
<head>
<meta charset="utf-8">
<title>Catálogo básico JQuery-Ajax</title>

<!-- Carga de estilos UI JQUERY -->
<link type="text/css" href="./frontEndFrw/jquery-ui-1.13.0/jquery-ui.min.css" rel="stylesheet" />

<!-- Carga de estilos propias del proyecto -->
<link href="./styles/estilos.css" rel="stylesheet" type="text/css">
<link href="./styles/StylesTable.css" rel="stylesheet" type="text/css">
<link href="./styles/styleforms.css" rel="stylesheet" type="text/css">

<!-- Carga de jquery -->
<script src="./frontEndFrw/jquery-3.6.0.min.js"></script>
<script src="./frontEndFrw/jquery-ui-1.13.0/jquery-ui.min.js"></script>

<!-- Carga de script js propia del proyecto -->
<script src="./js/index.js"></script>
</head>
<body>
	<div class="Cabecera">
		<p class="tituloblog">JQuery - Ajax</p>
	</div>
	<div class="izq">
		<div class="noticia">
			<p class="titulo">Ejemplo 1: Carga de otra vista en una capa</p>
			<p>
				En este ejemplo, al hacer click en el botón "Probar", se recarga el
				contenido de la capa de la derecha con $.load con el resultado de
				invocar una controladora que delega en una subvista. <a href="#"
					onclick="LoadEjemplo1();">Probar</a>
			</p>
			<p>https://api.jquery.com/load/</p>
		</div>
		<div class="noticia">
			<p class="titulo">Ejemplo 2: Apertura de dialogo y carga dinámica
				de html</p>
			<p>En este ejemplo, al hacer click en el botón "Probar", se
				abrirá una ventana de tipo componente Dialog cuyo contenido se
				genéra dinámicamente con $.html. <a href="#" onclick="OpenWindows1();">Probar</a></p>
				<p>https://api.jqueryui.com/dialog/</p>
		</div>
		<div class="noticia">
			<p class="titulo">Ejemplo 3: Apertura de dialogo, envío Post y respuesta de una vista</p>
			<p>
				En este ejemplo, al hacer click en el botón "Probar", se abrirá una
				ventana de tipo componente Dialog que ofrece un formulario. Al hacer
				click en enviar, envia los parámetros por método POST a una controladora haciendo uso
				de Ajax. Se recarga el dialogo con la vista delegada por la controladora informando de los datos enviados. </p>
				<p>En este ejemplo, se simula un retardo en la controladora para que se compruebe como se puede 
				proteger el servidor evitando que el usuario pueda hacer varios clicks en el botón de envío. Se muestra
				una animación de carga que por un lado protege al servidor de reiteraciones de envíos y por otro lado
				sirve de feedback al usuario para saber que debe esperar.
				<a href="#" onclick="OpenWindows2();">Probar</a></p>
			    <p>https://api.jquery.com/jquery.ajax/</p>
		</div>
		<div class="noticia">
			<p class="titulo">Ejemplo 3: Apertura de dialogo, envío Post y respuesta en objeto JSON</p>
			<p>En este ejemplo, al hacer click en el botón "Probar", se abrirá una
				ventana de tipo componente Dialog que ofrece un formulario. Al hacer
				click en enviar, envia los parámetros por método POST a una controladora, haciendo uso
				de Ajax. La controladora devolverá un JSON indicando si la validación es correcta o incorrecta.</p>
				<p>En este ejemplo, se simula un retardo en la controladora para que se compruebe como se puede 
				proteger el servidor evitando que el usuario pueda hacer varios clicks en el botón de envío. Este botón 
				es deshabilitado durante el tiempo de espera de la respuesta del servidor.
				<a href="#" onclick="OpenWindows3();">Probar</a></p>
				<p>https://api.jquery.com/jquery.ajax/</p>
		</div>
	</div>
	<div id="CapaDerecha" class="der">
		<p></p>
	</div>


	<!-- Código HTML orientado a las ventanas jquery -->
	<div id="Win1"></div>
	
	<div id="Win2">
		<form action="#">
			<fieldset>
				<legend>Datos de Envío</legend>
				<p class="itemform">
					Dirección:
					<textarea id="direccion" name="direccion" rows="2" cols="30"></textarea>
				</p>
				<p class="itemform">
					Num.: <input type="number" id="numero" name="numero" min="0"
						max="3000" />
				</p>
				<p class="itemform">
					Cod. Provincia: <input type="number" id="provincia"
						name="provincia" min="0" max="99999" />
				</p>
				<p class="itemform">
					Municipio: <input type="text" id="municipio" name="municipio"
						size="60" />
				</p>
				<a href="#" onclick="SendToEjemplo2()">ENVIAR</a>
			</fieldset>
		</form>
		
	</div>
	
	<div id="Win3">
		<form action="#">
			<fieldset>
				<legend>Datos de Personales</legend>
				<p class="itemform">
					Nombre: <input type="text" id="nombre" name="nombre" size="30" />
				</p>
				<p class="itemform">
					Apellidos: <input type="text" id="apellidos" name="apellidos" size="60" />
				</p>
				<p class="itemform">
					Edad: <input type="number" id="edad" name="edad" min="0" max="150" />
				</p>
				<div id="ZonaLinkEnviar"><a href="#" onclick="SendToEjemplo3()">ENVIAR</a></div>
				<div id="MensajeErrorWin3"><p><br/></p></div>
			</fieldset>
		</form>
		
		
	</div>

</body>
</html>
