package avanzadaView
_header_{}
_content_{
<div id="avanzada_wrapper">
<div style="width: 170px" id="queryBox" class="queryform">
<div id="qBar"><div class="label">Busqueda Avanzada<span class="help" id="helptT">?</span><div class="clr"></div></div></div>
<form id="QueryForm" name="QueryForm" method="get" action="http://gorthaur.fahce.unlp.edu.ar/gsdlpablo/library?qt=1">
	<input value="1" name="qt" type="hidden">
	<input value="q" name="a" type="hidden">
	<input value="1" name="r" type="hidden">
	<input value="1" name="hs" type="hidden">
	<input name="c" value="all" type="hidden">
	<input name="t" value="0" type="hidden">
	<div id="campoLimpio"></div>
	<div class="expand" id="hitBox">
	<div class="generaCampos" id="generaCampos">
		<div class="termF" id="t0">
			<input class="fqv" name="fqv" value="Escriba el término" type="text">
			<span class="hackFQF"><select name="fqf" onchange="updatefqf();">
<option value="ZZ">todos los campos
</option><option value="TX">Texto completo
</option><option value="DC">Personas/Instituciones
</option><option value="DT">Título
</option><option value="DS">Palabras claves
</option><option value="MA">Area FaHCE
</option></select>
</span><span class="btn_borra" style="display: none; cursor: pointer;"><img src="web/images/menos_term.gif" alt="Remover"></span>
		</div>
		<div class="termF" id="t1" style="display:none">
			<input class="fqv" name="fqv" value="" type="text">
			<span class="hackFQF"><select name="fqf" onchange="updatefqf();">
<option value="ZZ">todos los campos
</option><option value="TX">Texto completo
</option><option value="DC">Personas/Instituciones
</option><option value="DT">Título
</option><option value="DS">Palabras claves
</option><option value="MA">Area FaHCE
</option></select>
</span><span style="cursor: pointer;" class="btn_borra"><img src="web/images/menos_term.gif" alt="Remover"></span>
		</div>
		<div class="termF" id="t2" style="display:none">
			<input class="fqv" name="fqv" value="" type="text">
			<span class="hackFQF"><select name="fqf" onchange="updatefqf();">
<option value="ZZ">todos los campos
</option><option value="TX">Texto completo
</option><option value="DC">Personas/Instituciones
</option><option value="DT">Título
</option><option value="DS">Palabras claves
</option><option value="MA">Area FaHCE
</option></select>
</span><span style="cursor: pointer;" class="btn_borra"><img src="web/images/menos_term.gif" alt="Remover"></span>
		</div>
		<div class="termF" id="t3" style="display:none">
			<input class="fqv" name="fqv" value="" type="text">
			<span class="hackFQF"><select name="fqf" onchange="updatefqf();">
<option value="ZZ">todos los campos
</option><option value="TX">Texto completo
</option><option value="DC">Personas/Instituciones
</option><option value="DT">Título
</option><option value="DS">Palabras claves
</option><option value="MA">Area FaHCE
</option></select>
</span><span style="cursor: pointer;" class="btn_borra"><img src="web/images/menos_term.gif" alt="Remover"></span>
		</div>
                <span class="btn_nuevo"><a href="#" id="agregaT" onclick="generaTermino()"><img src="web/images/mas_term.gif" alt="Nuevo término"> nuevo termino</a></span>	
	</div>
	<div class="seccion">
		<div class="label">En colecciones  <!--input class="swCol" type="button" value="todas"/ --> <span class="help" id="helptC">?</span>
<select class="swCol"><option selected="" value="CC">Todas</option>
			<option value="N">Seleccionadas</option></select>
<div class="clr"></div></div>
		
			<div class="coleccionesElegidas">			
		
		</div>
		<div class="clr"></div>
	</div>
	<div class="seccion">
		  
		  <input onclick="toggleCheckbox(this)" name="j" id="j" type="checkbox">Sólo texto completo

	</div>
	<div class="clr"></div>
	</div>
<div class="seccion botSnd">	
        
	<input id="btn_buscar" value="Iniciar la búsqueda" onclick="buscar();" type="button">
</div>
</form>

</div>
</div>
}
_footer_ {
}