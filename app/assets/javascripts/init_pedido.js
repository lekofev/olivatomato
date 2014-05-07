/**
*
* @fileoverview Libreria con funciones de utilidad
* @author rrodriguez
* @date 25/10/2013
* @version 1.0
*/



function popupGracias()
{

	$.colorbox({
		// iframe:true,
		width:650,
		height:510,
		// transition:"none",
		opacity:0.5,
		scrolling:false,
		fixed:true,
		overlayClose:false,
		//escKey: false,
		arrowKey:false,
		// href:'fotos_agrupadas.html',
		// href:"http://localhost:3000/popup/"+id,
			
		onComplete:function(){
			cufon_popup_galeria();
			setTimeout(function(){$('#cboxClose').fadeIn();},100)
			
		},
		//href:'fotos_grande.html'
		onClosed:function(){
			$('#cboxClose').hide()
		}				
	}); 
}


function graciasCufon()
{
	Cufon.replace('.msj_gracias h3', { fontFamily: 'Ponsi Rounded Slab' });
}

$(document).ready(function(){

	//metodos inciales para detectar el navegador
	var lt_ie9=false;
	var msie=false;
	var url=document.URL;
	var urlHash;
	var urlLimpia;
	var primeraVez=true;

	urlHash=location.hash;
	urlHash=urlHash.substring(1,urlHash.length)

	var urlLimpia=url;
	while(urlLimpia.search('#')!=-1)
	{
		urlLimpia=urlLimpia.substring(0,urlLimpia.length-1)
	}

	if(jQuery.browser.msie && jQuery.browser.version<9.0)
	{
		//si es menor a ie9, la variable se volvera true
		lt_ie9=true;
	}	

	if(jQuery.browser.msie)
	{
		//si es ie, la variable se volvera true
		msie=true;
	}	


	Cufon.replace('.formulario_contenedor h1, .pedido_detalles h2, .pedido_datos .precio, .telefono .tlf, .font_ponsi_rounded_slab', { fontFamily: 'Ponsi Rounded Slab' });
	Cufon.replace('.titulo p, font_code_pro_light', { fontFamily: 'Code Pro Light Demo' });



/* ---------------Enviar form-------------*/




	

	var solotexto='\'\\¿¡@+-*/°!"#$%&/()=?¡¨*[];:_^`~¬\\,.-{}+1234567890¡¢£¤¥¦§¨©ª«¬®¯°±²³µ¶·¸¹º»¼½¾¿ÀÂÃÄÅÆÇÈÊËÌÎÏÐÒÔÕÖ×ØÙÛÜÝÞßàâãäåæçèêëìîïðòôõö÷øùûüýþÿŒœŠšŸƒ–—‘’‚“”„†‡•…‰€™´¨¨';
	var solonumero=' \'\\@ñÑ+-*/°!"#$%&/()=?¡¨*[];:_^`~¬\\,.-{}´+abcdefghijklmnopqrstuvwxyz¡¢£¤¥¦§¨©ª«¬®¯°±²³´µ¶·¸¹º»¼½¾¿ÀÁÂÃÄÅÆÇÈÉÊËÌÍÎÏÐÑÒÓÔÕÖ×ØÙÚÛÜÝÞßàáâãäåæçèéêëìíîïðñòóôõö÷øùúûüýþÿŒœŠšŸƒ–—‘’‚“”„†‡•…‰€™¿¡';
	var soloemail='\'\\¿¡ñÑ+*/°!"#$%&/()=?¡¨*[];:^`~¬\\,{}´+¡¢£¤¥¦§¨©ª«¬®¯°±²³´µ¶·¸¹º»¼½¾¿ÀÁÂÃÄÅÆÇÈÉÊËÌÍÎÏÐÑÒÓÔÕÖ×ØÙÚÛÜÝÞßàáâãäåæçèéêëìíîïðñòóôõö÷øùúûüýþÿŒœŠšŸƒ‘’‚“”„†‡•…‰€™';
	
	
	$("#nombre, #apellido, #apellidoMaterno").alpha({allow:" "},{ichars:solotexto});
	$("#telefono").numeric({ichars:'ñÑ+-*/°!"#$%&/()=?¡¨*[];:_^`~¬\\,.-{}´+¨ç¿ ¡'});
	$("#email").alphanumeric({ichars:soloemail},{allow:'@_--.'});


    jQuery.validator.addMethod("nombre_valido", function(value, element) {
		if(
			value == " " || 
			value == "Nombre" || 
			value == "Nombres" || 
			value == "Apellido Paterno" || 
			value == "Apellido Materno" || 
			value == "Apellido Materno" ||
			value == "Dirección" ||
			value == "Dni" ||  
			value == "Nombre" || 
			value == "Provincia" || 
			value == "Distrito" || 
			value == "Departamento" || 
			value == "Día" || 
			value == "Mes" || 
			value == "Año" ||
			value == "A&ntilde;o" || 
			value == "Operador" || 
			value == "Modelo" || 
			value == "Tipo de documento" ||
			value == "000000000" ||
			value == "00000000" ||
			value == "0000000" ||
			value == "Correo Electrónico" ||
			value == "Número de Contacto" ||
			value == "Número Celular" ||
			value == "DNI" ||
			value == "Sexo"	||
			value == "sexo"	||
			value == "Fecha de Nacimiento" ||
			value == "Operador Telefónico"	||
			value == "Especificar Modelo"
		)
		{
			return false;
		}else{
			return true;
		}
	}, "");



	$(".form_pedido").validate({
			rules:{
				nombre: {
					required: true,
					rangelength: [2,40],
					nombre_valido:true			
				},
				apellido: {
					required: true,
					rangelength: [2,40],
					nombre_valido:true
				},
				email: {
					required: true,
					email: true,
					rangelength: [2,200]
				},
				telefono: {
					required: true,
					digits: true,
					rangelength: [7,12]
				},
				direccion: {
					required: true,
					rangelength: [2,200]
				},
				referencia: {
					required: true,
					rangelength: [2,200]
				},
				mensaje: {
					required: true,
					rangelength: [2,300]
				},
				monto: {
					required: true,
					rangelength: [1,10]
				}
	
			},//End rules 
			messages: {
				nombre:{
					required: 'Ingrese un nombre.',
					rangelength: '40 carácteres como máximo.',
					nombre_valido:'EL nombre es inválido.'
				},
				apellido:{
					required: 'Ingrese un apellido.',
					rangelength: '40 carácteres como máximo.',
					nombre_valido:'EL apellido es inválido.'
				},
				email: {
					required: 'Debes ingresar un email.',
					email: 'Ingresa un email válido.',
					rangelength: '200 carácteres como máximo.',
					nombre_valido:'Ingresa un email válido.'
				},
				telefono:{
					required: 'El teléfono es requerido.',
					digits: 'Solo se permiten números.',
					rangelength: 'De 7 a 9 digitos máximo.',
					nombre_valido:'Ingresa un número válido'
				},
				direccion:{
					required: 'Debes escribir tu dirección.',
					rangelength: '200 carácteres como máximo.'
				},
				referencia:{
					required: 'Debes escribir tu dirección.',
					rangelength: '200 carácteres como máximo.'
				},
				mensaje:{
					required: 'Debes escribir tu dirección.',
					rangelength: '300 carácteres como máximo.'
				},
				monto:{
					required: 'Debes ingresar una cantidad.',
					rangelength: '3 carácteres máximo.'
				}
			}
		});	// End Validate


	var h="";
		h+='<div class="msj_gracias">';
			h+='<h3 class="web_marron">¡Muchas Gracias por tu compra!</h3>';
			h+='<p>Le haremos llegar el pedido lo más pronto posible</p>'
			h+='<a class="btns btn_inicio" href="/"></a>'
		h+="</div>";


	$(".btn_hacer_pedido").click(function(){
			if($(".form_pedido").valid() == true){
				console.log("msj enviado")
				$.post("/check.jsonr", $(".form_pedido").serialize(), function(data){
					console.log(data)

					if(data.ok)
					{

						$('.formulario_contenedor').html(h)

 						graciasCufon()

					}
					else
					{

					}

				});// end $.post 

			}else{
				return false;				
			} // end $("#formulario-registro").valid 	


	});	//end #btn-continuar.click


	$('.radios_card').on('click', function(){
		if($('#pago_efectivo').is(':checked'))
		{
			$('.cont_pago_efectivo').show()
			$('.cont_pago_tarjeta').hide()
		}
		else if($('#pago_tarjeta').is(':checked'))
		{
			$('.cont_pago_efectivo').hide()
			$('.cont_pago_tarjeta').show()
		}
	})




});// end jQuery



