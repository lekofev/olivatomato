/**
*
* @fileoverview Libreria con funciones de utilidad
* @author rrodriguez
* @date 25/10/2013
* @version 1.0
*/

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




	Cufon.replace('.titulo H2, .titulo_sabias_que,  .ensalada_titulo, .ensalada_desc, .telefono', { fontFamily: 'Ponsi Rounded Slab' });
	Cufon.replace('.titulo p', { fontFamily: 'Code Pro Light Demo' });



    $('.jcarousel').jcarousel({
        // Configuration goes here
    });

        /*
         Prev control initialization
         */
        $('.flecha_left')
            // .on('jcarouselcontrol:active', function() {
            //     $(this).removeClass('inactive');
            // })
            // .on('jcarouselcontrol:inactive', function() {
            //     $(this).addClass('inactive');
            // })
            .jcarouselControl({
                // Options go here
                target: '-=1'
            });

        /*
         Next control initialization
         */
        $('.flecha_right')
            // .on('jcarouselcontrol:active', function() {
            //     $(this).removeClass('inactive');
            // })
            // .on('jcarouselcontrol:inactive', function() {
            //     $(this).addClass('inactive');
            // })
            .jcarouselControl({
                // Options go here
                target: '+=1'
            });


	//funcion que det4ecta el alto del navegador y retorna el valor
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
			case 'beneficio':
				bloque=1;
			break
			case 'cello':
				bloque=2;
			break
			case 'familia':
				bloque=3;
			break
			case 'videos':
				bloque=4;
			break
			case 'familia-MG402MADXBB':
				bloque=3;
				slideFamilia=0;
			break
			case 'familia-AGE1103TST':
				bloque=3;
				slideFamilia=1;
			break
			case 'familia-AGE1103TW':
				bloque=3;
				slideFamilia=1;

				$('.slide_item_1 .btns_colores_contenedor .btns_color').removeClass('activo')
				$('.slide_item_1 .btns_colores_contenedor .btns_color.btn_blanco').addClass('activo')


				$('.slide_item_1 .color_contenedor_slide').removeClass('activo')
				$('.slide_item_1 .color_contenedor_slide.color_blanco').addClass('activo')

			break
			case 'familia-MS402MADXBB':
				bloque=3;
				slideFamilia=2;
			break
			case 'familia-AME1113TST':
				bloque=3;
				slideFamilia=3;
			break
			case 'familia-AME1113TW':
				bloque=3;
				slideFamilia=3;

				$('.slide_item_3 .btns_colores_contenedor .btns_color').removeClass('activo')
				$('.slide_item_3 .btns_colores_contenedor .btns_color.btn_blanco').addClass('activo')


				$('.slide_item_3 .color_contenedor_slide').removeClass('activo')
				$('.slide_item_3 .color_contenedor_slide.color_blanco').addClass('activo')
			break
			case 'familia-AME83M':
				bloque=3;
				slideFamilia=4;
			break
			case 'familia-AMW831K':
				bloque=3;
				slideFamilia=5;
			break
			default:			
				bloque=0;
				slideFamilia=0;

			break
		}
		return {
				bloque:bloque,
				slideFamilia:slideFamilia
			}
		
	}

	//funcion que escribe la url, debo pasarle un parametro
	function pushHistory(a)
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
					location.hash='beneficio';
				break;
				case 2:
					location.hash='cello';
				break;
				case 3:
					location.hash='familia';
				break;
				case 4:
					location.hash='videos';
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
					history.pushState(null, null, urlLimpia+'#beneficio');
				break;
				case 2:
					history.pushState(null, null, urlLimpia+'#cello');
				break;
				case 3:
					history.pushState(null, null, urlLimpia+'#familia');
				break;
				case 4:
					history.pushState(null, null, urlLimpia+'#videos');
				break;
			}

		}
	}// end pushHistory



	//me escribe el history de la seccion familia
	function pushHistoryFamilia(a)
	{
		if(msie)
		{
			switch(a)
			{
				case 0:
					location.hash='familia-MG402MADXBB';
				break;
				case 1:
					// location.hash='familia-AGE1103TST';

					if($('.slide_item_1 .btns_colores_contenedor .btn_gris').hasClass('activo'))
					{
						location.hash='familia-AGE1103TST';
					}
					else if($('.slide_item_1 .btns_colores_contenedor .btn_blanco').hasClass('activo'))
					{
						location.hash='familia-AGE1103TW';
					}

				break;
				case 2:
					location.hash='familia-MS402MADXBB';
				break;
				case 3:
					// location.hash='familia-AME1113TST';
					if($('.slide_item_3 .btns_colores_contenedor .btn_gris').hasClass('activo'))
					{
						location.hash='familia-AME1113TST';
					}
					else if($('.slide_item_3 .btns_colores_contenedor .btn_blanco').hasClass('activo'))
					{
						location.hash='familia-AME1113TW';
					}
				break;
				case 4:
					location.hash='familia-AME83M';
				break;
				case 5:
					location.hash='familia-AMW831K';
				break;

			}	
		}
		else
		{
			switch(a)
			{
				case 0:
					history.pushState(null, null, urlLimpia+'#familia-MG402MADXBB');
				break;
				case 1:
						// history.pushState(null, null, urlLimpia+'#familia-AGE1103TST');
					if($('.slide_item_1 .btns_colores_contenedor .btn_gris').hasClass('activo'))
					{
						history.pushState(null, null, urlLimpia+'#familia-AGE1103TST');
					}
					else if($('.slide_item_1 .btns_colores_contenedor .btn_blanco').hasClass('activo'))
					{
						history.pushState(null, null, urlLimpia+'#familia-AGE1103TW');	
					}

				break;
				case 2:
					history.pushState(null, null, urlLimpia+'#familia-MS402MADXBB');
				break;
				case 3:
						// history.pushState(null, null, urlLimpia+'#familia-AME1113TST');
					if($('.slide_item_3 .btns_colores_contenedor .btn_gris').hasClass('activo'))
					{
						history.pushState(null, null, urlLimpia+'#familia-AME1113TST');
					}
					else if($('.slide_item_3 .btns_colores_contenedor .btn_blanco').hasClass('activo'))
					{
						history.pushState(null, null, urlLimpia+'#familia-AME1113TW');					
					}
				break;
				case 4:
					history.pushState(null, null, urlLimpia+'#familia-AME83M');
				break;
				case 5:
					history.pushState(null, null, urlLimpia+'#familia-AMW831K');
				break;
			}
		}
	}



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

	//Arreglo solo para IE
	if(lt_ie9)
	{
		setALtoIe()	
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


	//alto inicial de cada bloque
	var altoInicioSite=getAltoVentana();
	$('.bloques, .bloques .bg').css('height',altoInicioSite+'px')

	var anchoBg=parseInt($('.bloques .bg').css('width'));
	console.log(altoInicioSite,anchoBg,  $('.bloques .bg').width())

	$('.bloques .bg').css({
		marginLeft:'-'+anchoBg/2+'px'
	})

	TweenMax.to($('.bloques .bg'), 1, {autoAlpha:1, delay:0.5})	

	//Con esto hago que la pagina haga un scroll automatico en caso de te tenga un "#", por ejemplo #familia
	if(urlHash!="")
	{
		$.scrollTo(getAltoVentana()*pullHistory(urlHash).bloque, 800,
				{
						onAfter:function(){
							bloqueVisible=pullHistory(urlHash).bloque;
							// console.log(bloqueVisible)
							primeraVez=false;
							if(bloqueVisible==1)
							{
								$('.btn_clases_gratis').show()
							}
							else
							{
								$('.btn_clases_gratis').hide()
							}

							lanzarPageView(bloqueVisible)
						}

				}
			)
		$('.menu_principal a').removeClass('activo');
		$('.menu_principal .menu_item_'+pullHistory(urlHash).bloque+' a').addClass('activo')
	}
	else
	{
		lanzarPageView(0)
	}


	//Con esto acomodo el alto de los bloques en caso de resize
	$(window).resize(function(){
		$('.bloques').css('height',getAltoVentana()+'px')		
	})

	//esta variable la uso mas abajo, es false para detectar que se esta haciendo scroll con la barrita lateral y asegurar que nunca se hizo click en los botones del menu
	var boton_menu_clicked=false;

	$('.menu_items a').each(function(){
		$(this).on('click', function(){
			//qui la varibale la vuelvo true, por que se clickeo en el menu.
			boton_menu_clicked=true;
			$('.menu_items a').removeClass('activo')
			$(this).addClass('activo')
			//aqui obtengo el valor que est en el html y lo guardo en "id" para posteriores usos
			var id=parseInt($(this).attr('data-id'))
			
			//Obtengo el valor del alto del navegador y lo multiplico con "id", de este modo acomodo todo el site de acuerdo al alto del navegador
			//IMPORTANTE, el contador de id inicia en 0
			var _x = getAltoVentana()*id;			
			
			$.scrollTo( _x, 800,
				{
					onAfter:function(){
						boton_menu_clicked=false;

						//con esto muestro o oculto el boton de "btn_clases_gratis" ya que solo debe verse en el bloque "beneficios"
						if(id==1)
						{
							$('.btn_clases_gratis').show()
						}
						else
						{
							$('.btn_clases_gratis').hide()
						}
					}
				}
			)
			// aqui uso el "id" para agregar la url y google tags
			pushHistory(id)
			lanzarPageView(id)

			if(id!=4)
			{	
				$('.btn_cont_abajo').show()
				$('.btn_volver_arriba').hide()
			}
		})		
	})

	//Boton inferior que me permiete navegar
	$('.btn_cont_abajo').on('click', function(){
		$.scrollTo(getAltoVentana()*(bloqueVisible+1), 800,
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
			$.scrollTo(0, 800,
				{
					onAfter:function(){
						boton_menu_clicked=false;
					}
				}
			)
			pushHistory(0)
	})

	//modifico los colores de las microondas
	$('.btns_color').each(function(){
		$(this).on('click', function(){
			if(!$(this).hasClass('activo'))
			{
				var c= $(this).attr('data-color')
				var slide= parseInt( $(this).attr('data-slide'))
				$(this).siblings('.btns_color').removeClass('activo')
				$(this).addClass('activo')

				$(this).parent('.btns_colores_contenedor').siblings('.color_contenedor_slide').removeClass('activo')
				$(this).parent('.btns_colores_contenedor').siblings('.color_'+c).addClass('activo')

				if(!lt_ie9)
				{
					if(slide==1)
					{
						pushHistoryFamilia(1);
					}
					if(slide==3)
					{
						pushHistoryFamilia(3);
					}					
				}
				
			}
			
		})
	})


	var _inicio=true;
	var _beneficio=true;
	var _cello=true;
	var _familia=true;
	var _video=true;

	//aqui uso unas llaves que me permiten cambiar la URL del navegador mientras hago un scroll con la barrita lateral
	//con esto evito que se haga un evento cada vez que se hace un scroll y optimizo el site
	$( window ).scroll(function() {
		primeraVez=false;
		//aqui uso la varialbe "boton_menu_clicked" en modo false
		if(!boton_menu_clicked)
		{
			var st=$( window ).scrollTop()
			var alto=getAltoVentana();
			if(st<alto*0.5)
			{
				if(_inicio)
				{
					$('.menu_items a').removeClass('activo')
					$('.menu_items a.btn_inicio').addClass('activo')					
					pushHistory(0)
					_inicio=false;	
					_beneficio=true;
					_cello=true;
					_familia=true;
					_video=true;
					$('.btn_clases_gratis').hide()
					bloqueVisible=0;				}
			}
			else if(st>alto*0.5 && st<alto*1.5 )
			{
				if(_beneficio)
				{
					$('.menu_items a').removeClass('activo')
					$('.menu_items a.btn_beneficio').addClass('activo')				
					pushHistory(1)
					_inicio=true;	
					_beneficio=false;
					_cello=true;
					_familia=true;
					_video=true;	

					$('.btn_clases_gratis').show()
					bloqueVisible=1;
				}
			}
			else if(st>alto*1.5 && st<alto*2.5 )
			{
				if(_cello)
				{
					$('.menu_items a').removeClass('activo')
					$('.menu_items a.btn_cello').addClass('activo')
					pushHistory(2)
					_inicio=true;	
					_beneficio=true;
					_cello=false;
					_familia=true;
					_video=true;	
					$('.btn_clases_gratis').hide()
					bloqueVisible=2;
				}
			}
			else if(st>alto*2.5 && st<alto*3.5 )
			{
				if(_familia)
				{
					$('.menu_items a').removeClass('activo')
					$('.menu_items a.btn_familia').addClass('activo')
					
					$('.btn_cont_abajo').show()
					$('.btn_volver_arriba').hide()
					pushHistory(3)
					_inicio=true;	
					_beneficio=true;
					_cello=true;
					_familia=false;
					_video=true;	
					$('.btn_clases_gratis').hide()
					bloqueVisible=3;
				}
			}
			else if(st>alto*3.5)
			{
				if(_video)
				{
					$('.menu_items a').removeClass('activo')
					$('.menu_items a.btn_video').addClass('activo')
					
					$('.btn_cont_abajo').hide()
					$('.btn_volver_arriba').show()
					pushHistory(4)
					_inicio=true;	
					_beneficio=true;
					_cello=true;
					_familia=true;
					_video=false;	
					$('.btn_clases_gratis').hide()
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


	// Los tooltips
	$('.btn_tooltip').each(function(){
		$(this).on('click', function(){
			var t=$(this).siblings('.tooltip');
			t.siblings('.btn_tooltip').addClass('activo')
			var s=0.5;
			if(lt_ie9)
			{
				s=0;
			}

			TweenMax.to(t,s,
				{
					autoAlpha:1
				}
			)
		})

		
	})


	$('.btn_cerrar_tooltip').each(function(){
		$(this).on('click', function(){

			var t=$(this).parent('.tooltip')
			t.siblings('.btn_tooltip').removeClass('activo')
			var s=0.5;
			if(lt_ie9)
			{
				s=0;
			}

			TweenMax.to(t,s,
				{
					autoAlpha:0
				}
			)			
		})
	})


	$('.btn_clases_gratis').on('click', function(){
		$('.clases_popup').show()
		var s=0.5;
		if(lt_ie9)
		{
			s=0;
		}
		TweenMax.to($('.modal'),s,
						{
							autoAlpha:1
						}
					)
	})
	$('.btn_cerrar_clases').on('click', function(){
		$('.clases_popup').hide()
		var s=0.5;
		if(lt_ie9)
		{
			s=0;
		}
		TweenMax.to($('.modal'),s,
						{
							autoAlpha:0
						}
					)
	})

	//Video
	$('.btn_cerrar_video').on('click', function(){
		$('.video_popup').hide();
		$('.video_contendor').removeClass('add_sombra');
		var s=0.5;
		if(lt_ie9)
		{
			s=0;
		}
		TweenMax.to($('.modal'),s,
						{
							autoAlpha:0,
							onComplete:function(){
								$('.video_embed').html('<div id="video_id"></div>')
							}
						}
					)
	})

	//each para cada boton de video
	$('.video_btn_play').each(function(){	
		$(this).on('click', function(){
			//LA informacion necesario para levantar el video se encuentra dentro el mismo html, aqui lo obtengo y guardo para posterior uso
			var video_id=$(this).attr('data-videoid');
			var video_titulo=$(this).attr('data-titulo');
			var video_info=$(this).attr('data-info');
			var video_time=$(this).attr('data-time');

			$('.video_popup').show()
			$('.video_popup .titulo_video').html(video_titulo)
			$('.video_popup .descripcion_video').html(video_info)
			var s=0.5;
			if(lt_ie9)
			{
				s=0;
			}
			TweenMax.to($('.modal'),s,
							{
								autoAlpha:1
							}
			)
			//esto ejecuta el video que se carga con swfObjetc
			cargarVideo(video_id)
		})
	})

	function cargarVideo(videoid)
	{	
		var videoID = videoid
		var params = { allowScriptAccess: "always", wmode: "transparent" };
		var atts = { id: "ytPlayer" };
		swfobject.embedSWF("//www.youtube.com/v/" + videoID + "?version=3&enablejsapi=1&playerapiid=player1&wmode=transparent", "video_id", "733", "433", "9", null, null, params, atts);
	}


});// end jQuery

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




