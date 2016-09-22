# this file must be UTF-8 encoded
package query


#######################################################################
# Macros whose values are set from within the server at runtime. These 
# are here only for reference and to set default values if required.           
#######################################################################


_quotedquery_ {}
_freqmsg_ {}
_stopwordsmsg_ {}
_resultline_ {}
_thisfirst_ {}
_thislast_ {}
_nextfirst_ {}
_nextlast_ {}
_prevfirst_ {}
_prevlast_ {}
_searchhistorylist_ {}
#_histvalue0_ to _histvalue19_
_advformlist_ {}
_regformlist_ {}
_sqladvformlist_ {}
_sqlregformlist_ {}
#_fqfselection_ {}


#######################################################################
# icons
#######################################################################

_queryresultsbar_ {
<div class="divbar">
<p class="navbar">_texthresults_</p>
</div>
}
_newqueryresultsbar_ {
<div class="divbar">
<p class="navbar"></p>
  <a href="#" id="compartirB">compartir esta búsqueda</a><input id="compartirBI" value="" style="display:none"/>
</div>
}
_searchhistorybar_ {
<div class="divbar">

<p class="navbar">_texticonsearchhistorybar_</p>
</div>
}


# _iconnext_ and _iconprev_ are overridden in this package as we
# don't want alt text here
_iconnext_{<img src="_httpiconmore_" width="_widthmore_" height="_heightmore_" border="0" align="top">}
_iconnext_ [v=1] {}
_iconprev_{<img src="_httpiconless_" width="_widthless_" height="_heightless_" border="0" align="top">}
_iconprev_ [v=1] {}

# the small squares for search history
## " " ## handmade ## mstds ##
_httpiconmstdsqrof_ {_httpimg_/mstdsof.gif}
_httpiconmstdsqron_ {_httpimg_/mstdson.gif}
_widthmstdsqrx_ {13}
_heightmstdsqrx_ {13}

#######################################################################
# images
#######################################################################

# _imagethispage_ set in nav_css/nav_ns4 macro files

#the buttons for the search history entries
# takes one arg - the entry number (0-num entries)
_imagehistbutton_ {<a  href="_httpquery_" onMouseover="roll('histbutton_1_',1);" onMouseOut="roll('histbutton_1_',0);" onClick="inputQuery(histvalue_1_); return false;"><img name="histbutton_1_" src="_httpiconmstdsqrof_" onLoad="gbutton(this,'_httpiconmstdsqron_');" border="0" alt="_textusequery_" title="_textusequery_"></a>}


#######################################################################
# scripts (and some macros for the scripts)
#######################################################################

_pagescriptextra_ {_If_("_cgiargqt_" ge "1", _formpagescriptextra_, _selectpagescriptextra_)
_If_("_cgiarghd_" ne "0",_historypagescriptextra_) }

_selectpagescriptextra_{_If_("_cgiargqto_" eq "2", _formpagescriptextra_,_dummypagescriptextra_)}
_dummypagescriptextra_{function initialize() \{
\} }
_formpagescriptextra_ {
// query scripts generated by \_query:pagescriptextra\_

_standardfunctions_
_formfunctions_
_searchfunctions_

function getsearchargs () \{

  var args="";
  args = "&fqa=0&fqv="+argfqv+"&fqf="+argfqf;
  _If_(_cgiargb_,
     args += "&fqk="+argfqk+"&fqs="+argfqs+"&fqc="+argfqc;
  )
  _If_("_cgiarga_" eq "sqlq",args += "&sqlfqf="+argsqlfqf + "&sqlfqc="+argsqlfqc;)

  return args;
\}



function getqueryargs () \{
  var args =  "&fqa=1"+"&q="+argq+"&fqv="+argfqv+"&fqf="+argfqf+
	 "&fqk="+argfqk+"&fqs="+argfqs+"&fqc="+argfqc;
 _If_("_cgiarga_" eq "sqlq",args += "&sqlfqf="+argsqlfqf + "&sqlfqc="+argsqlfqc;)
 return args;
\}

}

_historypagescriptextra_{

var histvalue0='_histvalue0_';
var histvalue1='_histvalue1_';
var histvalue2='_histvalue2_';
var histvalue3='_histvalue3_';
var histvalue4='_histvalue4_';
var histvalue5='_histvalue5_';
var histvalue6='_histvalue6_';
var histvalue7='_histvalue7_';
var histvalue8='_histvalue8_';
var histvalue9='_histvalue9_';
var histvalue10='_histvalue10_';
var histvalue11='_histvalue11_';
var histvalue12='_histvalue12_';
var histvalue13='_histvalue13_';
var histvalue14='_histvalue14_';
var histvalue15='_histvalue15_';
var histvalue16='_histvalue16_';
var histvalue17='_histvalue17_';
var histvalue18='_histvalue18_';
var histvalue19='_histvalue19_';

function inputQuery(value) \{
  if ("_cgiargqt_" == "0") \{ // text search
     document.QueryForm.q.value += " "+value;
     document.QueryForm.q.focus();
  \}
  else \{
     if ("_cgiargb_" == "1") \{ // advanced query
        document.QueryForm.q.value += " "+value;
	document.QueryForm.q.focus();	   
	updateq();
     \}
     else \{ // simple form search
	  // do something here, what??
     \}
  \}
\}

}

_standardfunctions_{

 function getstdargs() \{
    
    stdarg = "";
    _If_(_gselection_,_getgarg_)	
    _If_(_jselection_,_getjarg_)
    _If_(_nselection_,_getnarg_)
    _If_(_sqlsfselection_,_getsqlsfarg_)
    _If_(_sfselection_,_getsfarg_)
      
    if (document.QueryForm.t != null) \{
      value = document.QueryForm.t.options[document.QueryForm.t.selectedIndex].value;
      if (value != "_cgiargt_") stdarg += "&t="+value;
    \}
    stdarg += "&r=1&hs=1";    
    return stdarg;
  \}

}

_getgarg_{
    if (document.QueryForm.g!= null) \{
    value = document.QueryForm.g.options[document.QueryForm.g.selectedIndex].value;
    if (value != "_cgiargg_") stdarg += "&g="+value;
  \}
}

_getjarg_{
    value = document.QueryForm.j.options[document.QueryForm.j.selectedIndex].value;
    if (value != "_cgiargj_") stdarg += "&j="+value;
}

_getnarg_{
    value = document.QueryForm.n.options[document.QueryForm.n.selectedIndex].value;
    if (value != "_cgiargn_") stdarg += "&n="+value;
}

# currently only supported in lucene
_getsfarg_{
_If_("_cgiarga__cgiargct_" eq "q2",
    value = document.QueryForm.sf.options[document.QueryForm.sf.selectedIndex].value;
    if (value != "_cgiargsf_") stdarg += "&sf="+value;
)
}

# only when in sql mode
_getsqlsfarg_{
_If_("_cgiarga__cgiargqt_" eq "sqlq2",
    value = document.QueryForm.sqlsf.options[document.QueryForm.sqlsf.selectedIndex].value;
    if (value != "_cgiargsqlsf_") stdarg += "&sqlsf="+value;
)
}

_formfunctions_{

argfqf="_cgiargfqf_";	
argfqv="_cgiargfqv_";
argfqk="_cgiargfqk_";
argfqs="_cgiargfqs_";
argfqc="_cgiargfqc_";
_If_("_cgiarga_" eq "sqlq",
argsqlfqf="_cgiargsqlfqf_";	
argsqlfqc="_cgiargsqlfqc_";
)
argq = "";

function initialize () \{

   if (document.QueryForm.fqf != null) \{initfqf(); \}
   if (document.QueryForm.fqv != null) \{initfqv(); \}
   if (document.QueryForm.fqs != null) \{initfqs(); \}
   if (document.QueryForm.fqk != null) \{initfqk(); \}
   if (document.QueryForm.fqc != null) \{initfqc(); \}
_If_("_cgiarga_" eq "sqlq",
   if (document.QueryForm.sqlfqf != null) \{initsqlfqf(); \}
   if (document.QueryForm.sqlfqc != null) \{initsqlfqc(); \}
)
   if (document.QueryForm.q != null) \{initq(); \}   
\}

// makes a form submit itself when enter is pressed in a text field
function entersubmit(event) \{
	 
  if (window.event && window.event.keyCode == 13) \{
    beginSearch();
  \} else \{
     if (event && event.which == 13) \{
       beginSearch();
     \} else \{
        return true;
    \}
  \} 
\}

   
// fqf - the field selection box
function initfqf() \{
   var i;
   fqf = argfqf.split(",");
   num_opts = document.QueryForm.fqf[0].options.length; // assumes all have the same  options   
   for (i=0; i<fqf.length && i<document.QueryForm.fqf.length; i++) \{
     if (fqf[i] != "")\{			
       for (j=0;j<num_opts;j++) \{
	   if (fqf[i]== document.QueryForm.fqf[i].options[j].value) \{
	      document.QueryForm.fqf[i].options[j].selected = true;
	      break;	
	   \}
	\}
     \}
   \}
   if (fqf.length < document.QueryForm.fqf.length) \{ // initialize remaining ones
      for (i=fqf.length;i<document.QueryForm.fqf.length;i++) \{
	  var z=i;
	  while (z >= num_opts) \{
	     z = z-(num_opts);
	  \}
	  document.QueryForm.fqf[i].options[z].selected = true;
	  
      \}
   \}
   updatefqf();

\}

function updatefqf() \{

   var i;
   argfqf = "";
   var j = document.QueryForm.fqf[0].selectedIndex;
   argfqf += document.QueryForm.fqf[0].options[j].value;
   for (i=1; i<document.QueryForm.fqf.length;i++) \{
      j = document.QueryForm.fqf[i].selectedIndex;
      argfqf += "," + document.QueryForm.fqf[i].options[j].value;
   \}

\}


function clearfqf() \{
   var i;
   for (i=0;i<document.QueryForm.fqf.length;i++) \{
       var z = i;
       if (i >= document.QueryForm.fqf[i].options.length) z = z-document.QueryForm.fqf[i].options.length;
       document.QueryForm.fqf[i].options[z].selected = true;
   \}
   updatefqf();
\}

   
// sqlfqf - the field selection box
function initsqlfqf() \{
   var i;
   sqlfqf = argsqlfqf.split(",");
   num_opts = document.QueryForm.sqlfqf[0].options.length; // assumes all have the same  options   
   for (i=0; i<sqlfqf.length && i<document.QueryForm.sqlfqf.length; i++) \{
     if (sqlfqf[i] != "")\{			
       for (j=0;j<num_opts;j++) \{
	   if (sqlfqf[i]== document.QueryForm.sqlfqf[i].options[j].value) \{
	      document.QueryForm.sqlfqf[i].options[j].selected = true;
	      break;	
	   \}
	\}
     \}
   \}
   if (sqlfqf.length < document.QueryForm.sqlfqf.length) \{ // initialize remaining ones
      for (i=sqlfqf.length;i<document.QueryForm.sqlfqf.length;i++) \{
	  var z=i;
	  while (z >= num_opts) \{
	     z = z-(num_opts);
	  \}
	  document.QueryForm.sqlfqf[i].options[z].selected = true;
	  
      \}
   \}
   updatesqlfqf();

\}

function updatesqlfqf() \{

   var i;
   argsqlfqf = "";
   var j = document.QueryForm.sqlfqf[0].selectedIndex;
   argsqlfqf += document.QueryForm.sqlfqf[0].options[j].value;
   for (i=1; i<document.QueryForm.sqlfqf.length;i++) \{
      j = document.QueryForm.sqlfqf[i].selectedIndex;
      argsqlfqf += "," + document.QueryForm.sqlfqf[i].options[j].value;
   \}

\}


function clearsqlfqf() \{
   var i;
   for (i=0;i<document.QueryForm.sqlfqf.length;i++) \{
       var z = i;
       if (i >= document.QueryForm.sqlfqf[i].options.length) z = z-document.QueryForm.sqlfqf[i].options.length;
       document.QueryForm.sqlfqf[i].options[z].selected = true;
   \}
   updatesqlfqf();
\}




// fqc - the boolean operator selection box
function initfqc() \{
   var i,j;
   fqc = argfqc.split(",");
   if (_cgiargfqn_ == 2) \{ // there will only be one fqc element
       for (j=0;j<document.QueryForm.fqc.options.length;j++) \{
	   if (fqc[0] == document.QueryForm.fqc.options[j].value) \{
	      document.QueryForm.fqc.options[j].selected = true;
	      break;
	   \}
       \}   
   \}
   else \{   
   for (i=0; i<fqc.length;i++) \{
       for (j=0;j<document.QueryForm.fqc[i].options.length;j++) \{
	   if (fqc[i] == document.QueryForm.fqc[i].options[j].value) \{
	      document.QueryForm.fqc[i].options[j].selected = true;
	      break;
	   \}
       \}
   \}
   \}
   updatefqc();

\}

function updatefqc() \{
  
   var i,j;
   argfqc = "";
   if (_cgiargfqn_ == 2) \{
      j = document.QueryForm.fqc.selectedIndex;
      argfqc += document.QueryForm.fqc.options[j].value;
   \}
   else \{
	j = document.QueryForm.fqc[0].selectedIndex;
	argfqc += document.QueryForm.fqc[0].options[j].value;
	for (i=1;i<document.QueryForm.fqc.length;i++) \{
	    j = document.QueryForm.fqc[i].selectedIndex;
	    argfqc += "," + document.QueryForm.fqc[i].options[j].value;
	\}
   \}

\}


function clearfqc() \{
   
   var i;
   if (_cgiargfqn_ == 2) \{
       document.QueryForm.fqc.options[0].selected = true;
   \}
   else \{
	for (i=0; i<document.QueryForm.fqc.length; i++) \{
	    document.QueryForm.fqc[i].options[0].selected = true;
	\}
   \}
   updatefqc();
\}



// sqlfqc - the SQL operator selection box
function initsqlfqc() \{
   var i,j;
   sqlfqc = argsqlfqc.split(",");
   if (_cgiargsqlfqn_ == 2) \{ // there will only be one sqlfqc element
       for (j=0;j<document.QueryForm.sqlfqc.options.length;j++) \{
	   if (sqlfqc[0] == document.QueryForm.sqlfqc.options[j].value) \{
	      document.QueryForm.sqlfqc.options[j].selected = true;
	      break;
	   \}
       \}   
   \}
   else \{   
   for (i=0; i<sqlfqc.length;i++) \{
       for (j=0;j<document.QueryForm.sqlfqc[i].options.length;j++) \{
	   if (sqlfqc[i] == document.QueryForm.sqlfqc[i].options[j].value) \{
	      document.QueryForm.sqlfqc[i].options[j].selected = true;
	      break;
	   \}
       \}
   \}
   \}
   updatesqlfqc();

\}

function updatesqlfqc() \{
  
   var i,j;
   argsqlfqc = "";
   if (_cgiargsqlfqn_ == 2) \{
      j = document.QueryForm.sqlfqc.selectedIndex;
      argsqlfqc += document.QueryForm.sqlfqc.options[j].value;
   \}
   else \{
	j = document.QueryForm.sqlfqc[0].selectedIndex;
	argsqlfqc += document.QueryForm.sqlfqc[0].options[j].value;
	for (i=1;i<document.QueryForm.sqlfqc.length;i++) \{
	    j = document.QueryForm.sqlfqc[i].selectedIndex;
	    argsqlfqc += "," + document.QueryForm.sqlfqc[i].options[j].value;
	\}
   \}

\}


function clearsqlfqc() \{
   
   var i;
   if (_cgiargsqlfqn_ == 2) \{
       document.QueryForm.sqlfqc.options[0].selected = true;
   \}
   else \{
	for (i=0; i<document.QueryForm.sqlfqc.length; i++) \{
	    document.QueryForm.sqlfqc[i].options[0].selected = true;
	\}
   \}
   updatesqlfqc();
\}




// fqv - the query word/phrase text box       
function initfqv() \{
   var i;
   fqv= argfqv.split(",");
   for (i=0; i<fqv.length && i<document.QueryForm.fqv.length; i++) \{
       document.QueryForm.fqv[i].value = fqv[i];
   \}
   updatefqv();


\}

   //argfqv += escape(format(document.QueryForm.fqv[0].value));

function updatefqv() \{  
   var i;
   argfqv="";
   argfqv += format(document.QueryForm.fqv[0].value);
   for (i=1; i<document.QueryForm.fqv.length;i++) \{
       argfqv += ",";
       argfqv +=  format(document.QueryForm.fqv[i].value); 
   \}
\}

function clearfqv() \{
   var i;
   for (i=0; i< document.QueryForm.fqv.length;i++) \{
       document.QueryForm.fqv[i].value = "";
   \}
   updatefqv();
\}

// fqs - the stemming checkboxes
function initfqs() \{

   var i;
   fqs = argfqs.split(",");
   for (i=0; i<fqs.length; i++) \{
       if (fqs[i]=="1") \{
	  document.QueryForm.fqs[i].checked = true;
       \}
   \}
   updatefqs();

\}

function updatefqs() \{
   argfqs="";
   if (document.QueryForm.fqs[0].checked) \{
      argfqs += "1";
   \}
   else \{
      argfqs += "0";	
   \}
   var i;
   for (i=1; i<document.QueryForm.fqs.length; i++) \{
       if (document.QueryForm.fqs[i].checked) \{
	  argfqs += ",1";
	\}
	else \{
	  argfqs += ",0";
	\}
   \}
\}


function clearfqs() \{
   var i;
   for (i=0; i<document.QueryForm.fqs.length; i++) \{
       document.QueryForm.fqs[i].checked = false;
   \}
   updatefqs();
\}

// kqk - the casefolding checkboxes
function initfqk() \{
   var i;
   fqk = argfqk.split(",");
   for (i=0; i<fqk.length; i++) \{
       if (fqk[i]=="1") \{
	  document.QueryForm.fqk[i].checked = true;
       \}
   \}
   updatefqk();

\}


function updatefqk() \{
   argfqk="";
   if (document.QueryForm.fqk[0].checked) \{
      argfqk += "1";
   \}
   else \{
      argfqk += "0";	
   \}
   var i;
   for (i=1; i<document.QueryForm.fqk.length; i++) \{
       if (document.QueryForm.fqk[i].checked) \{
	  argfqk += ",1";
	\}
	else \{
	  argfqk += ",0";
	\}
   \}
\}

function clearfqk() \{
   var i;
   for (i=0; i<document.QueryForm.fqk.length; i++) \{
       document.QueryForm.fqk[i].checked = false;
   \}
   updatefqk();
\}

// q - the advanced query box
function initq() \{
   updateq();
\}

function updateq() \{
  
   argq = "";   
   _If_("_cgiarga_" eq "sqlq",argq += format(document.QueryForm.q.value, 1);)
   _If_("_cgiarga_" eq "q",argq += format(document.QueryForm.q.value);)
\}

function clearq() \{
   document.QueryForm.q.value="";
   updateq();
\}

// convert spaces to plus
// also convert other illegal characters to %xx codes
// This routine used to treat commas like spaces (replacing them with a plus), 
// but this is no longer good enough for handling sql-queries.
// Now if keepcommas == 1, URL encode commas, else (if undefined or 0),
// convert commas to plus.
function format(string, keepcommas) \{
   var str = "" + string;
   var out = "", flag = 0;
   var ch = "";
   var j;
   for (j = 0; j < str.length; j++) \{   
       ch=str.charAt(j);
	   
	   if(ch == ",") \{
		if(keepcommas == 1) \{
		    out += escape(ch);
		    flag=0;
		    continue;
		\}	       
		else \{ // can be undefined or maybe 0?
			if (flag == 0) \{     
		      out += "+";
		      flag=1;
			 \}
		\}
		continue;
	   \}
	   
       if (ch == " ") \{
           if (flag == 0) \{     
	      out += "+";
	      flag=1;
	    \}
	    continue;
	\}
	if (ch == ";" || ch == ":" || ch == "/" || ch == "?" ||
            ch == "@" || ch == "&" || ch == "=" || ch == "#" ||
	    ch == "%") \{
	    out += escape(ch);
	    flag=0;
	    continue;
	 \}	      
	out += str.charAt(j);
	flag=0;
   \}
   return out;
\}

}

#_httpquery_ has a=q&e=compressedargs
#if adv form, need to set k=0 and s=0
_advformargs_{_If_(_cgiargb_,&k=0&s=0)}

_searchfunctions_ {

function beginSearch() \{
  window.location="_httpquery_"+getstdargs()+"_advformargs_"+getsearchargs();
\}

function runQuery() \{
  window.location="_httpquery_"+getstdargs()+"_advformargs_"+getqueryargs();
\}

function clearForm() \{
_If_("_cgiarga_" eq "sqlq",
   clearsqlfqf(), clearfqf();
)
   clearfqv();

   if ("_cgiargb_" == "1") \{
      if (document.QueryForm.fqk != null) \{clearfqk();\}
      if (document.QueryForm.fqs != null) \{clearfqs();\}
      if (document.QueryForm.fqc != null) \{clearfqc();\}
_If_("_cgiarga_" eq "sqlq",
      clearsqlfqc();
)
	if (document.QueryForm.q != null) \{clearq(); \}   
   \}

\}

}

#######################################################################
# headers
# these are overridden so we can put an onLoad event handler
# in the <body> tag of this page - for mgpp, form search pages
#######################################################################

#copied from prefs 

_header_ {_cgihead_
_htmlhead_(class="bgimage" onLoad="initialize();")_startspacer__pagebanner_
}

# this declaration ends up being the same as style=restrict, never mind
_header_[v=1] {_cgihead_
_htmlhead_(onLoad="initialize();")_pagebanner_
}

#######################################################################
# page content
#######################################################################


_pagetitle_ {_If_(_cgiargq_,_textquerytitle_,_textnoquerytitle_)}


_content_ {


_optnavigationbar_

<div class="document">
_If_("_cgiargqt_" eq "1",<div>,<div class="queryform1">)

_If_("_cgiarga_" eq "sqlq",

  _If_("_cgiargqt_" eq "2",_sqlfieldqueryform_,_sqlqueryform_)
, 
  _If_(_cgiargct_,_selectqueryform_,_queryform_)
)

</div>

_If_(_searchhistorylist_,<center>_searchhistorybar_</center><br><center>_searchhistorylist_</center>)
_If_(_cgiargq_,
  <div id="resultinfo">
	_newqueryresultsbar_
		<small>   _freqmsg_    _textpostprocess_ _If_(_stopwordsmsg_,(_stopwordsmsg_)) </small>
		<br />_resultline_ </div>, 
  <div class="resultinfo"><div class="divbar">&nbsp;</div></div>)

}

_selectqueryform_{_clearpage_}



_queryform_ {
<!-- query form (\_query:plainqueryform\_) -->
<div class="marcoBuscadorTop">
<form id="basicQuery" name="QueryForm" method="get" action="_gwcgi_">
<input type="hidden" value="q" name="a">
<input type="hidden" value="1" name="r">
<input type="hidden" value="1" name="hs">
<input type="hidden" name="css" value="1">
<input type="hidden" name="c" value="all">
<label>Buscar </label>
<select name="t">
<option selected="" value="0">todos</option>
<option value="1">algunos de
</option></select>

<label>los términos</label>
<input type="text" name="q" value="_cgiargq_" size="60">
<label>en</label>
<select name="fqf">
<option selected="" value="ZZ">todos los campos
</option><option value="TX">Texto completo
</option><option value="DC">Personas
</option><option value="DT">Título
</option><option value="DS">Palabras claves
</option><option value="MA">Area FaHCE
</option></select>

<p>O limite los resultados selecionando las colecciones disponibles</p>


<table cellspacing="0" cellpadding="0" class="contenedorFormulario">
  <tbody><tr class="dark">
    <td><input type="checkbox" onclick="setChecked(new Array('arti','conv','event','libros','norm','plan','prog','proy','tes','extension'))">
      <label>Todas las colecciones</label></td>
    <td><input type="checkbox" value="arti" id="arti" name="cc">
      <label>Artículos de revistas</label></td>
    <td><label>Tipo de contenido: </label>
     <select name="j">
<option selected="" value="fu">Recursos digitales full-text
</option><option value="me">toda la colección
</option></select></td>
  </tr>
    <tr>
    <td><input type="checkbox" value="convenio" id="conv" name="cc">
      <label>Convenios</label></td>
    <td><input type="checkbox" value="eventos" id="event" name="cc">
      <label>Eventos</label></td>
    <td>&nbsp;</td>
  </tr>
  <tr class="dark">
    <td><input type="checkbox" value="libros" id="libros" name="cc">
      <label>Libros y capítulos de libros</label></td>
    <td><input type="checkbox" value="norma" name="cc" id="norm">
      <label>Normativa</label></td>
    <td><label>Ordenado por: </label>
      <select name="sf">
<option selected="" value="">rango de relevancia
</option><option value="byDC">Personas/Instituciones
</option><option value="byDT">Título
</option><option value="byDS">Palabras claves
</option><option value="byMA">Area FaHCE
</option></select></td>
  </tr>
  <tr>
    <td><input type="checkbox" value="planes" name="cc" id="plan">
      <label>Planes de estudio</label></td>
    <td><input type="checkbox" value="progra" name="cc" id="prog">
      <label>Programas</label></td>
    <td>&nbsp;</td>
  </tr>
  <tr class="dark">
    <td><input type="checkbox" value="proyecto" name="cc" id="proy">
      <label>Proyectos de investigación</label></td>
    <td><input type="checkbox" value="tesis" name="cc" id="tes">
      <label>Tesis de grado y posgrado</label></td>
    <td class="enviar"><input type="submit" value="Buscar"></td>
  </tr>
</tbody></table>


<!-- end of query form -->

</form>
</div>
}


_sqlqueryform_ {

<!-- simple query box that requires you to type SQL where clause directly -->
<!-- sqlquery form (\_query:plainqueryform\_) -->
<form id="basicQuery" name="QueryForm" method="get" action="_gwcgi_">
<p>
<input type="hidden" name="a" value="sqlq">
<input type="hidden" name="r" value="1">
<input type="hidden" name="hs" value="1">
<input type="hidden" name="e" value="_decodedcompressedoptions_">
_sqlqueryformcontent_
</p>
</form>
<!-- end of sqlquery form -->
}


_ifeellucky_ { <br><input type="checkbox" name="ifl" value="1">_textifeellucky_ }
_useifeellucky_ { }  # Set this to _ifeellucky_ if you want this functionality available

_allowformbreak_{</span>  <span class="textselect">}

_queryformcontent_{
<span class="textselect">
_textselect_
</span>

<span class="querybox">
_If_(_cgiargqb_,_largequerybox_,_smallquerybox_)
_useifeellucky_
</span>
}


_sqlqueryformcontent_ {
<span class="querybox">
_If_(_cgiargqb_,_query:largequerybox_,_query:smallquerybox_)
_query:useifeellucky_
</span>
}

# Automatically set by receptionist if config file switches
# date searching on
_optdatesearch_ { } 


_datesearch_
{<table><tr><td>
	<center>
_textstartdate_
<input type="text" name="ds" value="_cgiargds_" size="4" maxlength="4">
<select name="dsbc" value="_cgiargdsbc_" size="1">
	<option value="0"_If_(_cgiargdsbc_,, selected)>_textad_
	<option value="1"_If_(_cgiargdsbc_, selected)>_textbc_
</select> 
_textenddate_
<input type="text" name="de" value="_cgiargde_" size="4" maxlength="4"> 
<select name="debc" size="1">
	<option value="0" _If_(_cgiargdebc_,, selected)>_textad_
	<option value="1" _If_(_cgiargdebc_, selected)>_textbc_
</select> 
</center>	  
</td></tr>
<tr><td>
_textexplaineras_
</td></tr>
</table>
</center>
}

_smallquerybox_ {<nobr><input type="text" name="q" value="_cgiargq_" size="50">&nbsp;<input type="submit" value="_textbeginsearch_"></nobr>}

_largequerybox_ {
<tr><td><textarea name="q" cols="63" rows="10">
_cgiargq_
</textarea></td></tr>
<tr align="right"><td><table>
<tr><td><input type="submit" value="_textbeginsearch_"></td>
</tr></table></td></tr>}







_newfieldqueryform_ {
<div class="portletStaticText portlet-static-buscar">

<noscript>
<p><b>_textnojsformwarning_</b></p>
</noscript>
<div id="queryBox" class="queryform">
<div id="qBar"><span>Busqueda Avanzada</span><div class="clr"></div></div>
<form id="QueryForm" name="QueryForm" method="get" action="_gwcgi_">
	<input value="1" name="qt" type="hidden">
	<input value="q" name="a" type="hidden">
	<input value="1" name="r" type="hidden">
	<input value="1" name="hs" type="hidden">
	<input name="c" value="all" type="hidden">
	<input name="t" value="0" type="hidden">

	_newSimpleforms_

</form>

</div>
</div>
}
_clearpage_{}

_fieldqueryform_ {
<noscript>
<p><b>_textnojsformwarning_</b></p>
</noscript>
<!-- field query form (\_query:fieldqueryform\_) -->
<form id="basicQuery"  name="QueryForm" method="get" action="_gwcgi_">

<table><tr><td align="left">

_textformselect_
</td></tr>
<tr><td>
_If_(_cgiargb_,_advancedforms_,_simpleforms_)
</td></tr>
</table>
_If_(_cgiargb_,<div class="divbar">&nbsp;</div>
_advancedformextra_)

</form>
<!-- end of query form -->
}




_sqlfieldqueryform_ {
<noscript>
<p><b>_textnojsformwarning_</b></p>
</noscript>
<!--sql  field query form (\_query:fieldqueryform\_) -->
<form id="basicQuery"  name="QueryForm" method="get" action="_gwcgi_">

<table><tr><td align="left">
_textformselect_
</td></tr>
<tr><td>
_If_(_cgiargb_,_sqladvancedforms_,_sqlsimpleforms_)
</td></tr>
</table>
_If_(_cgiargb_,<div class="divbar">&nbsp;</div>
_advancedformextra_)

</form>
<!-- end of sql query form -->
}

_newAdvancedforms_{
_If_("_cgiargct_" eq "1",<p>_textfoldstem_</p>)_textinfield_
_advformlist_/////////////////////
<input type="button" value="_textclearform_" onClick="clearForm();">
<input type="button" value="_textbeginsearch_" onClick="beginSearch();">
}











_advancedforms_{
<table border="0" cellspacing="0" cellpadding="0" width="90%">
<tr><th></th><th align="left">_textwordphrase_</th>_If_("_cgiargct_" eq "1",<th colspan="2"><nobr>_textfoldstem_</nobr></th>)<th align="center">&nbsp;&nbsp;_textinfield_</th></tr>	
_advformlist_
<tr>
<td colspan="2" align="left"><input type="button" value="_textclearform_" onClick="clearForm();"></td>
<td colspan="3" align="right"><input type="button" value="_textbeginsearch_" onClick="beginSearch();"></td>
</tr>
</table>
}

_sqladvancedforms_{
<table border="0" cellspacing="0" cellpadding="0" width="90%">
  <tr>
    <th></th>
    <th align="left">_textfieldphrase_</th>
    <th></th>
    <th align="center">&nbsp;&nbsp;_textinwords_</th>
  </tr>	
    _sqladvformlist_
  <tr>
    <td colspan="2" align="left">
      <input type="button" value="_textclearform_" onClick="clearForm();">
    </td>
    <td colspan="3" align="right">
      <input type="button" value="_textbeginsearch_" onClick="beginSearch();">
    </td>
  </tr>
</table>
}

_newAdvancedformextra_{
	<h1>AdvancedExtra</h1>
}

_advancedformextra_{
<table>
<tr><td align="left">_textadvquery_</td></tr>
<tr><td><textarea name="q" cols="57" rows="3" onChange="updateq();">_cgiargq_</textarea></td>
<td valign="bottom">
<input type="button" value="_textrunquery_" onClick="runQuery();"></td></tr>
</table>


_If_("_cgiarga_" eq "sqlq",
<p>For example:<br>
<i>
  element in (\'dc.Keywords\') AND value=\'Farming\'<br>
  element in (\'dls.Title\') AND value LIKE \'F%\'<br>
  element in (\'dls.Title\') AND value<\'F%\'<br>
</i>
)

}

_newSimpleforms_{

	<div id="campoLimpio"></div>
	<div id="hitBox">
	<div class="generaCampos" id="generaCampos">
		<div class="termF" id="t0">
			<input class="fqv" type="text" name="fqv" value="Escriba el término" >
			<span class="hackFQF">_fqfselection_</span><span class="btn_borra" style="display:none"><img src="web/images/menos_term.gif" alt="Remover"/></span>
		</div>
		<div class="termF" id="t1"  style="display:none">
			<input class="fqv" type="text" name="fqv" value="" >
			<span class="hackFQF">_fqfselection_</span><span class="btn_borra"><img src="web/images/menos_term.gif" alt="Remover"/></span>
		</div>
		<div class="termF" id="t2"  style="display:none">
			<input class="fqv" type="text" name="fqv" value="" >
			<span class="hackFQF">_fqfselection_</span><span class="btn_borra"><img src="web/images/menos_term.gif" alt="Remover"/></span>
		</div>
		<div class="termF" id="t3"  style="display:none">
			<input class="fqv" type="text" name="fqv" value="" >
			<span class="hackFQF">_fqfselection_</span><span class="btn_borra"><img src="web/images/menos_term.gif" alt="Remover"/></span>
		</div>
                <span class="btn_nuevo" ><a href="#" id="agregaT" onClick="generaTermino()"><img src="web/images/mas_term.gif" alt="Nuevo término"/> nuevo termino</a></span>	
	</div>


	<div class="seccion">
		<label>En colecciones</label>
		<select class="swCol"><option selected="" value="CC">Todas</option>
			<option value="N" >Seleccionadas</option></select>
			<div class="coleccionesElegidas">			
		</div>
		<div class="clr"></div>
	</div>
	<div class="seccion">
		<label title="Limitar la búsqueda a los documentos full-text">
		  <input onclick="toggleCheckbox(this)" name="j" id="j" type="checkbox">Sólo texto completo
		</label>
	</div>
	<div class="clr"></div>
	</div>
	<div class="seccion botSnd">
	<input id="btn_buscar" type="button" value="_textbeginsearch_" onClick="buscar();">
	</div> 
	<script src="_httpscript_/avanzada.js"></script> 
}

_simpleforms_{
<table border="0" cellspacing="0" cellpadding="0" width="90%">
<tr><th align="left">_textwordphrase_</th><th align="left">&nbsp;&nbsp;_textinfield_</th></tr>	
_regformlist_
<tr>
<td align="left"><input type="button" value="_textclearform_" onClick="clearForm();"></td>
<td align="right"><input type="button" value="_textbeginsearch_" onClick="beginSearch();"></td>
</tr>
</table>}

_sqlsimpleforms_{
<table border="0" cellspacing="0" cellpadding="0" width="90%">
  <tr>
    <th align="left">_textfieldphrase_</th>
    <th></th>
    <th align="left">&nbsp;&nbsp;_textinwords_</th>
  </tr>	
    _sqlregformlist_
  <tr>
    <td align="left">
      <input type="button" value="_textclearform_" onClick="clearForm();">
    </td>
    <td align="right">
      <input type="button" value="_textbeginsearch_" onClick="beginSearch();">
    </td>
  </tr>
</table>
}

#
# Full-text versions
#

_regformelement_{
<tr><td><input type="text" size="39" name="fqv" onChange="updatefqv();" onkeypress="updatefqv(); entersubmit(event);"></td>
<td>_fqfselection_</td></tr>}

#has no and/or/not selection box
_firstadvformelement_{
<tr><td></td><td><input type="text" size="31" name="fqv" onChange="updatefqv();" onkeypress="updatefqv(); entersubmit(event);"></td>
_If_("_cgiargct_" eq "1",<td align="center"><input type="checkbox" name="fqk" onClick="updatefqk();"></td>
<td align="center"><input type="checkbox" name="fqs" onClick="updatefqs();"></td>)
<td align="right">_fqfselection_</td></tr>}

_advformelement_{
<tr><td>_fqcselection_</td>
<td><input type="text" size="31" name="fqv" onChange="updatefqv();" onkeypress="updatefqv(); entersubmit(event);"></td>
_If_("_cgiargct_" eq "1",<td align="center"><input type="checkbox" name="fqk" onClick="updatefqk();"></td>
<td align="center"><input type="checkbox" name="fqs" onClick="updatefqs();"></td>)
<td align="right">_fqfselection_</td></tr>}



_fqcselection_ {
<select name="fqc" onChange="updatefqc();">
<option value="and">_textand_
<option value="or">_textor_
<option value="not">_textandnot_
</select>}


_andorfqcselection_ {
<select name="fqc" onChange="updatefqc();">
<option value="and">_textand_
<option value="or">_textor_
</select>}


#
# SQL versions of regformelement, firstsqladvformelement, advformelement
#

_sqlregformelement_{
<tr>
  <td>
    _sqlfqfselection_
  </td>
  <td>
    _sqlfqcselection_
  </td>
  <td>
    <input type="text" size="39" name="fqv" onChange="updatefqv();" 
           onkeypress="updatefqv(); entersubmit(event);">
  </td>
</tr>
}

_firstsqladvformelement_{
<tr>
  <td>
  </td>
  <td align="right">
    _sqlfqfselection_
  </td>
  <td>
    _sqlfqcselection_
  </td>
  <td>
    <input type="text" size="31" name="fqv" onChange="updatefqv();" 
           onkeypress="updatefqv(); entersubmit(event);">
  </td>
</tr>
}

_sqladvformelement_{
<tr>
  <td>
    _andorfqcselection_
  </td>
  <td align="right">
    _sqlfqfselection_
  </td>
  <td>
    _sqlfqcselection_
  </td>
  <td>
    <input type="text" size="31" name="fqv" onChange="updatefqv();" onkeypress="updatefqv(); entersubmit(event);">
  </td>
</tr>
}


_sqlfqcselection_ {
<select name="sqlfqc" onChange="updatesqlfqc();">
  <option value="=">matches
  <option value="&lt;">&lt; 
  <option value="&lt;=">&lt;= 
  <option value="LIKE">like
  <option value="&gt;=">&gt;= 
  <option value="&gt;">&gt;
  <option value="&lt;&gt;">&lt;&gt;

</select>}

#
# end of SQL version
#

_textselect_ {_If_(_cgiargb_,_chooseadvancedsearch_,_choosesimplesearch_)}

_choosesimplesearch_ {_If_("_cgiargqt_" eq "2",_textsimplesqlsearch_,_textsimplesearch_)}

_chooseadvancedsearch_ {_If_("_cgiarqt_" eq "2",_textadvancedsqlsearch_,_chooseadvancedsearchct_)}
_chooseadvancedsearchct_ {_If_(_cgiargct_,_If_("_cgiargct_" eq "2",_textadvancedlucenesearch_,_textadvancedmgppsearch_),_textadvancedsearch_}

# formed based versions
_textformselect_ {_If_(_cgiargb_,_chooseformadvancedsearch_,_chooseformsimplesearch_)}
_chooseformsimplesearch_ {_If_("_cgiargqt_" eq "2",_textformsimplesearchsql_,_textformsimplesearch_)}

_chooseformadvancedsearch_ {_If_("_cgiargqt_" eq "2",_textformadvancedsearchsql_,_chooseformadvancedsearchct_)}
_chooseformadvancedsearchct_ {_If_("_cgiargct_" eq "1",_textformadvancedsearchmgpp_)_If_("_cgiargct_" eq "2",_textformadvancedsearchlucene_)}

# mg uses hselection for index, mgpp uses fqfselection 
_indexselection_{_If_(_cgiargct_,_fqfselection_,_hselection_)}

# we want to put the links to previous/next pages of results
# in the footer
_pagefooterextra_ {
<center>
<table cellspacing="0" cellpadding="0" width="_pagewidth_">
<tr>
<td align="left">_If_(_prevfirst_,<a href="_httpquery_&amp;r=_prevfirst_">_iconprev__textmatches__prevfirst_ - _prevlast_</a>)</td>
<td align="right">_If_(_nextfirst_,<a href="_httpquery_&amp;r=_nextfirst_">_textmatches__nextfirst_ - _nextlast__iconnext_</a>)</td>
</tr></table>
</center>

</div> <!-- document -->
}

_querytypeselection_ {
<select name="t">
<option value="1"_If_(_cgiargt_, selected)>_If_(_cgiargb_,_textranked_,_textsome_)
<option value="0"_If_(_cgiargt_,, selected)>_If_(_cgiargb_,_textboolean_,_textall_)
</select>
}


_formquerytypesimpleselection_ {
<select name="t">
<option value="1"_If_(_cgiargt_, selected)>_textsome_
<option value="0"_If_(_cgiargt_,, selected)>_textall_
</select>
}

_formquerytypeadvancedselection_ {
<select name="t">
<option value="1"_If_(_cgiargt_, selected)>_textranked_
<option value="0"_If_(_cgiargt_,, selected)>_textnatural_
</select>
}

# this one is not used by english.dm any more. But I have added it back for the other languages that haven't updated the translations for their form search  macros.
_formquerytypeselection_ {
<select name="t">
<option value="1"_If_(_cgiargt_, selected)>_If_(_cgiargb_,_textranked_,_textsome_)
<option value="0"_If_(_cgiargt_,, selected)>_If_(_cgiargb_,_textnatural_,_textall_)
</select>
}

