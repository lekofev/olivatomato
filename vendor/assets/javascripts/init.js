/**
*
* @fileoverview Libreria con funciones de utilidad
* @author rrodriguez
* @date 25/10/2013
* @version 1.0
*/

//funcion que det4ecta el alto del navegador y retorna el valor


function cufon_popup(){
	Cufon.replace('.popup .ensalada_titulo, .popup .precio_cont, .popup .table_titulo', { fontFamily: 'Ponsi Rounded Slab' });		
}

function cufon_popup_galeria(){
	Cufon.replace('.galeria_popup_item .cont_titulo h3', { fontFamily: 'Ponsi Rounded Slab' });		
}

function getAltoVentana(){
	var alto=$(window).height();
		if(alto<630)
		{
			return 630
		}
		else
		{
			return alto
		}
}


//Funcion obtiene la url, de acuerdo a la url devuelve un balor en bloque
function pullHistory(url)
{
	var bloque;
	var slideFamilia;
	switch(url)
	{
		case '':
			bloque=0;
		break
		case 'inicio':
			bloque=0;
		break
		case 'ensaladas':
			bloque=1;
		break
		case 'nutricion':
			bloque=2;
		break
		case 'historia':
			bloque=3;
		break
		case 'galeria':
			bloque=4;
		break
	}
	return {
			bloque:bloque
		}
	
}

//funcion que escribe la url, debo pasarle un parametro
function pushHistory(a, msie, urlLimpia)
{
	//para IE
	if(msie)
	{
		switch(a)
		{
			case 0:
				location.hash='inicio';
			break;
			case 1:
				location.hash='ensaladas';
			break;
			case 2:
				location.hash='nutricion';
			break;
			case 3:
				location.hash='historia';
			break;
			case 4:
				location.hash='galeria';
			break;
		}			
	}
	else
	{
		//para otros navegadores
		switch(a)
		{
			case 0:
				history.pushState(null, null, urlLimpia+'#inicio');
			break;
			case 1:
				history.pushState(null, null, urlLimpia+'#ensaladas');
			break;
			case 2:
				history.pushState(null, null, urlLimpia+'#nutricion');
			break;
			case 3:
				history.pushState(null, null, urlLimpia+'#historia');
			break;
			case 4:
				history.pushState(null, null, urlLimpia+'#galeria');
			break;
		}

	}
}// end pushHistory



//Arreglo solo para IE
function setALtoIe()
{
	if(getAltoVentana()<760)
	{
		$('.contenido').css({
	        width: '904px',
	        height: '630px',
	        position: 'absolute',        
	        top: '50px',
	        left: '50%',
	        marginLeft:' -452px',
	        marginTop: '0px',
	        zIndex: 20
		})
	}

}


//swfObject, el video se pone play cuando carga
function onYouTubePlayerReady(playerId) {
	ytplayer = document.getElementById("ytPlayer");
	playVideo();
	addSombraVideo()
}
function addSombraVideo()
{
	$('.video_contendor').addClass('add_sombra')
}
function playVideo() {
	if (ytplayer)
	{
	ytplayer.playVideo();
	}
}

function pauseVideo() {
	if (ytplayer)
	{
	ytplayer.pauseVideo();
	}
}  

//funcion que lanza el page view para google, no afecta en nada a la navegacion
function lanzarPageView(a)
{
	switch(a)
	{
		case 0:
			_gaq.push(['_trackPageview', '/samsung-landingmicroondas-home']);
		break;
		case 1:
			_gaq.push(['_trackPageview', '/samsung-landingmicroondas-beneficios']);
		break;
		case 2:
			_gaq.push(['_trackPageview', '/samsung-landingmicroondas-cello']);
		break;
		case 3:
			_gaq.push(['_trackPageview', '/samsung-landingmicroondas-familia/modelo1']);
		break;
		case 4:
			_gaq.push(['_trackPageview', '/samsung-landingmicroondas-videos1']);
		break;
	}
}


function cargarVideo(videoid)
{	
	var videoID = videoid
	var params = { allowScriptAccess: "always", wmode: "transparent" };
	var atts = { id: "ytPlayer" };
	swfobject.embedSWF("//www.youtube.com/v/" + videoID + "?version=3&enablejsapi=1&playerapiid=player1&wmode=transparent", "video_id", "733", "433", "9", null, null, params, atts);
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

	//declaro la variable bloqueVisible= 0, por que el primer bloque q se ve cuando carga el site por primera vez
	var bloqueVisible=0;


	setTimeout(function(){
		$('.landing .bloques').css('visibility','visible')

	},1000)
		


	Cufon.replace('.titulo H2, .titulo_sabias_que,  .ensalada_titulo, .ensalada_desc, .telefono, .precio_cont, .table_titulo, .textos_adicionales h3, .slide_contenedor_galeria_foto p.foto_titulo, .slide_contenedor_galeria_video p.foto_titulo', { fontFamily: 'Ponsi Rounded Slab' });
	Cufon.replace('.titulo p', { fontFamily: 'Code Pro Light Demo' });

	Cufon.replace('.formulario_contenedor h1', { fontFamily: 'Ponsi Rounded Slab' });
	Cufon.replace('.titulo p', { fontFamily: 'Code Pro Light Demo' });


    $('.jcarousel').jcarousel({
        // Configuration goes here
    });
    $('.flecha_left_carrousel').jcarouselControl({
            target: '-=1'
    });
    $('.flecha_right_carrousel').jcarouselControl({
            target: '+=1'
    });

	$('.jcarousel').on('jcarousel:firstin', 'li', function(event, carousel) {

	    //console.log("first in")
	});


	$('.jcarousel').on('jcarousel:firstout', 'li', function(event, carousel) {

	    //console.log("first out")
	});  








	//Arreglo solo para IE
	if(lt_ie9)
	{
		setALtoIe()	
	}
	


	//alto inicial de cada bloque
	var altoInicioSite=getAltoVentana();

	var nuevoAnchoPorcentaje = parseInt((100*altoInicioSite)/700);
	var nuevoAnchoBg = parseInt((2000*nuevoAnchoPorcentaje)/100);

	$('.bloques, .bloques .bg').css('height',altoInicioSite+'px')
		
	var anchoBg=parseInt($('.bloques .bg').css('width'));

	$('.bloques .bg').css({
		marginLeft:'-'+nuevoAnchoBg/2+'px'
	})

	TweenMax.to($('.bloques .bg'), 1, {autoAlpha:1, delay:0.5})




	//Con esto hago que la pagina haga un scroll automatico en caso de te tenga un "#", por ejemplo #familia
	
	if(urlHash!="")
	{
		var scrollInicial = getAltoVentana()*pullHistory(urlHash).bloque;
		// //console.log(scrollInicial, pullHistory(urlHash).bloque)
		
		// $.scrollTo({top:scrollInicial, left:0}, 800,
		// 		{
		// 				onAfter:function(){
		// 					bloqueVisible=pullHistory(urlHash).bloque;
		// 					// //console.log(bloqueVisible)
		// 					primeraVez=false;
		// 				}

		// 		}
		// )

		$('.menu_principal a').removeClass('activo');
		$('.menu_principal .menu_item_'+pullHistory(urlHash).bloque+' a').addClass('activo')
	}
	else
	{
		// lanzarPageView(0)
	}


	//Con esto acomodo el alto de los bloques en caso de resize
	$(window).resize(function(){
		$('.bloques').css('height',getAltoVentana()+'px')		
	})

	//esta variable la uso mas abajo, es false para detectar que se esta haciendo scroll con la barrita lateral y asegurar que nunca se hizo click en los botones del menu
	var boton_menu_clicked=false;

	$('.menu_items a').each(function(){
		$(this).on('click', function(e){
			e.preventDefault();
			//qui la varibale la vuelvo true, por que se clickeo en el menu.
			boton_menu_clicked=true;
			$('.menu_items a').removeClass('activo')
			$(this).addClass('activo')
			//aqui obtengo el valor que est en el html y lo guardo en "id" para posteriores usos
			var id=parseInt($(this).attr('data-id'))
			
			//Obtengo el valor del alto del navegador y lo multiplico con "id", de este modo acomodo todo el site de acuerdo al alto del navegador
			//IMPORTANTE, el contador de id inicia en 0
			var _x = getAltoVentana()*id;			
			
			$.scrollTo( {top:_x, left:0}, 800,
				{
					onAfter:function(){
						boton_menu_clicked=false;
					}
				}
			)
			// aqui uso el "id" para agregar la url y google tags
			pushHistory(id, msie, urlLimpia)
			// lanzarPageView(id)

			if(id!=4)
			{	
				$('.btn_cont_abajo').show()
				$('.btn_volver_arriba').hide()
			}
		})		
	})

	//Boton inferior que me permiete navegar
	$('.btn_cont_abajo').on('click', function(){
		var _x = getAltoVentana()*(bloqueVisible+1)
		$.scrollTo({top:_x, left:0}, 800,
				{
						onAfter:function(){
						}

				}
		)
	})

	//Boton inferior que me permiete volver arriba, solo esa visible en el boton del site
	$('.btn_volver_arriba').on('click', function(){

			boton_menu_clicked=true;
			$(this).hide();
			$('.btn_cont_abajo').show()
			$.scrollTo({top:0, left:0}, 800,
				{
					onAfter:function(){
						boton_menu_clicked=false;
					}
				}
			)
			pushHistory(0, msie, urlLimpia)
	})



	var _inicio=true;
	var _ensaladas=true;
	var _nutricion=true;
	var _historia=true;
	var _galeria=true;

	//aqui uso unas llaves que me permiten cambiar la URL del navegador mientras hago un scroll con la barrita lateral
	//con esto evito que se haga un evento cada vez que se hace un scroll y optimizo el site
	
	var optScroll=0;

	$( window ).scroll(function() {
		optScroll++;
		primeraVez=false;
		//aqui uso la varialbe "boton_menu_clicked" en modo false
		if(!boton_menu_clicked && optScroll>=30)
		{
			optScroll= 0;
			var st=$( window ).scrollTop()
			var alto=getAltoVentana();

			if(st<alto*0.5)
			{
				if(_inicio)
				{
					$('.menu_items a').removeClass('activo')
					$('.menu_items a.btn_inicio').addClass('activo')					
					pushHistory(0, msie, urlLimpia)
					_inicio=false;	
					_ensaladas=true;
					_nutricion=true;
					_historia=true;
					_galeria=true;
					bloqueVisible=0;				
				}
			}
			else if(st>alto*0.5 && st<alto*1.5 )
			{
				if(_ensaladas)
				{
					$('.menu_items a').removeClass('activo')
					$('.menu_items a.btn_ensaladas').addClass('activo')				
					pushHistory(1, msie, urlLimpia)
					_inicio=true;	
					_ensaladas=false;
					_nutricion=true;
					_historia=true;
					_galeria=true;	

					bloqueVisible=1;
				}
			}
			else if(st>alto*1.5 && st<alto*2.5 )
			{
				if(_nutricion)
				{
					$('.menu_items a').removeClass('activo')
					$('.menu_items a.btn_nutricion').addClass('activo')
					pushHistory(2, msie, urlLimpia)
					_inicio=true;	
					_ensaladas=true;
					_nutricion=false;
					_historia=true;
					_galeria=true;	
					bloqueVisible=2;
				}
			}
			else if(st>alto*2.5 && st<alto*3.5 )
			{
				if(_historia)
				{
					$('.menu_items a').removeClass('activo')
					$('.menu_items a.btn_historia').addClass('activo')
					
					$('.btn_cont_abajo').show()
					$('.btn_volver_arriba').hide()
					pushHistory(3, msie, urlLimpia)
					_inicio=true;	
					_ensaladas=true;
					_nutricion= true;
					_historia=false;
					_galeria=true;		

					bloqueVisible=3;
				}
			}
			else if(st>alto*3.5)
			{
				if(_galeria)
				{
					$('.menu_items a').removeClass('activo')
					$('.menu_items a.btn_galeria').addClass('activo')
					
					$('.btn_cont_abajo').hide()
					$('.btn_volver_arriba').show()
					pushHistory(4, msie, urlLimpia)
					_inicio=true;	
					_ensaladas=true;
					_nutricion= true;
					_historia=true;
					_galeria=false;	
					bloqueVisible=4;
				}	
			}


		}
	});

	//el efecto fade del cycle, para IE es "none"
	var animacionSlide='scrollHorz';
	if(lt_ie9)
	{
		animacionSlide='none';
	}

	//esta variable la uso para el google tag, tengo que verificar que el cycle se activo almenos una vez, esta variable hace esto.
	var vuelta_completa_beneficio=false;

	//aqui inician los cycles de todo el site

	$('.slide_inicio').cycle({
			fx: animacionSlide,
			timeout:0,
			speed:1000,
			cleartype:false,
			pager:'.slide_contenedor_inicio_pager',
			startingSlide:0,
			prev:".slide_contenedor_inicio .flecha_left",
			next:".slide_contenedor_inicio .flecha_right",
			before:function(curr, next, opts){
			},	
			after:function(curr, next, opts){
			},			
			end:function(){
				}
	})

	$(".slide_contenedor_inicio_pager").css("margin-left","-"+parseInt($(".slide_contenedor_inicio_pager").width())/2+"px") 

	$('.slide_historia').cycle({
			fx: animacionSlide,
			timeout:0,
			speed:1000,
			cleartype:false,
			startingSlide:0,
			prev:".slide_contenedor_historia .flecha_left",
			next:".slide_contenedor_historia .flecha_right",
			before:function(curr, next, opts){
			},	
			after:function(curr, next, opts){
			},			
			end:function(){
				}
	})



	$('.abrir_ensalada_detalle').colorbox({
		// iframe:true,
		width:775,
		height:475,
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
			cufon_popup();
			setTimeout(function(){$('#cboxClose').fadeIn();},100)
			
		},
		onClosed:function(){
			$('#cboxClose').hide()
		}				
	}); 

	$('a.galeria_foto_item').each(function(){
		$(this).on('mouseover', function(){
			$(this).siblings('.foto_titulo').stop().fadeIn()
		})
		$(this).on('mouseout', function(){
			$(this).siblings('.foto_titulo').stop().fadeOut()
		})
	})



	$('.galeria_popup').colorbox({
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








});// end jQuery




