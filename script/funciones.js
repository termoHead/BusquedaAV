  var origi
  var fullurl="http://gorthaur.fahce.unlp.edu.ar/gsdlpablo/library?c=all&p=avanzadaView"
  
  function toggleCheckbox(vv) {	 
	 var miId=$(vv).attr("id")
	 console.log(miId)
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
                resupuesta(response);
            }
        });
      })
    
}
    

function resupuesta(data){  
	alert($("#avanzada_holder").length)
	$("#avanzada_holder").append($(data).html());	
	$("#basicQuery").hide("slow")
	$("#avanzada_holder").show("slow")

	setTimeout(function() {
	    //initAvanzada()
        //generaColecciones()
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

