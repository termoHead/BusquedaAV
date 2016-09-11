# this file must be UTF-8 encoded
#######################################################################
# PAGE STYLES
#######################################################################

package Style

# to use this style system output
# _header_
# all your page content, then
# _footer_

# use the page parameter 'style' to choose the appropriate style

# Current values: "html" and "xhtml"
_compliance_ {html}

# the style system uses
# _pagetitle_  - what gets displayed at the top of the browser window
# _pagescriptextra_ - any extra javascript you want included in the header
# _pagescriptfileextra_ any extra javascript file
# _pagebannerextra_ - anything extra you want displayed in the page banner
# _pagefooterextra_ - anything extra you want displayed in the footer

# defaults for the above macros
_pagetitle_ {_collectionname_}
_pagescriptextra_ {}
_pagebannerextra_ {}
_pagefooterextra_ {}
_pagescriptfileextra_ {
  <script type="text/javascript" src="_httpscript_/jquery-1.4.2.min.js"></script>
  <script type="text/javascript" src="_httpscript_/funciones.js"></script>

}

# collection specific style and script may be set in collection's extra.dm
# using the following macros
_collectionspecificstyle_ {}
_collectionspecificscript_ {}

# it also relies on lots of Globals, the most important of these are:
# _cookie_ - put in the cgi header
# _globalscripts_ - javascript stuff
# _imagecollection_
# _imagehome_
# _imagehelp_
# _imagepref_
# _imagethispage_ (this is now not an image, but text. should be renamed?)
# _linkotherversion_

# _httpiconchalk_ - the image down the left of the page - is now done
# by the style sheet.

_header_ {_cgihead_
_htmlhead_(class="bgimage")_startspacer__pagebanner_
}

_header_[v=1] { _cgihead_
_htmlhead__pagebanner_
}

# _cgihead_ {Content-type: text/html
# _cookie_
#
# }
_cgihead_{}


# any declarations relating to CSS that should go in the html head part.
# declarations containing images are done here so the path is correct
# at runtime.

_csslink_{
  <link rel="stylesheet" href="_cssfilelink_" type="text/css"
   title="Greenstone Style" charset="UTF-8" _linktagend_
  <link rel="alternate stylesheet" href="_httpstyle_/style-print.css"
   type="text/css" title="Printer" charset="UTF-8" media="print, screen" _linktagend_
  <link rel="stylesheet" href="_httpstyle_/style-print.css" type="text/css"
   title="Printer" charset="UTF-8" media="print" _linktagend_
  <link rel="oaipmh" type="application/xml"  title="OAI BASEURL" href="http://www.memoria.fahce.unlp.edu.ar/oaiserver.cgi" />
  <link rel="icon" type="image/png" href="http://www.memoria.fahce.unlp.edu.ar/memoria/favicon.ico" />
}

_cssheader_ {
_csslink_
_collectionspecificstyle_

}


# separate macro so it can be easily overridden for customised collections
_cssfilelink_ {_httpstyle_/style.css}

# Languages that should be displayed right-to-left
_htmlextra_ [l=ar] { dir=rtl }
_htmlextra_ [l=fa] { dir=rtl }
_htmlextra_ [l=he] { dir=rtl }
_htmlextra_ [l=ur] { dir=rtl }
_htmlextra_ [l=ps] { dir=rtl }
_htmlextra_ [l=prs] { dir=rtl }

# htmlhead uses:
# _1_ - extra parameters for the body tag
# _pagetitle_
# _globalscripts_
_htmlhead_ {<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
"http://www.w3.org/TR/html4/loose.dtd">

<html_htmlextra_>
<head>
<meta content="text/html; charset=UTF-8" http-equiv="content-type">
<meta name="_status:textversion_" content="_versionnum_" _metatagend_
_globalscripts_
_cssheader_
_document:documentheader_
</head>

<body _1_>
}

# Link and meta tags must be closed differently for HTML/XHTML validation
_linktagend_ {_If_("_compliance_" eq "xhtml",/>,>)}
_metatagend_ {_If_("_compliance_" eq "xhtml",/>,>)}

_spacerwidth_ {65}

# _startspacer_ is a spacer that gives pages a left-hand margin.
# It must eventually be closed by _endspacer_.
_startspacer_ {

<div id="visual-portal-wrapper">
<div id="portal-top">
<div id="portal-header"></br>
}

# _bannertitle_ is defined in nav_css/ns4.dm, and is either text or
# a banner image
_pagebanner_ {
<!-- page banner (\_style:pagebanner\_) -->
<a href="http://www.memoria.fahce.unlp.edu.ar/memoria" accesskey="1" title="Inicio" id="portal-logo">
    <img width="264" height="42" title="logo.png" alt="" src="http://www.memoria.fahce.unlp.edu.ar/memoria/logo.png"></a>
<ul id="portal-globalnav">
<li class="plain" id="portaltab-acerca-de"><a title="" href="http://www.memoria.fahce.unlp.edu.ar/memoria/acerca-de">Acerca de</a></li>
<li class="plain" id="portaltab-colecciones"><a title="" href="http://www.memoria.fahce.unlp.edu.ar/memoria/colecciones">Colecciones</a></li>
<li class="plain" id="portaltab-politicas"><a title="" href="http://www.memoria.fahce.unlp.edu.ar/memoria/politicas">Políticas</a></li>
<li class="plain" id="portaltab-antecedentes"><a title="" href="http://www.memoria.fahce.unlp.edu.ar/memoria/antecedentes">Antecedentes</a></li>
<li class="plain" id="portaltab-contacto"><a title="" href="http://www.memoria.fahce.unlp.edu.ar/memoria/contacto">Contacto</a></li>
<li class="plain" id="portaltab-contacto"><a title="" href="http://www.memoria.fahce.unlp.edu.ar/memoria/FAQ">FAQ</a></li>
</ul>
</div>
</div>
<div id="viewlet-above-content">
<div id="portal-breadcrumbs">
    <span id="breadcrumbs-you-are-here">Usted está aquí:</span>
    <span id="breadcrumbs-home">
        <a href="http://www.memoria.fahce.unlp.edu.ar/memoria">Inicio</a>
        <span class="breadcrumbSeparator">
            ›
            </span>
    </span>
    <span dir="ltr" id="breadcrumbs-1">



            <span id="breadcrumbs-current">_collectionname_</span>

    </span>

</div>
<div id="plone-lock-status"> </div>
</div>
<div id="clear-space-before-wrapper-table" class="visualClear"><!-- --></div>
<table id="portal-columns" cellpadding="0" cellspacing="0">
        <tbody>
          <tr>
}

# note we no longer close off one of the startspacer tables here!!
_footer_ {
_If_("_cgiargtalkback_" eq "1",_talkback:monitorUpload_)
<!-- page footer (\_style:footer\_) -->
_pagefooterextra__endspacer__htmlfooter_
}

# v=1 footer: not using startspacer in the header, so dont put it in the footer
_footer_ [v=1]{
_If_("_cgiargtalkback_" eq "1",_talkback:monitorUpload_)
<!-- page footer [v=1] (\_style:footer\_) -->
_pagefooterextra_
_htmlfooter_
}

# close off anything opened by startspacer
_endspacer_ {
</div></div>
              <div id="viewlet-below-content">
</div>
            </td>


<td id="portal-column-two">
                  <div class="visualPadding">
<div class="portletWrapper kssattr-portlethash-706c6f6e652e7269676874636f6c756d6e0a636f6e746578740a2f6d656d6f7269610a6c696e6b732d64657265636861" id="portletwrapper-706c6f6e652e7269676874636f6c756d6e0a636f6e746578740a2f6d656d6f7269610a6c696e6b732d64657265636861"><div class="portletStaticText portlet-static-linksderecha_1"><div class="linksDerContent">

<div class="item"><a href="http://www.memoria.fahce.unlp.edu.ar/memoria/menus/perfiles-de-autor/perfiles-autor" class="internal-link"><img src="http://www.memoria.fahce.unlp.edu.ar/memoria/imagenes-portlets/perfilesMemoria.png" alt="Perfiles de autores" class="image-inline" title="perfilesMemoria.png"></a></div>

<div class="item"><a data-mce-href="menus/envio-de-trabajos/formulario-de-autoarchivo-1/formulario-de-autoarchivo" title="Envío de trabajos" target="_self" href="http://www.memoria.fahce.unlp.edu.ar/memoria/menus/envio-de-trabajos/formulario-de-autoarchivo-1/formulario-de-autoarchivo" class="internal-link"> <img title="envioMemoria.png" data-mce-src="menus/estadisticas/envioDeTrabajos.jpg" alt="Envío de trabajos" src="http://www.memoria.fahce.unlp.edu.ar/memoria/imagenes-portlets/envioDeTrabajos_2.jpg"> </a></div>
<div class="item"><a data-mce-href="menus/estadisticas/estadisticas-descriptivas-y-de-uso-del-repositorio" title="Estadísticas" target="_self" href="http://www.memoria.fahce.unlp.edu.ar/memoria/menus/estadisticas/estadisticas-descriptivas-y-de-uso-del-repositorio" class="internal-link"> <img title="estadisticasMemoria.png" data-mce-src="colecciones/estadisticas.jpg" alt="Estadísticas" src="http://www.memoria.fahce.unlp.edu.ar/memoria/imagenes-portlets/estadisticas_2.jpg"> </a></div>

<div class="item"><a data-mce-href="menus/acceso-abierto" title="Bibhuma es Acceso Abierto" target="_self" href="http://www.memoria.fahce.unlp.edu.ar/memoria/menus/acceso-abierto" class="internal-link"> <img data-mce-src="menus/estadisticas/bibhumaEsAA.jpg" src="http://www.memoria.fahce.unlp.edu.ar/memoria/menus/estadisticas/bibhumaEsAA.jpg" alt="Bibhuma es Acceso Abierto"></a></div>

<div class="item linksGlobales">

<a title="Biblioteca Prof. Guillermo Obiols de la Facultad de Humanidades y Cs. de la Educación - UNLP" target="_blank" href="http://www.bibhuma.fahce.unlp.edu.ar" class="external-link"> <img title="Biblioteca Prof. Guillermo Obiols de la Facultad de Humanidades y Cs. de la Educación - UNLP" alt="Biblioteca Prof. Guillermo Obiols de la Facultad de Humanidades y Cs. de la Educación - UNLP" src="http://www.memoria.fahce.unlp.edu.ar/memoria/bibhuma.png"> </a> 
<a id="pastillaArcas" title="Archivo de fuentes de interés para la investigación - FaHCE-UNLP" target="_blank" href="http://arcas.fahce.unlp.edu.ar/">
	<img title="Archivo de fuentes de interés para la investigación - FaHCE-UNLP" alt="Archivo de fuentes de interés para la investigación - FaHCE-UNLP" src="http://www.memoria.fahce.unlp.edu.ar/memoria/arcas.png"></a>
<a id="pastillaAccesoAbierto" title="Blog Acceso Abierto en movimiento" target="_blank" href="http://accesoabierto.fahce.unlp.edu.ar/">
	<img title="Blog Acceso Abierto en movimiento" alt="Blog Acceso Abierto en movimiento" src="http://www.memoria.fahce.unlp.edu.ar/memoria/acceso-abierto.png">
</a>
<a title="Centro Nacional de Promoción de Greenstone Argentina" target="_blank" href="http://cng.fahce.unlp.edu.ar/"> <img title="Centro Nacional de Promoción de Greenstone Argentina" alt="Centro Nacional de Promoción de Greenstone Argentina" src="http://www.memoria.fahce.unlp.edu.ar/memoria/greenstoneArgentina.jpg"> </a> 

<a title="Catálogo de Publicaciones de la FaHCE-UNLP" target="_blank" href="http://www.publicaciones.fahce.unlp.edu.ar/"> <img title="Catálogo de Publicaciones de la FaHCE-UNLP" alt="Catálogo de Publicaciones de la FaHCE-UNLP" src="http://www.memoria.fahce.unlp.edu.ar/memoria/publicaciones.png"></a> 
<a title="Revistas de la FaHCE" href="http://www.revistas.fahce.unlp.edu.ar/" target="_blank"> <img title="Revistas de la FaHCE" alt="Revistas de la FaHCE" src="http://www.memoria.fahce.unlp.edu.ar/memoria/revistas.png"></a>
<a title="Libros de la FaHCE" href="http://www.libros.fahce.unlp.edu.ar/" target="_blank"> <img title="Libros de la FaHCE" alt="Libros de la FaHCE" src="http://www.memoria.fahce.unlp.edu.ar/memoria/libros.png"></a>
<a title="Facultad de Humanidades y Ciencias de la Educación - UNLP" target="_blank" href="http://www.fahce.unlp.edu.ar/"> <img title="Facultad de Humanidades y Ciencias de la Educación - UNLP" alt="Facultad de Humanidades y Ciencias de la Educación - UNLP" src="http://www.memoria.fahce.unlp.edu.ar/memoria/fahce.jpg"> </a> 
<a title="Universidad Nacional de La Plata" target="_blank" href="http://www.unlp.edu.ar/"> <img title="Universidad Nacional de La Plata" alt="Universidad Nacional de La Plata" src="http://www.memoria.fahce.unlp.edu.ar/memoria/unlp.jpg"></a>

</div><div class="linksDerFooter"><br></div></div></div>
</div>
                    &nbsp;
                  </div>
                </td>
</tr>
</tbody>
</table>
<div id="clear-space-before-footer" class="visualClear"></div>
<div id="portal-footer">

<div class="cc">
<img alt="Creative Commons 2.5" src="http://www.memoria.fahce.unlp.edu.ar/memoria/menus/estadisticas/cc.gif"> &nbsp;&nbsp;<span>Licencia Creative Commons Atribución-NoComercial-SinDerivadas 2.5 Argentina a menos que se indique lo contrario</span>
</div>

<div class="facultad">
<p><strong>Facultad de Humanidades y Ciencias de la Educación  |  <a title="Universidad Nacional de La Plata" href="http://www.unlp.edu.ar">Universidad Nacional de La Plata</a></strong><br>
Calle 51 e/ 124 y 125  |  (1925) Ensenada  |  Buenos Aires  |  Argentina</p>
</div>



</div>
<ul id="portal-siteactions">
<div class="visualClear"></div>
</div>

<!--id=page -->

}


_htmlfooter_ {

</body>
</html>
}  <script type="text/javascript" src="_httpscript_/gsajaxapi.js"></script>

_loginscript_ {
   function appendUsernameArgs(id,addOn)
   \{
     var a=document.getElementById(id);
     var url = a.getAttribute("href");
     if (url == "") \{
       url = document.location.toString();
     \}

     //alert("url before = " + url);

     // clear out any earlier user name/authentication values
     url = url.replace(/(&|\\\\?)uan=\\d\{0,1\}/g,"");
     url = url.replace(/(&|\\\\?)un=[a-z0-9:\\-]*/g,"");
     url = url.replace(/(&|\\\\?)pw=[a-z0-9:\\-]*/g,"");

     //alert("url after = " + url);

     var gwcgi = "_gwcgi_";

     var tailUrl = url.substr(url.length-gwcgi.length);

     url += (tailUrl == "_gwcgi_") ? "?" : "&";
     url += addOn;

     //alert("url with add on = " + url);

     a.setAttribute("href",url);
   \}
}


# imagescript only used in nav_ns4.dm
_globalscripts_{
_If_("_activateweb20_" eq "2",
  <script type="text/javascript" src="_httpscript_/gsajaxapi.js"></script>
  _If_("_activateseaweed_" eq "1",_seaweedscript_)
  _If_("_activatetalkback_" eq "1",_talkbackscript_)
)
_If_(_pagescriptfileextra_,_pagescriptfileextra_)
<script language="javascript" type="text/javascript">
_loginscript_
_If_(_pagescriptextra_,_pagescriptextra_)
_collectionspecificscript_
_imagescript_

</script>

}

_globalscripts_ [v=1] {
_If_("_activateweb20_" eq "2",
  <script type="text/javascript" src="_httpscript_/gsajaxapi.js"></script>
  _If_("_activateseaweed_" eq "1",_seaweedscript_)
  _If_("_activatetalkback_" eq "1",_talkbackscript_)
)
_If_(_pagescriptfileextra_,_pagescriptfileextra_)
<script language="javascript" type="text/javascript">
<!--
_loginscript_
_If_(_cgiargx_,_scriptdetach_)
_If_(_pagescriptextra_,_pagescriptextra_)
_collectionspecificscript_
// -->
</script>
}

_scriptdetach_ {
    function close\_detach() \{
	close();
    \}
}
