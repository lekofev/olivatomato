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


	Cufon.replace('.formulario_contenedor h1, .pedido_detalles h2, .pedido_datos .precio, .telefono .tlf', { fontFamily: 'Ponsi Rounded Slab' });
	Cufon.replace('.titulo p', { fontFamily: 'Code Pro Light Demo' });



/* ---------------Enviar form-------------*/


	var h="";
		h+='<div class="msj_gracias">';
			h+='<h3 class="web_marron">¡Muchas Gracias por tu compra!</h3>';
			h+='<p>Le haremos llegar el pedido lo más pronto posible</p>'
			h+='<a class="btns btn_inicio" href="/"></a>'
		h+="</div>";


	$(".btn_hacer_pedido").click(function(){
			// if($(".form_pedido").valid() == true){
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

			// }else{
			// 	return false;				
			// } // end $("#formulario-registro").valid 	


	});	//end #btn-continuar.click






});// end jQuery



