  var origi
  var fullurl="http://www.memoria.fahce.unlp.edu.ar/library?c=all&p=avanzadaView"
  
  //flag para saber si cuando se resizea el contenido es necesario actualizar el alto del centro
  var actualizarCentro=false 
  
  
  
  function toggleCheckbox(vv) {	 
	 var miId=$(vv).attr("id")	 
     if(document.getElementById(miId).checked){
		 $('input[name="j"]').attr("value","fu")
	 }else{
		 $('input[name="j"]').attr("value","me")
	 }
	
  }//end of function

function setChecked(arrayIds) {
	for (index in arrayIds) {
		checkBox = document.getElementById(arrayIds[index]);
		checkBox.checked = true;
	}
}//end of function

function initBotones(){  
    
     $("#btnAv").click(function (e){
      e.preventDefault()
      $.ajax({
	url: fullurl,
	context: document.body,
        dataType:"html",
        success: function(response) { 
                avanzadaCargada(response);
            }
        });
      })
}

function avanzadaCargada(data){
	$(".buscador").css("border","0")
	$("#avanzada_holder").append($(data).html());
	$("#basicQuery").hide("slow")
	$("#avanzada_holder").show("slow")	
	setTimeout(function() {
		$("div.queryform").css("margin","0")
		$("#avanzada_holder .queryBox").css("left","0")	
	    initAvanzada("simple")        
		
	}, 800);	
}
 
function cierraAvanzada(){
  $( "#queryBox" ).hide("slow")  
  setTimeout(function() {
    $("#basicQuery").show("slow")
    $("#avanzada_holder").text("")	
  }, 1000);  
}



/*función para abrir y cerrar los submenus del menu principal*/
$(document).ready(function(){
  origi=$( ".buscador" ).height();
  initBotones()
  $("#btnAv").attr("href","#")
  $("#xcoleccion").click(function(){
    $(".listaColeccion").show();
    $(".listaComunidad").hide();
  });
  $("#xcomunidad").click(function(){
    $(".listaColeccion").hide();
    $(".listaComunidad").show();
  });
  updateCuerpoCentral()
});


function updateCuerpoCentral(){        
        //como la columan izquierda flota
        //es necesario calcular los altos
		
        var coltotal= 500+$(".navegar").height()
        var portletList=[".portlet-static-navegar",".buscador",".portlet-static-ultimas-incorporaciones",".navegar"]
        var alto=0
        var altoR=$(".portlet-static-linksderecha_1").height()
		
        $(portletList).each(
			function(i,v){
				if($(v).length>0){
				 alto+=$(v).height()
				}
			}
        )
		
        if($("#portal-column-content").height()<altoR){
             if(altoR<alto){
                altoR=alto
             }
            $( "#portal-column-content" ).height((altoR+150)+"px")
        }
          
}

function htmlExterno(url,idTarget){
  //url donde se encuentra el html
  //elemTarget es el div dentro del cual se agrega el html     
  $.ajax({
	  url: url,
	  type: "GET",
	  dataType:"html",
	  crossDomain : true,
	  success: function(data){
            $("#content").height("900")
	    $("#"+idTarget).append(data)
	},error: function (xhr, ajaxOptions, thrownError) {
            $("#"+idTarget).append("...buscando noticias...")
            // alert(xhr.status);
            // alert(thrownError);
	}
     })

}



