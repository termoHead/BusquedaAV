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
	$(".buscador").css("border","0")
	
	/*$(".buscador").animate({
	  top: "0",
	}, 1000, function() { })
	
	$( ".fixBox" ).animate({
	  marginTop: "433px",
	}, 1000, function() { })  
	*/  
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
});

