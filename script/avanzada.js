var txtInputQ="Escriba el término"
var Gestor= new Object()
var navBarOfset=50

function QueryStringAux (params) {
  // This function is anonymous, is executed immediately and
  // the return value is assigned to QueryString!
  
  var query_string = {};
  var query = params
  var vars = query.split("&");
  for (var i=0;i<vars.length;i++) {
    var pair = vars[i].split("=");
        // If first entry with this name
    if (typeof query_string[pair[0]] === "undefined") {
      query_string[pair[0]] = decodeURIComponent(pair[1]);
        // If second entry with this name
    } else if (typeof query_string[pair[0]] === "string") {
      var arr = [ query_string[pair[0]],decodeURIComponent(pair[1]) ];
      query_string[pair[0]] = arr;
        // If third or later entry with this name
    } else {
      query_string[pair[0]].push(decodeURIComponent(pair[1]));
    }
  } 
  return query_string;
}

var QueryString =function(){
  var query_string=QueryStringAux(window.location.search.substring(1))
  return query_string;
}()

Gestor.termNumActivo=0;
Gestor.dataUser=new Array()
Gestor.colect=new Array(
	['arti','Artículos'],
	['tesis','Tesis'],
	['eventos','Trabajos a Eventos'],
	['libros','Libros y capítulos'],
	['proyecto','Proyectos de investigación'],
	['extension','Proyectos de extensión'],
	['planes','Planes de estudio'],
	['progra','Programas'],
	['norma','Normativa'],
	['convenio','Convenios']

)
Gestor.tipoCampos=new Array(
	['ZZ','todos los campos'],
	['TX','Texto completo'],
	['DC','Personas'],
	['DT','Título'],
	['DS','Palabras claves'],
	['MA','Area FaHCE']
)
Gestor.tiposUsados=new Array()
Gestor.salida=""

	
function initForm(tipoForm){ 
	var termGetArray=new Array()
        var nw
        
		
		
	$(window).click(function() {
	  if($('#hitBox').attr('class')=="expand"){
	    colapsaBar()
	    $(this).attr('class','')
	  }
	});
	$('#hitBox').click(function(event){
	    $(this).attr('class','expand')
	    expandeBar()	    
	    event.stopPropagation();	    	    
	});  	
	$(".fqv").blur(validaCampoTexo)
        $('#agregaT').click(function(){return false})
	
	$('select[name="fqf"]').attr("onchange",'')
	$('.btn_borra').css( 'cursor', 'pointer' );
	$(".btn_borra").click(function(){
	  borra($(this).parent().attr("id"))
	  return false
	})
	if(tipoForm!="simple"){
		$(".buscador").remove()	
	}else{
            if(QueryString.e && $("#t0 input").val()==txtInputQ){
                var lt=QueryString.e.split("-")
                $("#t0 input").val(lt[43])
            }
        }
	
	$(".swCol").change(
		function(){
			if($(".swCol").val()=="CC"){
				$(".coleccionesElegidas div.item").each(function (i,v){
					$(v).attr('class',' item btn elegida')
					$('a',v).click(function () {return false;});
				})
			}else{
				$(".coleccionesElegidas div.item").each(function (i,v){
					$(v).attr('class','item btn')
					$('a',v).unbind('click');
				})
			}
		}
	)
        
        
	if(QueryString.j=="fu"){
		$("#j").attr('checked', true);
	}
	generaColecciones()

	
	
	if(tipoForm=="avanzada"){
	  termGetArray=QueryString.fqv.split(",")	  
	  $('#generaCampos input.fqv').each(function(i,v){
		var padre=$(v).parent()
		if(termGetArray[i]!=""){			
			$(padre).show()
			navBarOfset+=20
		}
	    $(v).attr('value',termGetArray[i])
		
	  })
	}
	
	
	$(".fqv").focusin(function(){
		var tx=$(this).val()
		if(tx==txtInputQ){	
			$(this).val("")
		}
	})
        $(".fqv").focusout(function(){
		var tx=$(this).val()
		if(tx==""){
                    $(this).val(txtInputQ)
		}
	})
	$("#q").focusin(function(){
		var tx=$(this).val()
		if(tx==txtInputQ){	
			$(this).val("")
		}
	})
	$("#q").focusout(function(){
		var tx=$(this).val()
		if(tx==""){
			$(this).val(txtInputQ)
		}
	})
	$(".fqv").keypress(function( event ) {
	  if ( event.which == 13 ) {
	    colapsaBar()
	    buscar()
	  }
	});
	
        if($('center td[align="right"] a').length>0){
            relinkpaginado($('center td[align="right"] a'))
        }
	if($('center td[align="left"] a').length>0){
            relinkpaginado($('center td[align="left"] a'))
        }
	
	//muevo el portlet navegar
	if($(".bgimage .portlet-static-navegar").length>0){
            nw=$("#queryBox").height()+navBarOfset
            //$(".bgimage .portlet-static-navegar").css('marginTop',nw)            
	}
	//var rutap=QueryStringAux($(paginadoNextA).attr("href").split("?")[1])	
}
function relinkpaginado(paginadoNextA){  
    //Reescribre el HREF del link del paginado para que agregue las coleccionesElegidas seleccionadas
    var ObjQ
    
    //var miruta=window.location.pathname    
    colectDatos()
    if($(paginadoNextA).length>0){
	  var ObjQ=QueryStringAux($(paginadoNextA).attr("href").split("?")[1])
          //colectDatos()
          msj(ObjQ.r)
          msj(Gestor.salida)          
	  var strOut=Gestor.salida+"&"+"r="+ObjQ.r
	  $(paginadoNextA).attr("href",strOut)
    }
    
    msj("relink")
    
    
}
function validaCampoTexo(){
    if($('.termF').filter(function() {
      return $(this).css('display') !== 'none';
    }).length>1){
      $("#generaCampos .termF .btn_borra").first().show()
    }else{
      $("#generaCampos .termF .btn_borra").first().hide()
    };
  if($(this).val()=="" || $(this).val()=="Escriba el término"){
    $(this).css("border","1px solid red")
  }else{
    $(this).css("border","0") 
  }
}
function colapsaBar(){
   $( "#queryBox" ).animate({
    width: "170px"},{ duration: 800, queue: false });
   /*step:function(now, fx ){ 
                //$(".bgimage .portlet-static-navegar").css("marginTop",$("#queryBox").height()+navBarOfset)
                //$(".bgimage .fixBox").css("marginTop",$("#queryBox").height()+navBarOfset)
            
        } */
    $( "#qBar" ).animate({    
      left: "-528px"},{ duration: 800, queue: false });

}
function expandeBar(){  
   $( "#queryBox" ).animate({width: "350px"},{ duration: 800, queue: false });    
   $( "#qBar" ).animate({    
      left: "-290px"},{ duration: 800, queue: false});
   
   /*step:function(now, fx ){ 
            //$(".bgimage .portlet-static-navegar").css("marginTop",$("#queryBox").height()+navBarOfset)
            //$(".bgimage .fixBox").css("marginTop",$("#queryBox").height()+navBarOfset)
        }*/
}
function buscar(){      
  colectDatos()
  subm()  
}
function generaColecciones(){	
        var arrC
        if(!QueryString.cc){
            if(!QueryString.c){
                    arrC=new Array()
                    $(Gestor.colect).each(function (i,v){arrC.push(v[0])})
            }else{
                arrC=[QueryString.c]                
            }
        }else{
            arrC=QueryString.cc            
        }
        
        if(arrC.length < Gestor.colect.length){
            $('.swCol option:eq(1)').attr('selected', 'selected')            
        }
        
	$.each(Gestor.colect,function(i,v){
		var item=$(document.createElement("div"))
		var sp=$(document.createElement("span"))
		$(sp).attr("class","valor")
		$(sp).attr("id","col"+i)
		$(sp).text(v[0])
		$(item).attr("class","item btn")
        if( Object.prototype.toString.call(arrC) === '[object Array]' ) {				
            for(var tmp=0; tmp < arrC.length;tmp++){
                            
              if(arrC[tmp]==v[0]){
                $(item).attr("class","item btn elegida")
                break;
                }
            }
        }else{
            if(arrC==v[0]){$(item).attr("class","item btn elegida")}
        }
		$(item).append('<p onClick="selectCol(this.parentNode);this.preventDefault()">'+v[1]+'</p>')
		$(item).append(sp)
		$(".coleccionesElegidas").append(item)
	})
}
function selectCol(padre){
	if($(".swCol").val()=="CC"){
		$('#QueryForm .swCol option[value="N"]').attr('selected', 'selected')		
		$('.coleccionesElegidas div.item').each(function(i,v){
			if( $(padre).attr('id')!=$(v).attr('id')){
				$(v).attr('class','item btn')
			}				
		})
	}else{
		$(padre).toggleClass("elegida")
		
		if ($(".coleccionesElegidas .item").length!= $(".coleccionesElegidas .elegida").length){
			$('#QueryForm .swCol option[value="N"]').attr('selected', 'selected')	

		}else{
			$('.swCol option[value="CC"]').attr('selected', 'selected')
		}
		if($(padre).attr("class")=="item btn elegida"){
			  $('input', padre).attr( "checked", "checked" );
		}else{
			$('input', padre).attr( "checked", "checked");
		}
	}
}
function leeURLPar(){
	/*lee los parametros para saber si la busqueda ya fue iniciada*/
	/*ahora devuleve vacio*/
	return ""
}
function msj(msj){console.log(msj)}

function generaTermino(){
    $(".bgimage .portlet-static-navegar").css("marginTop",$("#queryBox").height()+navBarOfset+35) 
    $("#generaCampos .termF").each(function(){
		if($(this).css("display")=="none"){
			//$("input", $(this)).val("Escriba el término")
			$(this).show()
			return false
		}
	})
}

function borra(id){
	var elem=$("#"+id)
	$(elem).hide()
	$(".fqv",$(elem)).val("")
	$(elem).insertBefore(".btn_nuevo")
        $(".bgimage .portlet-static-navegar").css("marginTop",$("#queryBox").height()+navBarOfset)
        
}
function oculta(id){
	$("#"+id).hide("slow")        
}
function muestra(id){
	$("#"+id).show("slow")
        
}
function muestraBarraG(){
	muestra("generaCampos")
}
function agregaHtmlItem(usrT,tC,vC){
	//buscaId
	var nextID="c"+$("#campoLimpio .item").length
	var nItem=$(document.createElement("div"))
	$(nItem).attr("id",nextID)
	$(nItem).attr("class","item")

	//$(nItem).append('<span class="termino">'+usrT+',</span><span class="tcampo">'+tC+'</span> <span class="vcampo">'+vC+'</span>')
	$(nItem).append('<div class="tbox">[<a href="#" rel="'+nextID+'" onClick="borra(\''+nextID+'\')">borrar</a>][<a href="#" rel="'+nextID+'" onClick="editaItem(\''+nextID+'\')">Edita</a>][<a href="#" rel="'+nextID+'" onClick="muestraBarraG()">+</a>]</div> ')
	
	$("#campoLimpio").append(nItem)
	colectDatos()

}
function editaItem(id){		
	incertaBarraEnItem(id)
	//<a href="#" onclick="generaTermino()">agregar</a>		
}
function guarda(elem){
	var tuser=$("#q").val()
	var tcampo=$('select[name="fqf"] option:selected').text()
	var vcampo=$('select[name="fqf"] option:selected').val()
	var padre=$("#generaCampos").parent()
	var generaB=$("#generaCampos")
	$(".termino",padre).text(tuser+", ")
	$(".tcampo",padre).text(tcampo+" ")
	$(".vcampo",padre).text(vcampo)
	devuelveBarra();
	colectDatos()
}
function incertaBarraEnItem(id){
	//junta los datos que ya estaban
	var datU=$("#"+id+" .termino").text().slice(0,-1)
	var elegido=$("#"+id+" .vcampo").text()
	$("#q").val(datU)
	$('select[name="fqf"] option[value="'+elegido+'"]').attr('selected', 'selected')
	$(".generaCampos").appendTo("#"+id)
	$(".generaCampos .btn_nuevo").hide()
	$(".generaCampos .btn_guarda").show()
	$(".generaCampos").css("background-color","#ff0066")
}
function devuelveBarra(){
	$(".generaCampos").appendTo("#campoLimpio")
	$(".generaCampos .btn_nuevo").show()
	$(".generaCampos .btn_guarda").hide()
	$(".generaCampos").css( "background-color","#eeeeee" )
}

function colectDatos(){
	var camposVal = "&fqv="
	var camposNom = "&fqf="
	
	var colecStr=""
	var ocultosStr=""
	var jStr=""
	
	Gestor.salida=""	
	$('#QueryForm input[name="fqv"]').each(	
		function (i,v){
			if (i<3){			
			camposVal+= $(v).val()+","
			}else{
			camposVal+= $(v).val()}
		}
	)
	
	$('#QueryForm select[name="fqf"]').each(	
		function (i,v){
			if (i<3){			
			camposNom+= $('option:selected',v).val()+","
			}else{
			camposNom+= $('option:selected',v).val()}
		}
	)

	
	if($(".swCol").val()=="CC"){
		$("#QueryForm .coleccionesElegidas div.item").each(
			function(a,v){
				
			    if(a==0){
					colecStr+= "cc="+$(".valor",v).text()
				}else{
					colecStr+= "&"+"cc="+$(".valor",v).text()
				}
			}
		)
	}else{
		$("#QueryForm .coleccionesElegidas div.elegida").each(
			function(a,v){	
				if(a==0){
					colecStr+= "cc="+$(".valor",v).text()
				}else{
					colecStr+= "&"+"cc="+$(".valor",v).text()
				}
			}
		)
	}
	//fulltext
	jStr="&j=me"
	if($("#QueryForm #j").is(':checked')){jStr="&j=fu"}
	//ocultos
	$('#QueryForm input[type=hidden]').each(function(){
		ocultosStr+="&"+$(this).attr("name")+"="+$(this).val()
	})	
	//parametros resultados	
	Gestor.salida="http://gorthaur.fahce.unlp.edu.ar/gsdlpablo/library?"+colecStr+camposVal+camposNom+ocultosStr+jStr+"&ajx=2"
}
function subm(){
        var flag=0        
        $(".fqv").each(function(i,v){
            if($(v).val()!="" && $(v).val()!=txtInputQ){flag++}
            if(i>0){
                if($(v).val()=="" || $(v).val()==txtInputQ){
                        $(v).parent().hide("slow")
                }
            }
        })
        if(flag==0){            
            $($(".fqv")[0]).focus();
            return false
        }
	$("#resultinfo").text('')    
	$('#resultinfo').append('<h4 id="titulB">Buscando <img src="web/images/spinner.gif" alt=""/></h4>')
	$(".document center").remove()
	$(".v_list").remove()
        
        
        
	$.ajax({
	  url: Gestor.salida,
	  type: "GET",
	  dataType:"html",
	  success: function(data){
	    manageResult(data)
	},error: function (xhr, ajaxOptions, thrownError) {
	  alert(xhr.status);
	  alert(thrownError);
	}
      })
}

function manageResult(data){ 
  $("#resultinfo").text('')      
  var dataInfo=$("#resultinfo",data)
  var vacioR=$(document.createElement("div"))
  var divPaginado=$(document.createElement("div"))
  divPaginado.attr("id","secPaginado")
  
  var nextE,prevE,prevLink,nextLink,lastVlist,colPagR, colPagL  
  if($('center td[align="right"] a', data).length>0){ //PAGINADO :si existe el siguiente!      
      nextE=$(document.createElement("a"))
      nextLink=$('center td[align="right"] a', data)  
      $(nextE).attr('href',$(nextLink).attr("href"))
      $(nextE).append($(nextLink).html())
      relinkpaginado($(nextE)) 
      colPagR=$(document.createElement("div"))      
      colPagR.attr("id","colPagR")
      colPagR.append($(nextE))
      divPaginado.append(colPagR)
  }
  if($('center td[align="left"] a', data).length>0){ //PAGINADO :si existe el anterior!      
      prevE=$(document.createElement("a"))
      prevLink=$('center td[align="left"] a', data)  
      $(prevE).attr('href',$(prevLink).attr("href"))
      $(prevE).append($(nextLink).html())
      relinkpaginado($(prevE)) 
      colPagL=$(document.createElement("div"))
      colPagL.attr("id","colPagL")      
      colPagL.append($(prevE))
      divPaginado.append(colPagL)
  }
  $(vacioR).attr("class","document")  
  
  
  $("#resultinfo").append($(dataInfo).html())
  
  $(".v_list",data).each(function (i,v){ 
      $(".document").append(v)
      
    })
  
  //$(".document").append($("center",data))
  //lastVlist=$(".document .v_list").last()
  $(".document").append(divPaginado)
  
  
  
  
  //$(".document").append()
  //$(".document").append($(prevE))
  
  $("#compartirBI").val(Gestor.salida)
  $("#compartirB").click(function(event){
    event.preventDefault();
    $("#compartirBI").toggle()
  })
}

	

function initAvanzada(){
	 msj("viene de busqued simple");
	 initForm("simple") ;
}

$( document ).ready(function() {
    
  if(QueryString.ajx=="2"){
     msj("viene de busqueda avanzada");
     initForm("avanzada") 
  }else{
    //initForm("simple")     
    msj("viene de busqued simple");
    if($("center").length>0){
        msj("viene con paginado")
    }
    if(QueryString.e){        
        var lt=QueryString.e.split("-")        
        $("#t0 input").val(lt[43])
    }else{
        if(QueryString.q){
            $("#t0 input").val(QueryString.q)
        }
    }
  }
});

