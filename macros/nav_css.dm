# this file must be UTF-8 encoded

# This macro file contains the definitions required for making the
# navigation bar presentation controlled by the CSS file.

#######################################################################
# GLOBAL MACROS 
#######################################################################

package Global

#######################################################################
# global navigation links
#######################################################################

_globallinks_ {_If_("_cgiargu_" ne "1",_homelink_) _helplink_ _preflink_}
_homelink_ {_navtaborig_(_httppagehome_,_linktextHOME_,_textdescrhome_)}
_helplink_ {_navtaborig_(_httppagehelp_,_linktextHELP_,_textdescrhelp_)}
_preflink_ {_navtaborig_(_httppagepref_,_linktextPREFERENCES_,_textdescrpref_)}

# The following is useful if collection specific macro.  Override
# _optnavigationbar_ to be empty if you don't want the navigation bar to
# appear in the standard place, and then specify _navigationbar_ elsewhere
# in a collection specific macro file(s) to be where you do want it.

_optnavigationbar_{
                <td id="portal-column-one" class="gMarca">
                  <div class="visualPadding">
	_If_("_cgiargqt_" eq "1", _query:newfieldqueryform_)
		
                      
<div class="portletWrapper "><div class="portletStaticText portlet-static-buscar"> 
<div metal:define-macro="portlet" class="buscador">
<form id="basicQuery" name="QueryForm" method="get" action="http://www.memoria.fahce.unlp.edu.ar/library">
<p>
<input type="hidden" name="a" value="q">
<input type="hidden" name="r" value="1">
<input type="hidden" name="hs" value="1">
<input type="hidden" value="1" name="css">
<input type="hidden" value="arti" name="cc">
<input type="hidden" value="convenio" name="cc">
<input type="hidden" value="eventos" name="cc">
<input type="hidden" value="libros" name="cc">
<input type="hidden" value="norma" name="cc">
<input type="hidden" value="planes" name="cc">
<input type="hidden" value="progra" name="cc">
<input type="hidden" value="proyecto" name="cc">
<input type="hidden" value="tesis" name="cc">
<input type="hidden" value="extension" name="cc">
<input type="hidden" tabindex="7" value="all" name="c">
<input type="hidden" value="0" name="t">
<input type="hidden" value="" name="sf">
<input type="hidden" value="me" name="j">

<span class="querybox">Buscar en las colecciones
<input type="text" name="q" value="_cgiargq_">

</span>
<span class="textselect">
<select name="fqf">
<option value="ZZ" selected="">en todos los campos
</option><option value="TX">Texto completo
</option><option value="DC">Personas/Instituciones
</option><option value="DT">Título
</option><option value="DS">Palabras claves
</option><option value="MA">Area FaHCE
</option></select>
<label title="Limitar la búsqueda a los documentos full-text">
  _If_("_cgiargj_" eq "fu", <input type="checkbox" checked onclick="toggleCheckbox(this)" name="ja" id="ja">Sólo texto completo,
  <input type="checkbox" onclick="toggleCheckbox(this)" name="ja" id="ja">Sólo texto completo)
  
</label>
</span>
<input type="submit" value="Iniciar la búsqueda">
<a href="_httpprefix_/library?c=all&a=q" id="btnAv">Búsqueda avanzada</a>
</p>
</form>
<div id="avanzada_holder" style="display:none"></div>
<div class="clr"></div>
</div> 
</div>
</div>

<div class="fixBox">

<div class="portletStaticText portlet-static-navegar"><div class="leftMenu">
<h3>Navegar</h3>
<ul>
<li class="niv1"><a id="xcoleccion">Por coleccion</a></li>
<ul class="listaColeccion">
<li><a target="_self" href="http://www.memoria.fahce.unlp.edu.ar/library?site=localhost&amp;a=p&amp;p=about&amp;c=arti&amp;l=es&amp;w=utf-8">Artículos de revistas</a></li>
<li><a target="_self" href="http://www.memoria.fahce.unlp.edu.ar/library?site=localhost&amp;a=p&amp;p=about&amp;c=tesis&amp;l=es&amp;w=utf-8">Tesis de grado y de posgrado</a></li>
<li><a target="_self" href="http://www.memoria.fahce.unlp.edu.ar/library?site=localhost&amp;a=p&amp;p=about&amp;c=eventos&amp;l=es&amp;w=utf-8">Trabajos presentados a eventos</a></li>
<li><a target="_self" href="http://www.memoria.fahce.unlp.edu.ar/library?site=localhost&amp;a=p&amp;p=about&amp;c=libros&amp;l=es&amp;w=utf-8">Libros y capítulos de libros</a></li>
<li><a href="http://www.memoria.fahce.unlp.edu.ar/library?site=localhost&amp;a=p&amp;p=about&amp;c=proyecto&amp;l=es&amp;w=utf-8">Proyectos de investigación</a></li>
<li><a href="http://www.memoria.fahce.unlp.edu.ar/library?site=localhost&amp;a=p&amp;p=about&amp;c=extension&amp;l=es&amp;w=utf-8">Proyectos de extensión</a></li>
<li><a href="http://www.memoria.fahce.unlp.edu.ar/library?site=localhost&amp;a=p&amp;p=about&amp;c=planes&amp;l=es&amp;w=utf-8">Planes de estudio</a></li>
<li><a href="http://www.memoria.fahce.unlp.edu.ar/library?site=localhost&amp;a=p&amp;p=about&amp;c=progra&amp;l=es&amp;w=utf-8">Programas de materias y seminarios</a></li>
<li><a href="http://www.memoria.fahce.unlp.edu.ar/library?site=localhost&amp;a=p&amp;p=about&amp;c=norma&amp;l=es&amp;w=utf-8">Normativa</a></li>
<li><a href="http://www.memoria.fahce.unlp.edu.ar/library?site=localhost&amp;a=p&amp;p=about&amp;c=convenio&amp;l=es&amp;w=utf-8">Convenios</a></li>
</ul>
<li class="niv1"><a id="xcomunidad">Por comunidad</a></li>
<ul class="listaComunidad">
<li><a href="http://www.memoria.fahce.unlp.edu.ar/memoria/menus/comunidades/comunidades-institucionales">Institucional</a></li>
<li><a href="http://www.memoria.fahce.unlp.edu.ar/memoria/menus/comunidades/comunidades-academicas">Académica</a></li>
<li><a href="http://www.memoria.fahce.unlp.edu.ar/memoria/menus/comunidades/comunidades-de-posgrado">Posgrado</a></li>
<li><a href="http://www.memoria.fahce.unlp.edu.ar/memoria/menus/comunidades/comunidad-de-investigacion">Investigación</a></li>
<li><a href="http://www.memoria.fahce.unlp.edu.ar/memoria/menus/comunidades/comunidades-de-extension">Extensión</a></li>
<li><a href="http://www.memoria.fahce.unlp.edu.ar/memoria/menus/comunidades/biblioteca">Biblioteca Prof. Guillermo Obiols</a></li>
<li><a href="http://www.memoria.fahce.unlp.edu.ar/memoria/menus/comunidades/comunidades-de-investigacion">Instituto de Investigaciones en Humanidades y Ciencias Sociales</a></li>
</ul>
</ul>
</div></div>
<div class="portletStaticText portlet-static-ultimas-incorporaciones"><div>
<div id="notiTarget"></div>
_If_("_collectionname_" eq "Tesis",<script> htmlExterno(\'http://www.memoria.fahce.unlp.edu.ar/novetes.html\',\'notiTarget\')</script> )
_If_("_collectionname_" sw "Art",<script>htmlExterno(\'http://www.memoria.fahce.unlp.edu.ar/novarti.html\',\'notiTarget\')</script>)
_If_("_collectionname_" sw "Tra",<script>htmlExterno(\'http://www.memoria.fahce.unlp.edu.ar/noveven.html\',\'notiTarget\')</script>)
_If_("_collectionname_" sw "Lib",<script>htmlExterno(\'http://www.memoria.fahce.unlp.edu.ar/novlib.html\',\'notiTarget\')</script>)

</div>
</div>

</div>
_If_("_cgiargajx_" ne "2",<script src="_httpscript_/avanzada.js"></script> )
 
                    &nbsp;
                  </div>
                </td>
            <td id="portal-column-content">
                <div class="">
                    <div id="content">
<h1 class="documentFirstHeading" id="parent-fieldname-title">_If_("_collectionname_" sw "B",_collectionname_,<a href="_httppageabout_">Colección _collectionname_</a>)</h1>
<div class=menuColeccion>
_navigationbar_ 
<div class="clr"></div>
</div>

} 

_starthighlight_ {<span class="highlight">}
_endhighlight_ {</span>}

# parameters are:
# 1. the url to go to when clicked
# 2. the name of the tab
# 3. alt/title explanatory text
# 4. optional "selected" or not if it is the current tab
# _navtaborig_ {<a _If_("_4_" eq "selected",class="navlink_sel">_2_,class="navlink" href="_1_" title="_3_">_2_)</a>}
_navtaborig_ {<div _If_("_3_" eq "selected",class="navlink_sel">_2_,class="navlink"><a href="_1_" title="_3_">_2_</a>)</div>}


# parameters are
# 1. The url to go to when clicked
# 2. The metadata name - this gets used to determine the title and alt text
# 3. optional "selected" if it is the current tab
_navtab_ {<div _If_("_3_" eq "selected",class="navlink_sel">_2_,class="navlink"><a href="_1_" title="_3_">_2_</a>)</div>}


#######################################################################
# navigation bar images
#
#######################################################################

# the spacer image - the width of this is calculated and set from server.
#
# Its height is now explicity set to 1 to avoid width x height "scaling
# problem".  Given that spacer.gif's natural dimensions are 40x4 pixels,
# left uncontrolled, when the image is stretched through _widthtspace_ to
# a width of say 400 (as happens when there are only two items in the
# navigation bar) then its height becomes 40 pixels, making the navbar
# twice as high as the text in it, and quite ugly looking

_navbarspacer_ {}

_navbarspacer_[v=1] {<br>
}

# cgiargu means "static page", so no search link should be shown
_navtabsearch_ {_If_("_cgiargu_" ne "1",)}

package about

_imagethispage_ {_titleabout_}

package query

_imagethispage_ {_labelSearch_}


package Style

_imagescript_ {}

#_bannertitle_ {_If_(_imagethispage_,<p class="bannertitle"><span class="bannertitle">_imagethispage_</span></p>)}

_bannertitle_ {_If_(_imagethispage_,<p class="bannertitle">_imagethispage_</p>)}

#<span class="bannertitlebackground">i</span>

package home

_preflink_ {_navtab_(_home:httppagehomepref_,_linktextPREFERENCES_,_textdescrpref_)}

