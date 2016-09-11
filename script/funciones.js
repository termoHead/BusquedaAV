  var origi
  var fullurl="http://gorthaur.fahce.unlp.edu.ar/gsdlpablo/library?c=all&p=avanzadaView"
  
  function toggleCheckbox(checkbox,valor,novalor) {
	//check=document.getElementById(element_id);
      
	if (!valor) {
            valor = 1;
            novalor = 0;
	}
	if (checkbox.value == valor) {
		checkbox.value = novalor;
	} else {
		checkbox.value = valor;
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
                resupuesta(response);
            }
        });
      })
    
}
    

function resupuesta(data){  
	$("#avanzada_holder").append($(data).html());	
	$("#basicQuery").hide("slow")
	$("#avanzada_holder").show("slow")

	setTimeout(function() {
	    initAvanzada()
            generaColecciones()
	}, 800);

	
	$( ".portlet-static-ultimas-incorporaciones" ).animate({
	  marginTop: "480px",
	}, 1000, function() { })  
	  
	
  
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
});

