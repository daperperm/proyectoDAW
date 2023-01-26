/*###############################################################
 *                      INICIALIZACIONES
 *               (Comunes a todos los ejemplos)
 *###############################################################
 */
//Se inicializa las ventanas (dialogs) ajustando sus propiedades en
//la inicialización de JQUERY
//Documentación del fabricante: https://api.jqueryui.com/dialog/
 $(document).ready(function(){

	  $("#Win1").dialog({modal: true, width: 650, height: 550, autoOpen: false, resizable: false, show: { effect: "blind", duration: 800 }});
      $("#Win2").dialog({modal: true, width: 650, height: 550, autoOpen: false});
      $("#Win3").dialog({modal: true, width: 650, height: 422, autoOpen: false, resizable: false});
   });
/*###############################################################

/*###############################################################
 *              CÓDIGO JAVASCRIPT: EJEMPLO 1
 *
 *  Documentación del fabricante: https://api.jquery.com/load/
 *
 *###############################################################
 */
 
//Método que recarga en la capa con id="CapaDerecha" el resultado de la invocación a 
//la controladora ejemplo1Controller.
function LoadEjemplo1(){

 $("#CapaDerecha").load('ejemplo1Controller');


}
/*###############################################################*/


/*###############################################################
 *              CÓDIGO JAVASCRIPT: EJEMPLO 2
 *
 *  Documentación del fabricante: https://api.jqueryui.com/dialog/
 *                                https://api.jquery.com/jquery.ajax/
 *
 *###############################################################
 */

//Método que invoca/abre el dialogo de la capa con id="#Win1" y carga un contenido
//html de forma dinámica.
function OpenWindows1() {
	/*
	$(“#Win1”).dialog('open') = abre la ventana.
    $(“#Win1”).dialog('close') = cierra la ventana.
    $(“#Win1”).dialog('isOpen') = devuelve true en caso de que la ventana este abierta
	 */
  $('#Win1').html('<p>Este texto, es resultado de una carga din&aacute;mica con el m&eacute;todo .html de Jquery que permite cargar en una regi&oacute;n del DOM.</p>');
  $('#Win1').dialog('open');
}
/*###############################################################*/


/*###############################################################
 *              CÓDIGO JAVASCRIPT: EJEMPLO 3
 *
 *  Documentación del fabricante: https://api.jqueryui.com/dialog/
 *                                https://api.jquery.com/jquery.ajax/
 *
 *###############################################################
 */



//Método que invoca/abre el dialogo de la capa con id="#Win2"
function OpenWindows2() {
	/*
	$(“#Win2”).dialog('open') = abre la ventana.
    $(“#Win2”).dialog('close') = cierra la ventana.
    $(“#Win2”).dialog('isOpen') = devuelve true en caso de que la ventana este abierta
	 */
  $('#Win2').dialog('open');
}


//Método que envía por post usando ajax los datos de un formulario a una controladora que devuelve el resultado
//de ejecutar una vista que es embebido en la capa Win2.
/*
Estos son algunos de los atributos útiles de la función JQuery Ajax:

url : URL del servlet / recurso que se invocará.
method : Tipo de método HTTP como GET, POST, etc.
success : función de devolución de llamada en la finalización con éxito de la llamada AJAX.
error : función de devolución de llamada en caso de que se produzca algún error durante la llamada AJAX.
data : datos que se envían al enviar la solicitud.
dataType: Establece el tipo de información que se espera recibir como respuesta del servidor. Si no se especifica ningún valor, de forma predeterminada, jQuery revisa el tipo de MIME que posee la respuesta.
beforeSend : Pre-solicitud de función de devolución de llamada. devolver falso desde esta función cancelará la solicitud.
complete : Función de devolución de llamada, ejecutada después de finalizar la solicitud (con éxito o error).
contentType : Solicite el tipo de contenido como: application / x-www-form-urlencoded, multipart / form-data, o text / plain, etc.
headers : Solicitar encabezados.
timeout : Establezca un tiempo de espera para la solicitud. Valores en milisegundos.

Documentación del fabricante: https://api.jquery.com/jquery.ajax/
*/

function SendToEjemplo2(){
var direc = $('#direccion').val();
var num = $('#numero').val();
var codprov = $('#provincia').val();
var muni = $('#municipio').val();

$('#Win2').html('<div class="clsCarga"></div>');
$.ajax({
url     : 'ejemplo2Controller',
method     : 'POST',
data     : {direccion:direc, num:num, codprovincia:codprov, municipio:muni},
success    : function(resultText){
$('#Win2').html(resultText);
},
error : function(jqXHR, exception){
$('#Win2').html('<p>Ha ocurrido un error fatal</p>');
}
});
}

/*###################################################################################*/

/*###############################################################
 *              CÓDIGO JAVASCRIPT: EJEMPLO 4
 *
 *  Documentación del fabricante: https://api.jqueryui.com/dialog/
 *                                https://api.jquery.com/jquery.ajax/
 *
 *###############################################################
 */

//Método que invoca/abre el dialogo de la capa con id="#Win3"
function OpenWindows3() {
	/*
	$(“#Win3”).dialog('open') = abre la ventana.
    $(“#Win3”).dialog('close') = cierra la ventana.
    $(“#Win3”).dialog('isOpen') = devuelve true en caso de que la ventana este abierta
	 */
  $('#MensajeErrorWin3').html('<p><br/></p>');
  $('#Win3').dialog('open');
}


function SendToEjemplo3(){
var nombre = $('#nombre').val();
var apellidos = $('#apellidos').val();
var edad = $('#edad').val();

$('#ZonaLinkEnviar').html('<a href="#">PENSANDO...</a>');
$.ajax({
url     : 'ejemplo3Controller',
dataType:"json",
method     : 'POST',
data     : {nombre:nombre, apellidos:apellidos, edad:edad},
success    : function(data){
var error=data.error;
var descerror = data.descerror;

      if(error=="true"){
        $('#MensajeErrorWin3').html('<p class="MensajeErrorParrafo">Error: Te has olvidado de rellenar '+descerror+'</p>');
      }else{
        $('#MensajeErrorWin3').html('<p class="MensajeCorrectoParrafo">Ok, Todos los datos son correctos</p>');
      }
},
error : function(jqXHR, exception){
$('#MensajeErrorWin3').html('<p>Error: Ha ocurrido un error fatal</p>');
},
complete: function(){
     $('#ZonaLinkEnviar').html('<a href="#" onclick="SendToEjemplo3()">ENVIAR</a>');
   }
});
}