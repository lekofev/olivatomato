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



	$(".form_formulario_pedido").validate({
			rules:{
				nombre: {
					required: true,
					rangelength: [1,40],
					nombre_valido:true			
				},
				apellido: {
					required: true,
					rangelength: [1,40],
					nombre_valido:true
				},
				email: {
					required: true,
					email: true,
					rangelength: [1,200]
				},
				telefono: {
					required: true,
					digits: true,
					rangelength: [7,12]
				},
				direccion: {
					required: true,
					rangelength: [1,200]
				},
				referencia: {
					required: true,
					rangelength: [1,200]
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
					required: 'Debes escribir una referencia de tu ubicación.',
					rangelength: '200 carácteres como máximo.'
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
			if($(".form_formulario_pedido").valid() == true){	
				$('.form_formulario_pedido').append('<div class="contact_loading">Procesando Pedido...</div>')	
				$.post("/check.jsonr", $(".form_formulario_pedido").serialize(), function(data){

					if(data.ok)
					{

						$('.formulario_contenedor').html(h)

 						graciasCufon()

					}
					else
					{
						$('.formulario_contenedor').html('Lo sentimos, hubo un error al hacer el pedido')
					}

				});// end $.post 

			}else{
				return false;				
			} // end $("#formulario-registro").valid 	


	});	//end #btn-continuar.click







	$(".form_formulario_contacto").validate({
			rules:{
				nombre: {
					required: true,
					rangelength: [1,40],
					nombre_valido:true			
				},
				apellido: {
					required: true,
					rangelength: [1,40],
					nombre_valido:true
				},
				email: {
					required: true,
					email: true,
					rangelength: [1,200]
				},
				telefono: {
					required: true,
					digits: true,
					rangelength: [7,12]
				},
				mensaje: {
					required: true,
					rangelength: [1,500]
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
				mensaje:{
					required: 'Es necesario un mensaje',
					rangelength: 'De 1 a 500 caracteres'
				}
			}
		});	// End Validate




	$(".form_formulario_reclamo").validate({
			rules:{
				nombre: {
					required: true,
					rangelength: [1,40],
					nombre_valido:true			
				},
				apellido: {
					required: true,
					rangelength: [1,40],
					nombre_valido:true
				},
				email: {
					required: true,
					email: true,
					rangelength: [1,200]
				},
				telefono: {
					required: true,
					digits: true,
					rangelength: [7,12]
				},
				mensaje: {
					required: true,
					rangelength: [1,500]
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
				mensaje:{
					required: 'Es necesario un mensaje',
					rangelength: 'De 1 a 500 caracteres'
				}
			}
		});	// End Validate















	$('.radios_card').on('click', function(){
		if($('#pago_efectivo').is(':checked'))
		{
			$('.monto').attr('value','')
			$('.cont_pago_efectivo').show()
			$('.cont_pago_tarjeta').hide()
		}
		else if($('#pago_tarjeta').is(':checked'))
		{
			$('.monto').attr('value','0')
			$('.cont_pago_efectivo').hide()
			$('.cont_pago_tarjeta').show()
		}
	})



	// $(".enviar_enfermedades").click(function(){
	// 			//console.log("enviar enfermedades")
	// 			$.post("/check.jsonr", $(".form_pedido").serialize(), function(data){
	// 				//console.log(data)

	// 				if(data.ok)
	// 				{

	// 					$('.formulario_contenedor').html(h)

 // 						graciasCufon()

	// 				}
	// 				else
	// 				{

	// 				}

	// 			});// end $.post 


	// });	//end #btn-continuar.click



	var kcalCarbohidratos=0;
	var kcalProteinas=0;
	var kcalGrasas=0;

	var newKcalCarbohidrato;
	var newKcalProteina;
	var newKcalGrasa;
	var newPeso;
	var newPrecio;


	var pesos=0;
	var precios=10;
	var calorias= 0;

	var objCantidades={};

	$('.input_ingrediente').on('click', function(){
		// //console.log("input")
		var cant = parseInt($(this).siblings('.txt_cantidad').attr('data-cantidad'));
		// //console.log(cant)

		newKcalCarbohidrato= (parseInt($(this).attr('data-carbohidrato'))*4)*cant;
		newKcalProteina= (parseInt($(this).attr('data-proteina'))*4)*cant;
		newKcalGrasa= (parseInt($(this).attr('data-grasa'))*9)*cant;

		newPeso= parseInt($(this).attr('data-peso'))*cant;
		newPrecio= parseFloat($(this).attr('data-precio'))*cant;

		// //console.log($(this).is(':checked'))	

		if ($(this).is(':checked'))
		{			
			agregarDatos($(this));
			$(this).siblings('.txt_cantidad').removeClass('txt_disabled')
			$(this).siblings('.txt_cantidad').html('1')
			// $(this).siblings('.txt_cantidad').attr('data-cantidad','1')
			$(this).siblings('.btn_control_cantidad').removeAttr('disabled')
			$(this).siblings('.btn_control_cantidad').removeClass('btn_disabled')

			// var cantidad = parseInt($(this).siblings('input.input_cantidad').val());
			// var nombre_ingrediente = $(this).attr('name')+'_'+$(this).attr('data-id');
			// objCantidades[nombre_ingrediente] = {anterior:cantidad, nuevo:cantidad};
			// // objCantidades[nombre_ingrediente].nuevo = cantidad;
			// // objCantidades[nombre_ingrediente];
			// //console.log(nombre_ingrediente, cantidad, objCantidades)

			
		}
		else
		{
			quitarDatos($(this));
			$(this).siblings('.txt_cantidad').addClass('txt_disabled')
			$(this).siblings('.txt_cantidad').html('0')
			// $(this).siblings('.txt_cantidad').attr('data-cantidad','1')
			$(this).siblings('.btn_control_cantidad').attr('disabled','disabled')
			$(this).siblings('.btn_control_cantidad').addClass('btn_disabled')

			// // var cantidad = obj.siblings('input.input_cantidad').val();
			// var nombre_ingrediente = $(this).attr('name')+'_'+$(this).attr('data-id');
			// delete objCantidades[nombre_ingrediente]			
			// //console.log(nombre_ingrediente,objCantidades)


		}

		var _precios = precios.toFixed(2);

		// actualizarDatos(kcalGrasas, kcalCarbohidratos, kcalProteinas, calorias, _precios);

		// //console.log(newPrecio, newCarbohidrato, newProteina, newGrasa, newPeso)
		// //console.log(precios, carbohidratos, proteinas, grasas, pesos, calorias)
	})

	$('.btn_control_cantidad_mas').on('click', function(){

		var c = parseInt($(this).siblings('.txt_cantidad').attr('data-cantidad'))
		c++;
		$(this).siblings('.txt_cantidad').html(c)
		$(this).siblings('.txt_cantidad').attr('data-cantidad',c)
		$(this).siblings('.input_hidden_cantidad').attr('value',c)
		

		// agregarDatos($(this).siblings('.input_ingrediente'));

		var alimento = $(this).siblings('.input_ingrediente');

		newKcalCarbohidrato= parseInt(alimento.attr('data-carbohidrato'))*4;
		newKcalProteina= parseInt(alimento.attr('data-proteina'))*4;
		newKcalGrasa= parseInt(alimento.attr('data-grasa'))*9;

		newPeso= parseInt(alimento.attr('data-peso'));
		newPrecio= parseFloat(alimento.attr('data-precio'));

		agregarDatos();


	})

	$('.btn_control_cantidad_menos').on('click', function(){

		var c = parseInt( $(this).siblings('.txt_cantidad').attr('data-cantidad'))
		if(c<=1)
		{
			$(this).siblings('.txt_cantidad').html('1')
			$(this).siblings('.txt_cantidad').attr('data-cantidad','1')
			$(this).siblings('.input_hidden_cantidad').attr('value',c)
			// $(this).siblings('.input_ingrediente').trigger('clic')
		}
		else{
			c--;
			$(this).siblings('.txt_cantidad').html(c)
			$(this).siblings('.txt_cantidad').attr('data-cantidad',c)
			$(this).siblings('.input_hidden_cantidad').attr('value',c)

			var alimento = $(this).siblings('.input_ingrediente');

			newKcalCarbohidrato= parseInt(alimento.attr('data-carbohidrato'))*4;
			newKcalProteina= parseInt(alimento.attr('data-proteina'))*4;
			newKcalGrasa= parseInt(alimento.attr('data-grasa'))*9;
			newPeso= parseInt(alimento.attr('data-peso'));
			newPrecio= parseFloat(alimento.attr('data-precio'));
			quitarDatos();
		}


	})

	



	$('.input_cantidad').on('change', function(){
		// //console.log('changee'+ $(this).val());

		var ingrediente = $(this).siblings('.input_ingrediente');

		newKcalCarbohidrato= parseInt(ingrediente.attr('data-carbohidrato'))*4;
		newKcalProteina= parseInt(ingrediente.attr('data-proteina'))*4;
		newKcalGrasa= parseInt(ingrediente.attr('data-grasa'))*9;

		newPeso= parseInt(ingrediente.attr('data-peso'));
		newPrecio= parseFloat(ingrediente.attr('data-precio'));

		var nombre_ingrediente = ingrediente.attr('name')+'_'+ingrediente.attr('data-id');

		objCantidades[nombre_ingrediente] = {anterior:1, nuevo:cantidad};


		// kcalCarbohidratos+=newKcalCarbohidrato;
		// kcalProteinas+=newKcalProteina;
		// kcalGrasas+=newKcalGrasa;

		// pesos+=newPeso;
		// precios+=newPrecio;

		// calorias += newKcalCarbohidrato+ newKcalProteina + newKcalGrasa;
		// var _precios = precios.toFixed(2);
		// actualizarDatos(kcalGrasas, kcalCarbohidratos, kcalProteinas, calorias, _precios);



	})


	var ingredientes;
	$('.boton_ensalada_continuar').on('click', function(){
		// //console.log('boton_ensalada_continuar')
		ingredientes="";
		$('.input_ingrediente').each(function(){
			var t = $(this);
			if(t.is(':checked'))
			{
				ingredientes+=t.attr('name')+'('+t.siblings('.txt_cantidad').attr('data-cantidad')+'),';
			}
			// //console.log('aaa')
		})

		$('#descripcion').attr('value',ingredientes);

		$('form.form_ensalada').submit();

	})





	$('label.lbl_enfermedad').on('mouseover', function(){
		var t = $(this);
		t.children('.tooltip_enfermedad').css({
			display:'block'
		})
	})

	$('label.lbl_enfermedad').on('mouseout', function(){
		var t = $(this);
		t.children('.tooltip_enfermedad').hide();
	})


	$('label.lbl_ingrediente').on('mouseover', function(){
		// //console.log('oveeer')
		var t = $(this);
		t.children('.tooltip_ingrediente').css({
			display:'block'
		})
	})

	$('label.lbl_ingrediente').on('mouseout', function(){
		// //console.log('out oveeer')
		var t = $(this);
		t.children('.tooltip_ingrediente').hide();
	})


	$('.input_ingrediente, .txt_peso').on('mouseover', function(){
		// //console.log('oveeer')
		var t = $(this).siblings('.lbl_ingrediente');
		t.children('.tooltip_ingrediente').css({
			display:'block'
		})
	})

	$('.input_ingrediente, .txt_peso').on('mouseout', function(){
		// //console.log('out oveeer')
		var t = $(this).siblings('.lbl_ingrediente');
		t.children('.tooltip_ingrediente').hide();
	})

	var tutorial = true;
	$('.input_ingrediente').on('click', function(){
		if(tutorial)
		{
			$('.selec_ingrediente').fadeOut(300)
			$('.selec_cantidad').show();
		}
	})

	$('.btn_control_cantidad').on('click', function(){
		if(tutorial)
		{
			$('.selec_cantidad').fadeOut(200)
			$('.info_chart').show();;
			setTimeout(function(){
				$('.tooltip_tutorial_chart').fadeOut(200);
				$('.info_precio').show()
				setTimeout(function(){
					$('.tooltip_tutorial_chart').fadeOut(200)
				},5000)
			},5000)
			tutorial = false;
		}
	})


	$('.btn_calcular_imc').on('click', function(){
		var p = parseFloat($('#imc_peso').attr('value'));
		var t = parseFloat($('#imc_talla').attr('value'));
		var imc = parseFloat(p/(t*t)).toFixed(2)
		// console.log(p,t,imc)
		$('.restultadoimc').removeClass('pesobajo pesonormal pesosobrepeso pesoobesidad')
		if (imc<18)
		{
			$('.restultadoimc').addClass('pesobajo')
			$('.restultadoimc').html('Su Índice de masa corporal es: '+imc+' Peso bajo')
		}
		else if (imc>=18 && imc<25)
		{
			$('.restultadoimc').addClass('pesonormal')
			$('.restultadoimc').html('Su Índice de masa corporal es: '+imc+' Normal')
		}
		else if (imc >= 25 && imc < 27)
		{
			$('.restultadoimc').addClass('pesosobrepeso')
			$('.restultadoimc').html('Su Índice de masa corporal es: '+imc+' Sobrepeso')
		}
		else if (imc >=27)
		{
			$('.restultadoimc').addClass('pesoobesidad')
			$('.restultadoimc').html('Su Índice de masa corporal es: '+imc+' ¡Obesidad!')
		};

		

	})


	if($('.msj_imc').attr('data-imc') == "NaN")
	{
		$('.msj_imc').hide()
		$('.calorias_recomendado').hide()
	}

	function agregarDatos(obj)
	{

		// obj.siblings('.input_cantidad').removeAttr('disabled')

		kcalCarbohidratos+=newKcalCarbohidrato;
		kcalProteinas+=newKcalProteina;
		kcalGrasas+=newKcalGrasa;

		pesos+=newPeso;
		precios+=newPrecio;
		var _precios = precios.toFixed(2);

		calorias += newKcalCarbohidrato+ newKcalProteina + newKcalGrasa;
		actualizarDatos(kcalGrasas, kcalCarbohidratos, kcalProteinas, calorias, _precios);

	}

	function quitarDatos(obj)
	{

		// obj.siblings('.input_cantidad').attr('disabled','disabled');
		// obj.siblings('.input_cantidad').attr('value','1');
		kcalCarbohidratos-=newKcalCarbohidrato;
		kcalProteinas-=newKcalProteina;
		kcalGrasas-=newKcalGrasa;

		pesos-=newPeso;
		precios-=newPrecio;
		var _precios = precios.toFixed(2);

		calorias -= newKcalCarbohidrato+ newKcalProteina + newKcalGrasa;
		actualizarDatos(kcalGrasas, kcalCarbohidratos, kcalProteinas, calorias, _precios);

	}


	function escala(valor)
	{
		return parseInt((150*valor)/1000);

	}


	function actualizarDatos(grasa, carbohidrato, proteina, caloria, precio)
	{
		// //console.log("actualizado")
		var _grasa;
		var _carbohidrato;
		var _proteina;
		if(grasa>=1000)
		{
			_grasa = 150;
		}
		else
		{
			_grasa =escala(grasa);
		}

		if(carbohidrato>=1000)
		{
			_carbohidrato = 150;
		}
		else
		{
			_carbohidrato =escala(carbohidrato);
		}		

		if(proteina>=1000)
		{
			_proteina = 150;
		}
		else
		{
			_proteina =escala(proteina);
		}

		TweenMax.to($('.barra_0'),1,{height:_grasa})
		$('.barra_0 .valor_numerico').html(grasa+'kcal.')
		TweenMax.to($('.barra_1'),1,{height:_carbohidrato})
		$('.barra_1 .valor_numerico').html(carbohidrato+'kcal.')
		TweenMax.to($('.barra_2'),1,{height:_proteina})
		$('.barra_2 .valor_numerico').html(proteina+'kcal.')

		$('.total_calorias').html('Total Calorias: '+calorias)


		// //console.log(precio)

		// if(precio >10)
		// {
		// 	$('.txt_monto').html('S/.'+precio)
		// 	$('#precio').attr('value',precio)
		// }
		// else if(precio <=10)
		// {
		// 	$('.txt_monto').html('S/. 10.00');
		// 	$('#precio').attr('value','10.00');
		// }
		//console.log(precio)


		// if (precio <=10)
		// {
		// 	$('.txt_monto').html('S/. 10.00');
		// 	$('#precio').attr('value','10.00');			
		// }
		// else if (true) {};

		// console.log(precio)
		if(precio <=10)
		{
			$('.txt_monto').html('S/. 10.00');
			$('#precio').attr('value','10.00');
		}
		else{
			$('.txt_monto').html('S/.'+precio)
			$('#precio').attr('value',precio)
		}		

	}




});// end jQuery



