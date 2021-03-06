# this file must be UTF-8 encoded

package document

#######################################################################
# macros set from within the server
#######################################################################

_imagethispage_ {}
_httpprevarrow_ {}
_httpnextarrow_ {}
_pagetitle_ {}
_phindclassifier_ {}
_collageclassifier_ {}

# custom header for individual document
_documentheader_ {}

#custom css links for individual document
_csslink_{
   <link rel="stylesheet" href="_cssfilelink_" type="text/css"
    charset="UTF-8"   _linktagend_
  <link rel="alternate stylesheet" href="_httpstyle_/preview-document.css"
    type="text/css"
    title="Preview Document" charset="UTF-8" media="screen"  _linktagend_
   <link rel="stylesheet" href="_httpstyle_/print-document.css" type="text/css"
    charset="UTF-8" media="print"  _linktagend_
  <link rel="oaipmh" type="application/xml"  title="OAI BASEURL" href="http://www.memoria.fahce.unlp.edu.ar/oaiserver.cgi" />
  <link rel="icon" type="image/png" href="http://www.memoria.fahce.unlp.edu.ar/memoria/favicon.ico" />
}


#######################################################################
# page content
#######################################################################

_tocopen_ {<div class="top" _tocopenextra_>}
_tocclose_ {</div>}

_nextsearchresult_ {_If_("_cgiargsrn_" ne "0",<li id="nextresult"><a href="_httpquery_&amp;ifl=1&amp;ifln=_cgiargsrn_">_textnextsearchresult_</a></li>)}

_prevsearchresult_ {_If_("_cgiargsrp_" ne "0",<li id="prevresult"><a href="_httpquery_&amp;ifl=1&amp;ifln=_cgiargsrp_">_textprevsearchresult_</a></li>)}

_content_ {

_optnavigationbar_


_If_(_phindclassifier__collageclassifier_,
<p style="text-align: center;">
_phindclassifier_
_collageclassifier_
</p>
)

_If_("_cgiargcl_" eq "search",
<ul id="searchresults">
_prevsearchresult_
_nextsearchresult_
</ul>)

<div class="document">
<div id="resultinfo"></div>
}

# Dublin Core Metadata Element Set, Version 1.1
_textTitlepage_ {_texticonhtitle_}
_textCreatorpage_ {_texticonhcreat_}
_textSubjectpage_ {_texticonhsubj_}
_textDescriptionpage_ {_texticonhdesc_}
_textPublisherpage_ {_texticonhpubl_}
_textContributorpage_ {_texticonhcontr_}
_textDatepage_ {_texticonhdate_}
_textTypepage_ {_texticonhtype_}
_textFormatpage_ {_texticonhform_}
_textIdentifierpage_ {_texticonhident_}
_textSourcepage_ {_texticonhsrc_}
_textLanguagepage_ {_texticonhlang_}
_textRelationpage_ {_texticonhrel_}
_textCoveragepage_ {_texticonhcover_}
_textRightspage_ {_texticonhright_}

_textTopage_ {_texticonhto_}
_textFrompage_ {_texticonhfrom_}
_textSeriespage_ {_texticonhser_}
_textHowtopage_ {_texticonhhow_}
_textOrganizationpage_ {_texticonhorg_}
_textBrowsepage_ {_texticonhbrwse_}
_textCollagepage_ {_texticonhcoll_}
_textPeoplepage_ {_texticonhpeople_}
_textAcronympage_ {_texticonhacronym_}
_textPhrasepage_ {_texticonhphrases_}
_textArtistpage_ {_texticonhartist_}
_textKeywordpage_ {_texticonhkw_}
_textVolumepage_ {_texticonhvol_}
_textCaptionspage_ {_texticonhcapt_}
_textCountriespage_ {_texticonhcount_}

#######################################################################
# navigation arrows
#
#######################################################################

# these two may be reset to "" by the server
_navarrowsbottom_ {_navarrows_}
_navarrowstop_ {_navarrows_}

_navarrows_ {<center>
<table width=_pagewidth_ cellpadding=0 cellspacing=0 border=0>
<tr><td align=left valign=top>
_prevarrow_
</td><td align=right valign=top>
_nextarrow_
</td></tr></table>
</center>
}

_prevarrow_ {_If_(_httpprevarrow_,<a href="_httpprevarrow_">_iconprev_</a>)}
_nextarrow_ {_If_(_httpnextarrow_,<a href="_httpnextarrow_">_iconnext_</a>)}

_navarrows_ [v=1] {<p>
_prevarrow_<br>
_nextarrow_
}

#######################################################################
# the goto form
#######################################################################

_gotoform_ {
<form name="GotoForm" method="get" action="_gwcgi_">
<input type=hidden name="e" value="_decodedcompressedoptions_">
<input type=hidden name="d" value="_cgiargd_">
<input type=hidden name="cl" value="_cgiargcl_">
<input type="text" name="gp" size="3" maxlength="4">
<input type="submit" value="_textgoto_">
</form>
}

_textnumpages_ {&nbsp;<i>(_1_ _pages_)</i>}
_parentarrow_ {}
_prevtitle_ {}
_nexttitle_ {}

#######################################################################
# the phind applet
#
# The phind applet is only required on phind classifier pages.
# Consequently, the _phindclassifier_ macro is not usually set.  On screens
# where it is required, _phindclassifier_ resolves to _phindapplet_, and
# the following macro is loaded into the web page.
#######################################################################

_phindapplet_ {
<APPLET CODEBASE="_httpjava_" CODE="org.nzdl.gsdl.Phind.Phind.class" ARCHIVE="Phind.jar" WIDTH=500 HEIGHT=400>
  <PARAM NAME=library      VALUE="_gwcgi_?e=_compressedoptions_">
  <PARAM NAME=phindcgi     VALUE="_gwcgi_?a=phind">
  <PARAM NAME=collection   VALUE="_cgiargc_">
  <PARAM NAME=classifier   VALUE="_phindnumber_">

  <PARAM NAME=orientation  VALUE="vertical">
  <PARAM NAME=depth        VALUE="2">
  <PARAM NAME=resultorder VALUE="L,l,E,e,D,d">
  <PARAM NAME=textorientation VALUE="_textorientation_">
  <PARAM NAME=backdrop     VALUE="_httpimg_/phindbg1.jpg">
  <PARAM NAME=fontsize     VALUE="10">
  <PARAM NAME=blocksize    VALUE="10">

  The Phind java applet.
</APPLET>
}

_collageapplet_ {
 <applet CODEBASE="_httpjava_"
     code="org.nzdl.gsdl.GsdlCollageApplet.GsdlCollageApplet.class"
     archive="GsdlCollageApplet.jar"
     width="_collagexdim_" height="_collageydim_">

        <param name="gwcgi" value="_gwcgi_">
        <param name="collection" value="_cgiargc_">
        <param name="classifier" value="_cgiargcl_.1">

        <param name="hrefMustHave" value="cl=_cgiargcl_.1">
        <param name="imageMustNotHave" value="hl=\%x=\%gt=\%gc=\%.pr">

        <param name="imageType" value="_collageimageType_">
        <param name="verbosity" value="_collageverbosity_">
        <param name="maxDepth" value="_collagemaxDepth_">
        <param name="maxDisplay" value="_collagemaxDisplay_">
        <param name="refreshDelay" value="_collagerefreshDelay_">
        <param name="isJava2" value="_collageisJava2_">
        <param name="bgcolor" value="_collagebgcolor_">
        <param name="documentroot" value="_httpimg_">
 </applet>

<center>
_collagecaption_
</center>
}


_flashbook_ {
 <div id="bookdiv">
 </div>

 <script type="text/javascript">
 var myWidth = "100%";
 myHeight = 800;

 var img_cover = '_httpassocdir_/_thisOID_/cover.jpg';
 var doc_url = document.URL;
 doc_url = doc_url.replace(/(&|\\?)book=[a-z]+/gi,'');
 doc_url += '&book=flashxml';

 var isWin = (navigator.appVersion.toLowerCase().indexOf("win") != -1) ? true : false;//get windows or not
 //Only for Windows computers because Greenstone webserver doesn't allow us to pass parameters to Flash.
 //These methods is called by the Flash program to get all the necessary parameters for the book
 //However, it will only work for IE 5.0 and later, Firefox 1.0 and later, Mozilla 1.7.5 and later
 //Netscape 8.0 and later, Safari 1.3 and later
 function getDocURL() \{ return doc_url; \}
 function getImgCover() \{ return img_cover; \}
 function getStageW() \{ return -1; \}
 function getStageH() \{ return -1; \}


 var flash_plug_html = "";
 flash_plug_html += '<OBJECT align="middle" classid="clsid:d27cdb6e-ae6d-11cf-96b8-444553540000" \\n';
 flash_plug_html += '  codebase="http://fpdownload.macromedia.com/pub/shockwave/cabs/flash/swflash.cab#version=8,0,0,0" \\n';
 flash_plug_html += '  height="';
 flash_plug_html += myHeight + '" id="Book" swLiveConnect="true" align="middle"\\n';
 flash_plug_html += '  width="';
 flash_plug_html += myWidth + '">\\n';

 flash_plug_html += '    <PARAM name="allowScriptAccess" value="always" />\\n';
 flash_plug_html += '    <PARAM name="movie" value="_httpflash_/Book.swf';
 if (isWin == false)
 \{
    flash_plug_html += '?src_image=' + escape(img_cover);
    flash_plug_html += '&amp;doc_url=' + escape(doc_url);
 \}
 flash_plug_html += '" />\\n';
 flash_plug_html += '    <PARAM name="quality" value="high" />\\n';
 flash_plug_html += '    <PARAM name="bgcolor" value="#FFFFFF" />\\n';
 flash_plug_html += '    <EMBED align="middle" \\n';
 flash_plug_html += '      allowScriptAccess="always" swLiveConnect="true" \\n';
 flash_plug_html += '      bgcolor="#FFFFFF" height="';
 flash_plug_html += myHeight + '" name="Book" \\n';
 flash_plug_html += '      pluginspage="http://www.macromedia.com/go/getflashplayer" \\n';
 flash_plug_html += '      quality="high" \\n';
 flash_plug_html += '      src=\\'_httpflash_/Book.swf';
 if (isWin == false)
 \{
    flash_plug_html += '?src_image=' + escape(img_cover);
    flash_plug_html += '&amp;doc_url=' + escape(doc_url);
 \}
 flash_plug_html += '\\'\\n';
 flash_plug_html += '      type="application/x-shockwave-flash" width="';
 flash_plug_html += myWidth + '" />\\n';
 flash_plug_html += '</OBJECT>\\n';

 var flash_div = document.getElementById("bookdiv");
 flash_div.innerHTML = flash_plug_html;
 </script>
}

#######################################################################
# icons
#######################################################################

_iconsmalltext_ {<img src="_httpiconsmtext_" class="icon" width=_widthsmtext_ height=_heightsmtext_ alt="_texticonsmalltext_" title="_texticonsmalltext_">}
_iconsmalltext_ [v=1] {<small><b>_texticonsmalltext2_</b></small>}

_iconarrowsmalltext_ {<img src="_httpiconasmtext_" class="icon" width=_widthasmtext_ height=_heightasmtext_ alt="_texticonsmalltext_" title="_texticonsmalltext_">}
_iconarrowsmalltext_ [v=1] {<small><b>->_texticonsmalltext2_</b></small>}

_iconclosedfolder_ {<img src="_httpiconclsdfldr_" class="icon" width=_widthclsdfldr_ height=_heightclsdfldr_ alt="_texticonclosedfolder_" title="_texticonclosedfolder_">}
_iconclosedfolder_ [v=1] {<small><b>_texticonclosedfolder2_</b></small>}

_iconarrowclosedfolder_ {<img src=_httpiconaclsdfdr_" class="icon" width=_widthaclsdfdr_ height=_heightaclsdfdr_ alt="_texticonclosedfolder_" title="_texticonclosedfolder_">}
_iconarrowclosedfolder_ [v=1] {<small><b>->_texticonclosedfolder2_</b></small>}

_iconopenfolder_ {<img src="_httpiconopenfldr_" class="icon" width=_widthopenfldr_ height=_heightopenfldr_ alt="_texticonopenfolder_" title="_texticonopenfolder_">}
_iconopenfolder_ [v=1] {<small><b>_texticonopenfolder2_</b></small>}

_iconarrowopenfolder_ {<img src="_httpiconaopenfdr_" class="icon" width=_widthaopenfdr_ height=_heightaopenfdr_ alt="_texticonopenfolder_" title="_texticonopenfolder_">}
_iconarrowopenfolder_ [v=1] {<small><b>->_texticonopenfolder2_</b></small>}

_iconarrowclosedbook_ {<img src="_httpiconabook_" width=_widthabook_ height=_heightabook_ class="icon" alt="_texticonclosedbook_" title="_texticonclosedbook_">}
_iconarrowclosedbook_ [v=1] {<small><b>->_texticonclosedbook_: </b></small>}

_iconopenbook_ {<img src="_httpiconopenbook_" width=_widthopenbook_ height=_heightopenbook_ class="icon" alt="_texticonopenbook_" title="_texticonopenbook_">}
_iconopenbook_ [v=1] {<small><b>_texticonopenbook_: </b></small>}

_iconarrowopenbook_ {<img src="_httpiconaopenbk_" width=_widthaopenbk_ height=_heightaopenbk_ class="icon" alt="_texticonopenbook_" title="_texticonopenbook_">}
_iconarrowopenbook_ [v=1] {<small><b>->_texticonopenbook_: </b></small>}

_iconopenbookshelf_ {<img src="_httpiconbshelf_" class="icon" width=_widthbshelf_ height=_heightbshelf_ alt="_texticonopenbookshelf_" title="_texticonopenbookshelf_">}
_iconopenbookshelf_ [v=1] {<small><b>_texticonopenbookshelf_: </b></small>}

_iconarrowopenbookshelf_ {<img src="_httpiconabshelf_" class="icon" width=_widthabshelf_ height=_heightabshelf_ alt="_texticonopenbookshelf_" title="_texticonopenbookshelf_">}
_iconarrowopenbookshelf_ [v=1] {<small><b>->_texticonopenbookshelf_: </b></small>}

_iconclosedbookshelf_ {<img src="_httpiconbshelf_" class="icon" width=_widthbshelf_ height=_heightbshelf_ alt="_texticonclosedbookshelf_" title="_texticonclosedbookshelf_">}
_iconclosedbookshelf_ [v=1] {<small><b>_texticonclosedbookshelf_: </b></small>}

_iconarrowclosedbookshelf_ {<img src="_httpiconabshelf_" class="icon" width=_widthabshelf_ height=_heightabshelf_ alt="_texticonclosedbookshelf_" title="_texticonclosedbookshelf_">}
_iconarrowclosedbookshelf_ [v=1] {<small><b>->_texticonclosedbookshelf_: </b></small>}

_iconpointer_ {<img src="_httpiconarrrght_" class="icon" width=_widtharrrght_ height=_heightarrrght_>}
_iconpointer_ [v=1] {<small><b>_texticonpointer_-> </b></small>}

_iconwarning_ {<img src="_httpiconwarning_" width="_widthwarning_" height="_heightwarning_" class="icon" align="left">}
_iconwarning_ [v=1] {_texticonwarning_}


#######################################################################
# images
#######################################################################

_coverimage_ {<img alt="Cover Image" onError="src='_httpimg_/blank.gif'" src="_httpassocdir_/_thisOID_/cover.jpg">}

_docbutton_ {<div class="button"><span class="button" title="_3_"><a href="_1_">_2_</a></span></div>
}

# can't use _docbutton_ macro for detach button as we need to include target
_imagedetach_ {<div class="button"><span class="button"><a href="_httpcurrentdocument_&amp;x=1" target="\_blank" title="_texticondetach_">_textDETACH_</a></span></div>}

_imageprint_{<div class="button"><span class="button"><a href="javascript:print_preview()">_textPRINT_</a></span></div>}


_imagehighlight_ {_docbutton_(_httpcurrentdocument_&amp;hl=1&amp;gc=_cgiarggc_&amp;gt=_cgiarggt_,_textHIGHLIGHT_,_texticonhighlight_)}
_endspacer_ {

}

_imagenohighlight_ {_docbutton_(_httpcurrentdocument_&amp;hl=0&amp;gc=_cgiarggc_&amp;gt=_cgiarggt_,_document:textNOHIGHLIGHT_,_document:texticonnohighlight_)}

_imagecontracttoc_ {_docbutton_(_httpcurrentdocument_&amp;gc=0,_textCONTRACTCONTENTS_,_texticoncontracttoc_)}

_imageexpandtoc_ {_docbutton_(_httpcurrentdocument_&amp;gc=1,_textEXPANDCONTENTS_,_texticonexpandtoc_)}

_imagecontracttext_ {_docbutton_(_httpcurrentdocument_&amp;gt=0,_textCONTRACT_,_texticoncontracttext_)}

_imageexpandtext_ {_docbutton_(_httpcurrentdocument_&amp;gt=1,_textEXPANDTEXT_,_texticonexpandtext_)}

_imagecont_ {_docbutton_(_httpcurrentdocument_&amp;gt=2,_textCONTINUE_,_texticoncont_)}


#######################################################################
# print preview script
#######################################################################


_pagescriptextra_{

 var style_display_old;
 var show = true;
 var toc_top;

function tabshow(divid) \{
    var lista = new Array("capa1","capa2","capa3");
    var elid, elidObj;

    for (elid in lista) \{
        elidObj = document.getElementById(lista[elid]);
        tabidObj = document.getElementById("tab" + lista[elid]);
        if (elidObj) \{
            elidObj.style.display = 'none';
            tabidObj.className = 'abstracttab';
        \}
        if (lista[elid] == divid) \{
            elidObj.style.display = 'block';
            tabidObj.className = 'currentabstracttab'
        \}
    \}
\}

function has_toc() \{
     var div_nodes = document.getElementsByTagName("div");
     for (var i=0;i < div_nodes.length ; i++ ) \{
          var div_node = div_nodes[i];
          if (div_node.className =="toc" && div_node.childNodes.length > 1)
             \{
                 return true;
             \}
      \}

    return false;
 \}

function my_date(epoch) \{
z = new Date();
/* epoch = seconds since 00:00:00 UTC, January 1, 1970
but setTime expects milliseconds */
z.setTime(epoch*1000);
y = z.getFullYear();
m = z.getMonth()+1;
m = m.toString(10).length < 2 ? '0'+m : m;
d = z.getDate();
d = d.toString(10).length < 2 ? '0'+d : d;
document.write(d+'-'+m+'-'+y);
\}

 function hide_toc()\{
     var div_nodes = document.getElementsByTagName("div");
     for (var i=0;i < div_nodes.length ; i++ )\{
          var div_node = div_nodes[i];
          if (div_node.className =="toc")
             \{
               style_display_old = div_node.style.display;
               toc_top = document.getElementById("toc_top");
               if (toc_top)
                div_node.parentNode.insertBefore(toc_top,div_node);
                div_node.style.display = "none";
             \};
      \}

 \}


 function show_toc()\{

     var div_nodes = document.getElementsByTagName("div");
     for (var i=0;i < div_nodes.length ; i++ )\{
          var div_node = div_nodes[i];
          if (div_node.className =="toc")
             \{
               div_node.style.display = style_display_old;
               if (toc_top)
                  div_node.insertBefore(toc_top,div_node.firstChild);
              \};
      \}

 \}


  function switch_toc()\{
     var toc_link =  document.getElementById("toc_link");
       while (toc_link.hasChildNodes()) \{
       	  toc_link.removeChild(toc_link.firstChild);
	\}
    if (show)\{
        toc_link.appendChild(document.createTextNode('_textshowcontents_'));
        show = false;
        hide_toc();
    \}
  else\{
       toc_link.appendChild(document.createTextNode('_texthidecontents_'));
      show = true;
      show_toc();
    \}

  \}

  function print_preview() \{
   // Switch the stylesheet
    setActiveStyleSheet("Preview Document");
    add_print_message();
  \}

  function add_print_message()\{
     if (document.getElementById)\{
        var print_message = document.createElement('ul');
	    print_message.id = 'print-message';
            print_message.className = "printmessage";

         var cancel_print_link = document.createElement('li');
         cancel_print_link.className = "cancelprint"
         cancel_print_link.onclick = function()\{ cancel_print(); return false;\};
         cancel_print_link.appendChild(document.createTextNode('_textreturnoriginal_'));
          print_message.appendChild(cancel_print_link);


           var print_link = document.createElement('li');
           print_link.onclick = function()\{ window.print(); return false;\};
           print_link.appendChild(document.createTextNode('_textprintpage_'));
           print_message.appendChild(print_link);

    if (has_toc())\{
	  var toc_link = document.createElement('li');
          toc_link.id = "toc_link";
          toc_link.onclick = function()\{ switch_toc(); return false;\};
          toc_link.appendChild(document.createTextNode('_texthidecontents_'));
          print_message.appendChild(toc_link);
         \}

         //insert the print message node
         var div_nodes = document.getElementsByTagName("div");
         for (var i=0;i < div_nodes.length ; i++ )\{
            var div_node = div_nodes[i];
             if (div_node.className =="document")\{
                 var parent = div_node.parentNode;
                 parent.insertBefore(print_message,div_node);
           \}
        \}
     \}

  \}


 function cancel_print() \{
	// Destroy the preview message
   var print_message = document.getElementById('print-message');
   var parent = print_message.parentNode;
   parent.removeChild(print_message);

    show_toc();
    // Switch back stylesheet
    setActiveStyleSheet("default");
  \}

 function setActiveStyleSheet(title) \{
    var i, a, main;
    for(i=0; (a = document.getElementsByTagName("link")[i]); i++) \{
      if(a.getAttribute("rel").indexOf("style") != -1
         && a.getAttribute("title")) \{
        a.disabled = true;
        if(a.getAttribute("title") == title) a.disabled = false;
    \}
   \}
  \}

	$(document).ready(function() \{
		$("#graficohd").hide();
		$("#icono").click(function()\{
			$("#graficohd").load(\"/web/estadisticas/historico_descargas_pdf.php?pdf=\"+document.getElementById("tcurl").href);
			$("#graficohd").fadeIn();
			$("#icono").hide();
			$("#cerrar").show();
		\});
		$("#cerrar").click(function()\{
			$("#graficohd").fadeOut();
			$("#icono").show();
			$("#cerrar").hide();
		\});
	\});

}


#######################################################################
# headers/footers
#######################################################################


# header overridden for text pages
_textheader_ {_cgihead_
_htmlhead_
_startspacer_
_pagebanner_
}

_textheader_ [v=1] {_cgihead_
_htmlhead_
_globallinks_
}

_footer_ {
</div> <!-- document:footer -->

_endspacer__htmlfooter_
}




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



package Global

# Social network support
# Defined here in document, as the most likely place this will be used in
# within a document view, however its package is 'Global' because you
# might equally want this in a search or browse list

# _1_ = e.g. title
# _2_ = [srclink] or left empty.  If left empty, then it will share the internal GS document

_sharemescript_ {

<script type="text/javascript">
function fullDomainURL(localURL)
\{
return window.location.protocol+'//'+window.location.host+localURL;
\}
</script>

<script type="text/javascript">
var a2a_config = a2a_config || \{ \};
a2a_config.linkname = _1_;

_If_(_2_,
var srclink = \'_2_\';

//If metadata value is a valid URL that starts with xxx://
// (e.g. any protocol\, http, https\, ftp ...) then that will be the link to share
if (srclink.match(/^[^:]+:\\\/\\\//i)) \{
a2a_config.linkurl = srclink;
\}
else \{
//if metadata value is [srclink] then we have to cut off the 'href' tag label
var href = srclink.match(/href=\"([^\"]*)\"/);
a2a_config.linkurl = fullDomainURL(href[1]);
\}
,
//if no metadata was passed as link\, then the GS version of the document will be used.
a2a_config.linkurl = fullDomainURL("_gwcgi_")+ "?c=_cgiargc_&a=d&d=_cgiargd_";
)
</script>
}

_shareme_ {

<div style=\'padding-left:50px;\' class=\'a2a_kit a2a_default_style\'>
_sharemescript_(_1_,_2_)
<center>
<a class=\'a2a_dd\' href=\'http://www.addtoany.com/share_save\'>Compartir</a>
<span class=\"a2a_divider\"></span>
<a class=\'a2a_button_facebook\'></a>
<a class=\'a2a_button_twitter\'></a>
<a class=\'a2a_button_email\'></a>
<a class=\'a2a_button_linkedin\'></a>
</center>
<script type=\"text/javascript\" src=\"http://static.addtoany.com/menu/page.js\"></script>
</div>
}

_sharemesmall_ {

<span style=\'padding-left:8px;\' class=\'a2a_kit a2a_default_style\'>
_sharemescript_(_1_,_2_)
<a class=\'a2a_dd\' href=\'http://www.addtoany.com/share_save\'><img src="_httpprefix_/web/images/mas.jpg"></a>
<script type=\"text/javascript\" src=\"http://static.addtoany.com/menu/page.js\"></script>
</span>
}
