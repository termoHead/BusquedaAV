# this file must be UTF-8 encoded
#####################################################################
#
# Kazakh Language text and icon macros 
#
######################################################################


######################################################################
# Global (base) package
package Global
######################################################################


#------------------------------------------------------------
# text macros
#------------------------------------------------------------

_textperiodicals_ [l=kk] {Баспасөз}

# these three used by the default format statement of the demo and dls collections.
_textsource_ [l=kk] {Дерек көзі:}
_textdate_ [l=kk] {Жарияланған мерзімі:}
_textnumpages_ [l=kk] {парақтың рет саны}

_textsignin_ [l=kk] {Авторландыру}

_textdefaultcontent_ [l=kk] {Керекті парақ табылған жоқ. Өзіңіздің браузерініздегі "Кейін" батырмасын басыңыз немесе кітапхананыздың бастапқы парағына оралыңыз.}

_textdefaulttitle_ [l=kk] {Гринстоун қатесі}

_textbadcollection_ [l=kk] {Бұл Жинақ ("_cvariable _" тақырыбындағы)  Гринстоун сандық кітапханасына орнатылмаған.}

_textselectpage_ [l=kk] {Қажет парақты таңдау'}

_collectionextra_ [l=kk] {Бұл Жинақ _about:numdocs_ құжат/тарын қамтиды. 
Соңғы өзгерістер _about:builddate_ күн бұрын енгізілген}

# this is only used by the collector (where the above _collectionextra_
# macro will always be set to another value)
_collectorextra_ [l=kk] {<p>Бұл Жинақ _numdocs_ If_("_numdocs_" eq "1", құжат, құжаттардан) тұрады, барлығы _numbytes_. 
<p> Жинақтың қалыптасу процесінен мағлұмат алу үшін <a href="_httppagex_(bsummary)">мұнда басыңыз <\a>.}

_textdescrcollection_ [l=kk] {}
_textdescrabout_ [l=kk] {Бағдарлама туралы}
_textdescrhome_ [l=kk] {Бастапқы парақ}
_textdescrhelp_ [l=kk] {Көмек парағы}
_textdescrpref_ [l=kk] {Икемдеу}
_textdescrgreenstone_ [l=kk] {Greenstone электрондық кітапханасы}
_textdescrusab_ [l=kk] {Пайдалану барысында Сізге не қиындық туғызды?}


# Metadata names and navigation bar labels

_textSearch_ [l=kk] {Поиск}  
_labelSearch_ [l=kk] {Іздеу}

# Dublin Core Metadata Element Set, Version 1.1
_textTitle_ [l=kk] {Наименование}  
_labelTitle_ [l=kk] {Атаулар А-Я}
_textCreator_ [l=kk] {Создатель}  
_labelCreator_ [l=kk] {Авторлар А-Я}
_textSubject_ [l=kk] {Тема}  
_labelSubject_ [l=kk] {Көрсеткіштер}
_textDescription_ [l=kk] {Описание}  
_labelDescription_ [l=kk] {Сипаттамалар}
_textPublisher_ [l=kk] {Издатель}  
_labelPublisher_ [l=kk] {Баспалар}
_textContributor_ [l=kk] {Вкладчик}  
_labelContributor_ [l=kk] {Үлес қосқандар}
_textDate_ [l=kk] {Дата}  
_labelDate_ [l=kk] {Мерзімдері}
_textType_ [l=kk] {Тип}  
_labelType_ [l=kk] {Түрлері}
_textFormat_ [l=kk] {Формат}  
_labelFormat_ [l=kk] {Форматтар}
_textIdentifier_ [l=kk] {Идентификатор}  
_labelIdentifier_ [l=kk] {Ерекше белгілері}
_textSource_ [l=kk] {Имя файла}  
_labelSource_ [l=kk] {Файл аттары}
_textLanguage_ [l=kk] {Язык}  
_labelLanguage_ [l=kk] {Тілдер}
_textRelation_ [l=kk] {Отношение}  
_labelRelation_ [l=kk] {Байланыстар}
_textCoverage_ [l=kk] {Покрытие}  
_labelCoverage_ [l=kk] {Қамтылу аясы}
_textRights_ [l=kk] {Права}  
_labelRights_ [l=kk] {Құқықтар}

# DLS metadata set
_textOrganization_ [l=kk] {Ұйымдар}  
_labelOrganization_ [l=kk] {Ұйымдар}  
_textKeyword_ [l=kk] {Ключевое слово}  
_labelKeyword_ [l=kk] {Түйін сөздер}
_textHowto_ [l=kk] {Қалай}  
_labelHowto_ [l=kk] {Қалай}  

# Miscellaneous Greenstone metadata
_textPhrase_ [l=kk] {Фраза}  
_labelPhrase_ [l=kk] {Фразалар}
_textCollage_ [l=kk] {Коллаж}  
_labelCollage_ [l=kk] {Коллаж}
_textBrowse_ [l=kk] {Просмотр}  
_labelBrowse_ [l=kk] {Просмотр}  
_textTo_ [l=kk] {Кому}  
_labelTo_ [l=kk] {Кімге}
_textFrom_ [l=kk] {От}  
_labelFrom_ [l=kk] {Кімнен}
_textAcronym_ [l=kk] {Сокращение}  
_labelAcronym_ [l=kk] {Акронимдер}

# Navigation bar tooltip - to customize this for a specific metadata, add a macro named _textdescrXXX_ where XXX is the metadata name
_textdescrdefault_ [l=kk] {Просмотр по _1_}  

_textdescrSearch_ [l=kk] {Іздеу}
_textdescrType_ [l=kk] {Ресурс түрі бойынша қарау}
_textdescrIdentifier_ [l=kk] {Ресурс ерекше белгісі бойынша қарау}
_textdescrSource_ [l=kk] {Файлдың түпнұсқа аты бойынша қарау}
_textdescrTo_ [l=kk] {Мекенжайлар бойынша мазмұны}
_textdescrFrom_ [l=kk] {Жіберушілер бойынша мазмұны}
_textdescrCollage_ [l=kk] {Бейнелеу коллаждары бойынша қарау}
_textdescrAcronym_ [l=kk] {Акронимдер бойынша мазмұны}
_textdescrPhrase_ [l=kk] {Фразалар бойынша мазмұны}
_textdescrHowto_ [l=kk] {Қолданылу тәсілі бойынша мазмұны}
_textdescrBrowse_ [l=kk] {Қарау}
_texticontext_ [l=kk] {Құжатты қарау}
_texticonclosedbook_ [l=kk] {Құжатты ашып мазмұнын қарау}
_texticonnext_ [l=kk] {Келесі}
_texticonprev_ [l=kk] {Алдыңғысы}

_texticonworld_ [l=kk] {Показ веб документа}  

_texticonmidi_ [l=kk] {MIDI құжатын қарау}
_texticonmsword_ [l=kk] {Microsoft Word құжатын қарау}
_texticonmp3_ [l=kk] {MP3 құжатын қарау}
_texticonpdf_ [l=kk] {PDF құжатын қарау}
_texticonps_ [l=kk] {PS құжатын қарау}
_texticonppt_ [l=kk] {PPT  құжатын қарау}
_texticonrtf_ [l=kk] {RTF құжатын қарау}
_texticonxls_ [l=kk] {XLS құжатын қарау}

_page_ [l=kk] {Парақ}
_pages_ [l=kk] {Парақтар}
_of_ [l=kk] {Арасынан}
_vol_ [l=kk] {Том}
_num_ [l=kk] {Нөмірі}

_textmonth00_ [l=kk] {}
_textmonth01_ [l=kk] {Қаңтар}
_textmonth02_ [l=kk] {Ақпан}
_textmonth03_ [l=kk] {Наурыз}
_textmonth04_ [l=kk] {Сәуір}
_textmonth05_ [l=kk] {Мамыр}
_textmonth06_ [l=kk] {Маусым}
_textmonth07_ [l=kk] {Шілде}
_textmonth08_ [l=kk] {Тамыз}
_textmonth09_ [l=kk] {Қыркүйек}
_textmonth10_ [l=kk] {Қазан}
_textmonth11_ [l=kk] {Қараша}
_textmonth12_ [l=kk] {Желтоқсан}

_textdocument_ [l=kk] {Құжат}
_textsection_ [l=kk] {Секция}
_textparagraph_ [l=kk] {Абзац}

_magazines_ [l=kk] {Журналдар}

_nzdlpagefooter_ [l=kk] {<div class="divbar">&nbsp;</div>
<p><a href="http://www.nzdl.org">Сандық кітапхананың Жаңазеландиялық жобасы</a>
<br><a href="http://www.cs.waikato.ac.nz/cs">Компьютерлік ғылымдардың бөлімі</a>, 
<a href="http://www.waikato.ac.nz">Вайкато Университеті</a>, 
Жаңа Зеландия}

_linktextHOME_ [l=kk] {БАСЫ}
_linktextHELP_ [l=kk] {КӨМЕК}
_linktextPREFERENCES_ [l=kk] {ИКЕМДЕУ}


######################################################################
# 'home' page
package home
######################################################################

_textpagetitle_ [l=kk] {Greenstone сандық кітапханасы}



_textadmin_ [l=kk] {Административтік парақ}
_textabgs_ [l=kk] {Greenstone туралы}
_textgsdocs_ [l=kk] {Greenstone құжаттамасы}

_textdescradmin_ [l=kk] {Жаңа қолданушыларды қатарға қосуға, Жинақтарды жүйеге біріктеуге, Greenstone-ның орнатылуына қатысты техникалық ақпаратты алуға мүмкіндік береді.}

_textdescrgogreenstone_ [l=kk] {Greenstone бағдарлама жабдығы және  Жаңазеландия Сандық Кітапхана жобасы туралы әңгімелейді.}

_textdescrgodocs_ [l=kk] {Greenstone нұсқауы}

#####################################################################
# some macros used on the home page from other packages
#####################################################################
package gli

_textgli_ [l=kk] {Кітапханалық интерфейс}
_textdescrgli_ [l=kk] {Жаңа Жинақты жасау, өзгерту, толықтыру немесе жоюына көмек}

package collector

_textcollector_ [l=kk] {Коллектор}
_textdescrcollector_ [l=kk] {Кітапханалық интерфейстен бұрын құрылғандықтан, көптеген ағымдағы мақсаттар үшін кітапханалық интерфейсті Коллектор орнына пайдалану жөн.}

package depositor

_textdepositor_ [l=kk] {Депозитор}  
_textdescrdepositor_ [l=kk] {Помогает Вам добавить документы к существующим коллекциям}  

package gti

_textgti_ [l=kk] {Интерфейс Переводчика Гринстоун}  
_textdescrtranslator_ [l=kk] {Greenstone интерфейсінің қазіргі  көптілді нұсқаларын пайдалануға көмектеседі}


######################################################################
# 'about' page
package about
######################################################################


#------------------------------------------------------------
# text macros
#------------------------------------------------------------

_textabcol_ [l=kk] {Жинақ туралы мәлімет}

_textsubcols1_ [l=kk] {<p>Бұл Жинақ _1_ ішкі жинақтарды топтастырған <blockquote>}

_textsubcols2_ [l=kk] {</blockquote>
Сіз "Икемдеу" парағында қазір қолданылып отырған ішкі жинақтардын тізімін қарап/өзгерте аласыз.}

_titleabout_ [l=kk] {сипаттама}


######################################################################
# document package
package document
######################################################################


#------------------------------------------------------------
# text macros
#------------------------------------------------------------

_texticonopenbookshelf_ [l=kk] {Кітапхана бөлімін жабу.}
_texticonclosedbookshelf_ [l=kk] {кітапхана секциясын ашу және мазмұнын қарау}
_texticonopenbook_ [l=kk] {Кітапты жабу}
_texticonclosedfolder_ [l=kk] {Папканы ашу және мазмұнын қарау}
_texticonclosedfolder2_ [l=kk] {бөлімшені ашу}
_texticonopenfolder_ [l=kk] {Папканы жабу}
_texticonopenfolder2_ [l=kk] {бөлімшені жабу.}
_texticonsmalltext_ [l=kk] {мәтін бөлімін қарау}
_texticonsmalltext2_ [l=kk] {мәтінді қарау}
_texticonpointer_ [l=kk] {Ағымдағы бөлім}
_texticondetach_ [l=kk] {Жаңа терезеде парақ ашу}
_texticonhighlight_ [l=kk] {іздеген терминдерді баса көрсету}
_texticonnohighlight_ [l=kk] {іздеген терминді баса көрсетпеу}
_texticoncontracttoc_ [l=kk] {Мазмұнын жиыру}
_texticonexpandtoc_ [l=kk] {Мазмұнын кеңінен көрсету}
_texticonexpandtext_ [l=kk] {Барлық мәтінді көрсету}
_texticoncontracttext_ [l=kk] {тек баса айқындалған секцияларға мәтінді көрсету}
_texticonwarning_ [l=kk] {<b>Назар аударыңыз: </b>}
_texticoncont_ [l=kk] {жалғастырайын ба?}

_textltwarning_ [l=kk] {<div class="buttons">_imagecont_</div>
_iconwarning_ Барлық мәтінді бейнелеу браузерінде бейнеленетін ақпараттардың көбеюіне әкеліп соғады.}

_textgoto_ [l=kk] {параққа көшу}
_textintro_ [l=kk] {<i>(кіріспе)</i>}

_textCONTINUE_ [l=kk] {ЖАЛҒАСТЫРАЙЫН БА?}

_textEXPANDTEXT_ [l=kk] {БАРЛЫҚ\nМӘТІН}

_textCONTRACTCONTENTS_ [l=kk] {МАЗМҰНДЫ\nЖИЫРУ}

_textDETACH_ [l=kk] {ЖАҢА\nТЕРЕЗЕ}

_textEXPANDCONTENTS_ [l=kk] {МАЗМҰНДЫ\nжаю}

_textCONTRACT_ [l=kk] {МӘТІНДІ\nЖИЫРУ}

_textHIGHLIGHT_ [l=kk] {БАСА\nКӨРСЕТУ}

_textNOHIGHLIGHT_ [l=kk] {БАСА КӨРСЕТУДІ\nАЛЫП ТАСТАУ}

_textPRINT_ [l=kk] {ПЕЧАТЬ}  

_textnextsearchresult_ [l=kk] {Следующий посиковый результат}  
_textprevsearchresult_ [l=kk] {Предыдущий поисковый результат}  

# macros for printing page
_textreturnoriginal_ [l=kk] {Вернуться на страницу}  
_textprintpage_ [l=kk] {Печатать данную страницу}  
_textshowcontents_ [l=kk] {Показать содержание}  
_texthidecontents_ [l=kk] {Скрыть содержание}  

######################################################################
# 'search' page
package query
######################################################################


#------------------------------------------------------------
# text macros
#------------------------------------------------------------

# this if statement produces the text 'results n1 - nn for query: querystring' or 
# 'No matches for query: querystring', depending on whether or not there were
# any matches
_textquerytitle_ [l=kk] {_If_(_thislast_, _cgiargq_ сұраным бойынша іздеудің нәтижелері: _thisfirst_ - _thislast_ , сұраным бойынша: _cgiargq_ ештеңе табылған жоқ)}
_textnoquerytitle_ [l=kk] {Іздеу парағы}

_textsome_ [l=kk] {кейбір}
_textall_ [l=kk] {барлығы}
_textboolean_ [l=kk] {логикалық}
_textranked_ [l=kk] {Реттелген}
_textnatural_ [l=kk] {кәдімгі}

_texticonsearchhistorybar_ [l=kk] {Іздеу тарихы}

_textifeellucky_ [l=kk] {Мен жеңісті сезудемін!}

#alt text for query buttons
_textusequery_ [l=kk] {Осы сұранымды қолдану}
_textfreqmsg1_ [l=kk] {Кездесу саны:}
_textpostprocess_ [l=kk] {_If_(_quotedquery_,<br><i> _quotedquery_ іздеу үшін өңделді</i>)}
_textinvalidquery_ [l=kk] {Сұрақ синтаксисі қате}



_textmorethan_ [l=kk] {көбірек, неғұрлым}
_textapprox_ [l=kk] {Төңірегінде}
_textnodocs_ [l=kk] {Сұранымды қанағаттандыратын құжаттар табылмады}
_text1doc_ [l=kk] {1 құжат сұранымды қанағаттандырады.}
_textlotsdocs_ [l=kk] {құжаттар, сұранымды қанағаттандыратын.}
_textmatches_ [l=kk] {Нәтижелер}
_textbeginsearch_ [l=kk] {Іздеуді бастау}
_textrunquery_ [l=kk] {Сұранымды орындау}
_textclearform_ [l=kk] {Форманы босату}

#these go together in form search:
#"Words  (fold, stem)  ... in field"
_textwordphrase_ [l=kk] {Сөз немесе фраза}
_textinfield_ [l=kk] {... алаңшада}
_textfoldstem_ [l=kk] {(сөз, фраза)}

_textadvquery_ [l=kk] {немесе сұраным мәтінін енгізіңіз:}
_textallfields_ [l=kk] {барлық алаңшасы}
_texttextonly_ [l=kk] {тек мәтін}
_textand_ [l=kk] {және}
_textor_ [l=kk] {немесе}
_textandnot_ [l=kk] {және емес}

# _indexselection_, _jselection_, _nselection_ and _gselection_ are set from 
# within the server - _indexselection_ is always set, but the others may be 
# unset

_textsimplesearch_ [l=kk] {_indexselection_ _If_(_jselection_, of _jselection_) _If_(_gselection_, _gselection_ деңгейінде) _If_(_nselection_, _nselection_ тілінде) бойынша іздеу, _querytypeselection_ сөздерден тұратын}

_textadvancedsearch_ [l=kk] {_indexselection_ _If_(_jselection_, of _jselection_) _If_(_gselection_, _gselection_ деңгейде)_If_(_nselection_, _nselection_ тілінде) іздеу, _querytypeselection_ сұранымды қолданып}





_textformsimplesearch_ [l=kk] {_If_(_jselection_, _jselection_) _If_(_gformselection_,  _gformselection_ деңгейде) _If_(_nselection_, _nselection_ тілінде) бойынша іздеу, _formquerytypesimpleselection_ бар жерінде}





_textnojsformwarning_ [l=kk] {Ескерту: Сіздің веб-браузеріңізде Javascript зақымданған. <br>Іздеу формасын пайдалану үшін бұған рұқсат қажет.}
_textdatesearch_ [l=kk] {Бұл Жинақта құжаттарды анықталған мерзімі шеңбері және нақты көрсеткен уақыты бойынша іздестіругеу болады.}
_textstartdate_ [l=kk] {Бастапқы (немесе нақты) мерзім:}
_textenddate_ [l=kk] {Соңғы мерзімі}
_textbc_ [l=kk] {б.э.д.}
_textad_ [l=kk] {б.э.}
_textexplaineras_ [l=kk] {Б.э. және б.э.д. Терминдері "біздің эрамыз" және "біздің эрамызға дейін"-ді білдіреді}

_textstemon_ [l=kk] {(сөз жалғауларын елемеу)}

_textsearchhistory_ [l=kk] {Іздеу тарихы}

#text macros for search history
_textnohistory_ [l=kk] {Әзірше сұраным тарихы қалыптасқан жоқ}
_texthresult_ [l=kk] {кездесуі}
_texthresults_ [l=kk] {кездесулер}
_texthallwords_ [l=kk] {сөздердің барлығы}
_texthsomewords_ [l=kk] {кейбір сөздер}
_texthboolean_ [l=kk] {логикалық}
_texthranked_ [l=kk] {реттелген}
_texthcaseon_ [l=kk] {регистрді ескере отырып}
_texthcaseoff_ [l=kk] {регистрді ескермей}
_texthstemon_ [l=kk] {жалғаумен}
_texthstemoff_ [l=kk] {жалғаусыз}


######################################################################
# 'preferences' page
package preferences
######################################################################


#------------------------------------------------------------
# text macros
#------------------------------------------------------------

_textprefschanged_ [l=kk] {Артықшылығы былайша берілді. Сіздің браузеріңіздегі "back" батырмасын пайдаланбаңыз - бұл оны жойып жібереді! Орнына ену сызығының үстіндегі батырманың кез-келгенін басыңыз.}
_textsetprefs_ [l=kk] {артықшылығын белгілеу}
_textsearchprefs_ [l=kk] {Іздеу шарттары}
_textcollectionprefs_ [l=kk] {Жинақты икемдеу}
_textpresentationprefs_ [l=kk] {Интерфейс икемдеу}
_textpreferences_ [l=kk] {Икемдеу}
_textcasediffs_ [l=kk] {Регистрлер:}
_textignorecase_ [l=kk] {регистрлерді ескермеу}
_textmatchcase_ [l=kk] {жоғарғы және төменгі регистрлерді қолдану}
_textwordends_ [l=kk] {Сөздердің жалғаулары:}
_textstem_ [l=kk] {сөздердің жалғауларын ескермеу}
_textnostem_ [l=kk] {жалғауы бар сөздерді қолдану}




_textprefop_ [l=kk] {_maxdocoption_ құжаттарын – іздеу нәтижелерін көрсету,   _hitsperpageoption_ құжаттан бір парақта.}
_textextlink_ [l=kk] {Сыртқы Web-торабына ену:}
_textintlink_ [l=kk] {Бұл құжат алынған орны:}
_textlanguage_ [l=kk] {Интерфейс тілі:}
_textencoding_ [l=kk] {Кодтамасы:}
_textformat_ [l=kk] {Интерфейс форматы:}
_textall_ [l=kk] {барлығы}
_textquerymode_ [l=kk] {Сұраным түрі:}
_textsimplemode_ [l=kk] {Сұранымның қарапайым түрі}
_textadvancedmode_ [l=kk] {Сұранымның кеңейтілген түрі (! (ЕМЕС) , & (ЖӘНЕ), | (НЕМЕСЕ) және жақшалар амалдарымен логикалық іздеу рұқсат етілген}
_textlinkinterm_ [l=kk] {аралық парақ арқылы}
_textlinkdirect_ [l=kk] {тікелей өту}
_textdigitlib_ [l=kk] {электрондық кітапхана}
_textweb_ [l=kk] {Web}
_textgraphical_ [l=kk] {Графикалық}
_texttextual_ [l=kk] {Мәтіндік}
_textcollectionoption_ [l=kk] {<p> Қолдануға арналған ішкі жинақтар: <br>}







_textrelateddocdisplay_ [l=kk] {ұқсас құжаттарды көрсету}
_textsearchhistory_ [l=kk] {Сұраным тарихы:}
_textnohistory_ [l=kk] {Сұраным тарихының жоқтығы}
_texthistorydisplay_ [l=kk] {_historynumrecords_ сұраным тарихын көрсету}
_textnohistorydisplay_ [l=kk] {сұраным тарихын көрсетпеу}


#####################################################################
# 'browse' package for the dynamic browsing interface
package browse
#####################################################################

_textsortby_ [l=kk] {бойынша құжаттарды сұрыптау}
_textalsoshowing_ [l=kk] {қосымша көрсету}
_textwith_ [l=kk] {ең үлкенімен}
_textdocsperpage_ [l=kk] {парақтағы құжаттар}

_textfilterby_ [l=kk] {мазмұндағы құжаттарды алу}
_textall_ [l=kk] {барлығы}
_textany_ [l=kk] {кез-келгені}
_textwords_ [l=kk] {сөздерден}
_textleaveblank_ [l=kk] {Барлық құжаттарды алу үшін, осы жәшікті бос қалдыру}

_browsebuttontext_ [l=kk] {"Құжат түрі"}

_nodata_ [l=kk] {<i>мәлімет жоқ</i>}
_docs_ [l=kk] {құжаттар}
######################################################################
# 'help' page -- this is lower priority for translating than the
# rest of this file
package help
######################################################################


#------------------------------------------------------------
# text macros
#------------------------------------------------------------

_textHelp_ [l=kk] {Көмек}

# Macros giving a brief help message for navigation bar access buttons
# The arguments to this will be _textXXX_ and _labelXXX_, where XXX is the metadata name. For example, to print out the help message for a titles classifier, the library will use _textdefaulthelp_(_textTitle_,_labelTitle_)
# To customize this for a specific metadata, add a macro named _textXXXhelp_ where XXX is the metadata name
_textdefaulthelp_ [l=kk] {просмотр документов по _1_ нажав кнопку _2_}  


_textTohelp_ [l=kk] {просмотреть документы по полю кому нажав кнопку _labelTo_ button}  
_textFromhelp_ [l=kk] {просмотр документов по полю От нажав _labelFrom_ button}  
_textBrowsehelp_ [l=kk] {просмотр документов}  
_textAcronymhelp_ [l=kk] {просмотр документов по сокращениям появляется нажав кнопку _labelAcronym_ button}  


_texthelptopicstitle_ [l=kk] {Тараулары}

_textreadingdocs_ [l=kk] {Құжаттармен қалай жұмыс істеу керек}

_texthelpreadingdocs_ [l=kk] {<p>Сіз кез-келген қандай да бір құжатты ашқанда оның атын және парақтың сол жақ жоғарғы бұрышында авторын көресіз. Сол сияқты Сіз парақ нөмерін, алға және артқа көшу стрелкаларын, жаңа парақты таңдау батырмасын таба аласыз. 

<p>Төменде ағымдағы бөлімнің мәтіні берілген. Оны оқығаннан кейін, төмен жағында келесі немесе алдыңғы бөлімге көшу стрелкаларын көресіз. 


<p>Құжат аты және оның авторы белгіленген жазу астында үш батырма бар. <i>Барлық мәтін</i> батырмасын бассаңыз құжаттың барлық мәтінін экранға шығара аласыз. Егер құжат жеткілікті көлемді болса, онда ол біраз уақыт пен көп жадыны қажет етеді! </i> 
Берілген құжатты жаңа терезеге шығару үшін (бұл бірден бірнеше құжатты салыстырғыңыз келсе немесе екеуін бірден оқығыңыз келсе пайдалы) <i>Жаңа терезеде</i> батырмасын басыңыз. Егер Сіз бұл құжаттарды белгілі сөздер бойынша тапқан болсаңыз, онда олар құжат мәтінінде баса көрсетіліп тұрады. Іздеген сөздер құжат мәтінінде баса көрсетіліп тұрмауы үшін <i>баса көрсетуді жою</i> батырмасын басыңыз.}

# help about the icons
_texthelpopenbookshelf_ [l=kk] {Открыть книжный шкаф}  
_texthelpopenbook_ [l=kk] {Раскрыть/закрыть эту книгу}  
_texthelpviewtextsection_ [l=kk] {Просмотреть данный раздел как текст}  
_texthelpexpandtext_ [l=kk] {Барлық мәтінді шығарайынба, жоқпа}
_texthelpexpandcontents_ [l=kk] {Раскрыть таблицу содержания, или нет}  
_texthelpdetachpage_ [l=kk] {Бұл парақты жаңа терезеде ашайын ба}
_texthelphighlight_ [l=kk] {Іздестіретін сөздерді баса көрсетейін бе, жоқ па}
_texthelpsectionarrows_ [l=kk] {К следующему/предыдущему разделу}  


_texthelpsearchingtitle_ [l=kk] {Арнайы терминдер бойынша іздеу ерекшеліктері}

_texthelpsearching_ [l=kk] {<p>
  Сіз іздеу парағынан, келесі қадамдарға сәйкес қарапайым сұраным жасай аласыз. <p>
  
  <ol><li>Іздейтініңізді анықтаңыз
      <li>Оның жолдарын: фраза немесе жеке сөздер арқылы 
      <li>Сұраным мәтінін іздеу жолына теріңіз
      <li><i>Іздеуді бастау</i> батырмасын басыңыз 
  </ol>

<p>Сұраным орындалғаннан кейін экранда 20 құжаттың атауы шығады. Тізімнің соңында, келесі 20 құжатқа көшетін батырмасы бар. Сіз кез келген құжаттың атына немесе қасындағы белгісін басып, оны қарай аласыз. 

<p>Іздеу нәтижесі ең көп дегенде 100 құжат санын табады. Бұл санды Икемдеу парағынан өзгерте аласыз (Парақтың жоғары жағында орналасқан <i> Икемдеу </i> батырмасы) <p>}

_texthelpquerytermstitle_ [l=kk] {Іздестіру сөздері}
_texthelpqueryterms_ [l=kk] {<p>Сіздің сұраным жолына енгізетініңіздің бәрі, "іздестіру сөздері" деп аталады. Әр сөзді әріптер және сандар құрайды. Сөздер аралығымен бөлінген. Пунктуация белгілері (мысалы, үтір, нүкте т.с.с.), аралық (интервал) сияқты тек сөз бөлгіш қызметін атқарады. Пунктуация белгілері бар сөздермен іздеу жүргізе алмайсыз. 

<p>Мысалы, <p>
    <ul><kbd>Тынық мұхиты аралдарындағы Ауыл-орман шаруашылығы: қолдау жүйесі (1993)</kbd></ul>
      <p>бұл сұраным төмендегімен пара-пар<p>
      <ul><kbd>Тынық мұхиты аралдарындағы Ауыл-орман шаруашылығы қолдау жүйесі 1993</kbd></ul><p>
}  





_texthelpquerytypetitle_ [l=kk] {Сұранымдар түрі}
_texthelpquerytype_ [l=kk] {<p>Өзгеше екі сұраным түрі бар.

<ul>
  <li><b>Барлық</b> сөздер бойынша сұранымдар. Бұл іздеу жолына енгізгіңіз келген сөздердің барлығы кездесетін құжаттар үшін. Сұранымды қанағаттандыратын құжаттар Алфавиттік тәртіппен шығарылады. <p>

  <li><b>Кейбір</b> сөздер бойынша сұранымдар. Тек құжат мәтінінде кездесуі мүмкін бірнеше сөзді жазу жеткілікті. Құжаттар сұранымға сәйкес келуін төмендеу реті бойынша шығарылады. Сұранымға сәйкестік былай анықталады:  
      <p><ul>
        <li> құжатта ізделінетін терминдер көбірек кездескен сайын, ол көбірек сәйкес келеді;
        <li> жалпы сөздерге қарағанда, сирек сөздер маңыздырақ;
        <li> көлемді құжаттарға қарағанда ықшамдылары жақсы сәйкес.
      </ul>
</ul>

<p>Іздеуге қанша сөз қажет болса сонша сөзді пайдаланыңыз – бұл бүтін сөйлем немесе параграф болуы мүмкін. Егер Сіз тек бір сөз енгізсеңіз, онда құжаттар оның пайда болу жиілігінің кемуі бойынша орналасады. <p>}

_texthelpadvancedsearchtitle_ [l=kk] {Расширенный поиск с использованием _1_ поисковой машины}  









_texthelpadvancedsearchextra_ [l=kk] {ПРИМЕЧАНИЕ: Эти операторы будут все проигнорированны если вы ищете в режиме простого поиска.}  

_texthelpadvsearchlucene_ [l=kk] {Расширенный поиск в коллекции Lucene с использованием  булевых операторов. _texthelpbooleansearch_
}  

_texthelpformsearchtitle_ [l=kk] {Поиск по полям}  





_textdatesearch_ [l=kk] {Мерзімі бойынша іздеу}

_texthelpdatesearch_ [l=kk] {Мерзімі бойынша Іздеу Сізге белгілі бір уақыт аралығында болған оқиғаларға қатысты құжаттарды, белгілі бір іздеу терминімен табылатын құжаттарды табу т.б. іздестіруге мүмкіндік береді. Сіз іздеуді белгілі бір жылға қатысты құжаттар бойынша және жылдар кезеңіне байланыстыра жүргізе аласыз.<p>}

_texthelpdatehowtotitle_ [l=kk] {Мұны қалай қолдану керек:}
_texthelpdatehowto_ [l=kk] {<ul>
   <li>Құжаттарды нақты мерзімі бойынша іздеу:<p>
   <ul>
       <li>Іздестіру үшін кәдімгі сөздерді енгізіңіз. 
       <li>Қажетті жылды "Бастапқы (немесе нақты) мерзім" формасына енгізіңіз.
       <li>Егер Сіздің жылыңыз біздің эрамызға дейінгі (Христос туылғанға дейінгі) аралықта жатса, онда бұдан былай пайда болатын мәзірден "Б.э.д." таңдаңыз.
       <li>Іздеуді бастаңыз.
   </ul>
<p><li>Құжаттарды уақыт аралығы бойынша іздеу:<p>
   <ul>
       <li>Іздестіру үшін кәдімгі сөздерді енгізіңіз.


       <li>Бастапқы жылды "Бастапқы (немесе нақты) мерзім" формасына енгізіңіз. 
       <li>Соңғы жылды "Соңғы мерзімі" формасына енгізіңіз.
       <li>Пайда болатын мәзірден "Б.э.д." осы кезеңнің кез келген мерзімі үшін (Христос туылғанға дейінгі кезең деп те аталады) таңдаңыз. 
       <li>Іздеуді бастаңыз.
   </ul>    
</ul><p>}

_texthelpdateresultstitle_ [l=kk] {Мерзім бойынша іздеу қалай жүргізіледі}
_texthelpdateresults_ [l=kk] {Сұранымның толығырақ нәтижесін алу үшін интервалдық сұранымды қолдану ұсынылады, себебі кейбір құжаттарда мерзімдері нақты көрсетілмеген (мысалы жыл емес, ғасыр көрсетілуі мүмкін). 
<p>}

_textchangeprefs_ [l=kk] {Икемдеуді өзгерту}

_texthelppreferences_ [l=kk] {<p> <i>Икемдеу</i> парағында (парақтың жоғарғы бөлігіндегі батырма) Сіз интерфейстің кейбір параметрлерін өзгерте аласыз.}

_texthelpcollectionprefstitle_ [l=kk] {Жинақты Икемдеу}
_texthelpcollectionprefs_ [l=kk] {Кейбір Жинақтарда бірнеше ішкі жинақтар болады. Іздеу әрқайсысында жеке және барлығында бір қатар жүргізілуі мүмкін. Икемдеу парағында Сіз іздеуге қосқыңыз келген ішкі жинақтарды таңдай аласыз.}

_texthelplanguageprefstitle_ [l=kk] {Тілді икемдеу}
_texthelplanguageprefs_ [l=kk] {Әр Жинақта стандартты интерфейс тілі бар, бірақ Сіз кез келген басқа тілді таңдай аласыз. Сондай-ақ Сіз осы бағдарламада қолданылатын басқа кодтаманы таңдай аласыз, Сіздің браузерге тура келетіні автоматты түрде стандартты болады, ең дұрысы кодтаманы қолымен таңдаған. Жинақтардың барлығында бейнелудің графикалық режимінен мәтіндікке және керісінше көшуге болады.}

_texthelppresentationprefstitle_ [l=kk] {Интерфейсті икемдеу}
_texthelppresentationprefs_ [l=kk] {Жинақтарға байланысты оларда әртүрлі бірнеше Икемдеу болады. 

<p>Web-парақтар  Жинағы  әр құжаттың жоғарғы жағында орналасқан басқару панелін қолдануға мүмкіндік береді, сол арқылы Іздеуден кейін бір-жолата Web-парағыңызға көше аласыз. Жаңа сұраным жасау үшін өзіңіздің браузеріңіздегі "back" батырмасын бассаңыз болғаны. Мұндай Жинақтар  WWW-дағы электрондық кітапхана ауқымынан шығаратын сілтемелерді басқанда пайда болатын жүйелік қателерге тыйым салу мүмкіндігін береді.}

_texthelpsearchprefstitle_ [l=kk] {Іздестіруді Икемдеу}
_texthelpsearchprefs_ [l=kk] {<p>Екі ауыстырып-қосқыш мәтінді іздеу дәлдігін басқарады. "Регистрлер" қайта қосқышы регистрді ескеруді өшіреді\іске қосады. "Сөз жалғаулары" қайта қосқыштары сөздің жалғауларын қолдануды немесе ескермеуді қолдану мүмкіндігін береді. "Іздеу терезесінің өлшемі" қайта қосқышы сұраным мәтіні ретінде бүтіндей бір абзацты енгізу мүмкіндігін береді.  
<p>Мысалы, егер <i>регистрлерді ескермеу</i> және
<i>сөз жалғауларын ескермеу</i> таңдалса, онда сұраным<p>
    <ul><kbd>African building</kbd></ul>
      <p>келесі түрде түсініледі<p>
      <ul><kbd>africa builds</kbd></ul><p>
      Себебі "African" сөзіндегі жоғарғы регистр әрпі төменгі регистр әрпіне өзгертіліп, "n" және "ing" жалғаулары сөзден алып тасталынады. "African" және "building" (сондай-ақ, "s" "builds" сөзінен алып тасталынады).

<p>Сіз ЖӘНЕ (&), НЕМЕСЕ (|), ЖӘНЕ ЕМЕС амалдарын қолданып сұранымның кеңейтілген формасына көше аласыз. Бұл дәл сұранымдар құру мүмкіндігін береді. Алдыңғы іздеу нәтижелері көрсетілген кезде сұраным тарихын көрсетуді іске қоса аласыз. Бұл аздап өзгертілген сұранымдар түрін жасауға мүмкіндік береді. Сіз бір беттегі құжаттардың жалпы саны мен іздеу нәтижесінің жалпы санын реттей аласыз.}

_textcasefoldprefs_ [l=kk] {Пара кнопок контролирует верхний и нижний регистр в найденном. Например, если выбрано "_preferences:textignorecase_", <i>акимат города</i> будет представлен как <i>Акимат Города</i> и <i>АКИМАТ ГОРОДА</i>.}  

_textaccentfoldprefs_ [l=kk] {Пара кнопок контролирует акцентированные и неакцентированные символы которые должны соотвествовать найденному. Напимер , если выбрано "_preferences:textignoreaccents_", <i>fédération</i> будет использоваться как <i>fedération</i> и <i>federation</i>.}  
 
_textstemoptionsprefs_ [l=kk] {Возможно это более точно использовать для поиска разбитые термины как описано выше в "_texthelpquerytermstitle_".}  

_textsearchtypeprefsplain_ [l=kk] {Возможно получить большую форму запроса, так чтобы появилась возможность добавлять поискоые запросы размером в параграф. К нашему удивлению это очень быстрый поиск.}  

_textsearchtypeprefsform_ [l=kk] {Вы можете изменить количество полей в поисковой форме.}  





_texttanumbrowseoptions_ [l=kk] {Бұл Жинақта іздеудің әр түрлі тәсілдері бар (_numbrowseoptions_):}

_textsimplehelpheading_ [l=kk] {Ақпаратты қалай іздеу керек}

_texthelpscopetitle_ [l=kk] {Іздеу диапазоны}
_texthelpscope_ [l=kk] {<p>
Жинақтардың көпшілігінде Сіз әртүрлі іздеу индекстерін қолдана аласыз. Мысалы, кітап атауларының, авторлар аты-жөні индекстерін. Ол тарау немесе бөлім атауларының индекстері де болуы мүмкін. Егер Сіз қажетті индексті (тарау немесе бөлімі бойынша) көрсетпесеңіз онда экранға бүкіл құжат шығарылады. Егер құжат бүтіндей бір кітап болса онда ол белгіленген тұсынан ашылады.}
