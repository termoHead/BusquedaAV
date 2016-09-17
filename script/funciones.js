  var origi
  var fullurl="http://gorthaur.fahce.unlp.edu.ar/gsdlpablo/library?c=all&p=avanzadaView"
  
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
	    initAvanzada()
        //generaColecciones()
		
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
        if($("#portal-column-content").height()<alto){             
             if(alto<altoR){
                alto=altoR
             }
            $( "#portal-column-content" ).height((alto+150)+"px")
        }
          
}