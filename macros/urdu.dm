# this file must be UTF-8 encoded
#####################################################################
#
# English Language text and icon macros 
#
######################################################################
#
# This is the main macro file for translation when creating an 
# interface in another language.

# Under the 'text macros' comments are text macros of the form:
# _macroname_ {macro value}
# Everything between the {} is the text to be translated. This text 
# may itself contain macros (i.e. characters other than space between
# underscore characters, e.g. _about:numdocs_ or _textpage_). These
# macro names occurring within text shouldn't be translated but should
# be left as they are. Underscores or curly brackets occurring 
# naturally within the text should be escaped with a leading backslash
# (i.e. '\_', '\{' or '\}).
#
# Comment lines (other than those described above) need not be 
# translated (i.e. any lines beginning with '#', like this line).
#
# The simplest way to translate this file is to save it as something
# else (e.g. french.dm) and work through translating all the text
# macro values and icon comments.
#
######################################################################


######################################################################
# Global (base) package
package Global
######################################################################


#------------------------------------------------------------
# text macros
#------------------------------------------------------------

_textperiodicals_ [l=ur] {جراید}  

# these three used by the default format statement of the demo and dls collections.

_textdate_ [l=ur] {تاریخ اشاعت}  
_textnumpages_ [l=ur] {صفحات کی تعداد}  



_textdefaultcontent_ [l=ur] {آپ کا مطلوبہ صفحہ نہیں مل سکا۔ براہ مہربانی اپنے براؤزر کا "بیک" بٹن دبائیں یا گرین سٹون اصبعی کتب خانہ کے لیےے اوپر دیا گیا ہوم بٹن دبا ییں۔}  

_textdefaulttitle_ [l=ur] {جی ایس ڈی ایل غلطی}  

_textbadcollection_ [l=ur] {یہ مجموعہ (بنام "_cvariable_") اس گرین سٹون ڈیجیٹل لائبریری میں موجود نہیں ہے}  

_textselectpage_ [l=ur] {صفحہ منتخب کریں}  

_collectionextra_ [l=ur] {اس مجموعہ میں _about:numdocs_ مسودات موجود ہیں اور یہ _about:builddate_ دن قبل بنایا گیا تھا}  

# this is only used by the collector (where the above _collectionextra_
# macro will always be set to another value)
_collectorextra_ [l=ur] {<p> اس مجموعے میں _numbytes_ میں سے __numdocs_ _If_("_numdocs_" eq "1",دستاویز,دستاویز),پایے جاتے ہیں۔
اس وضع ہوے مجموعے کا جایزہ لینے کے لیے <p><a href="_httppagex_(bsummary)">اس جگہ پر کلک کریں}  

_textdescrcollection_ [l=ur] {}
_textdescrabout_ [l=ur] {ؔصفحہ تعارف}  
_textdescrhome_ [l=ur] {صفحہ اول}  

_textdescrpref_ [l=ur] {صفحہ تنظیمات}  
_textdescrgreenstone_ [l=ur] {گرین سٹون ڈیجیٹل لاءبریری سافٹ ویئر}  
_textdescrusab_ [l=ur] {کس کے استعمال میں مشکل پیش آءی}  


# Metadata names and navigation bar labels

_textSearch_ [l=ur] {تلاش}  
_labelSearch_ [l=ur] {تلاش}  

# Dublin Core Metadata Element Set, Version 1.1
_textTitle_ [l=ur] {عنوان}  
_labelTitle_ [l=ur] {عنوانات}  
_textCreator_ [l=ur] {تیار کنندہ}  
_labelCreator_ [l=ur] {تعمیر کنندگان}  
_textSubject_ [l=ur] {مضمون}  
_labelSubject_ [l=ur] {موضوعات}  

_labelDescription_ [l=ur] {تفصیلات}  
_textPublisher_ [l=ur] {شناخت کنندہ}  
_labelPublisher_ [l=ur] {شائع کردہ}  
_textContributor_ [l=ur] {معاون}  
_labelContributor_ [l=ur] {حصہ ڈالنے والے}  
_textDate_ [l=ur] {تاریخ}  
_labelDate_ [l=ur] {تواریخ}  
_textType_ [l=ur] {قسم}  
_labelType_ [l=ur] {اقسام}  


_textIdentifier_ [l=ur] {شناخت کنندہ}  
_labelIdentifier_ [l=ur] {شناخت کنندگان}  
_textSource_ [l=ur] {مسل کا نام}  
_labelSource_ [l=ur] {اسم مسل}  
_textLanguage_ [l=ur] {زبان}  
_labelLanguage_ [l=ur] {زبانیں}  
_textRelation_ [l=ur] {رابطہ}  
_labelRelation_ [l=ur] {رابطے}  


_textRights_ [l=ur] {حقوق}  
_labelRights_ [l=ur] {حقوق}  

# DLS metadata set
_textOrganization_ [l=ur] {تنظیم}  
_labelOrganization_ [l=ur] {تنظیمات}  
_textKeyword_ [l=ur] {اہم اصطلاح}  
_labelKeyword_ [l=ur] {اہم اصطلاحات}  
_textHowto_ [l=ur] {کیسے}  
_labelHowto_ [l=ur] {کیسے}  

# Miscellaneous Greenstone metadata
_textPhrase_ [l=ur] {جملہ}  
_labelPhrase_ [l=ur] {عبارات}  


_textBrowse_ [l=ur] {ورق گردانی}  
_labelBrowse_ [l=ur] {ورق گردانی کریں}  
_textTo_ [l=ur] {کو}  
_labelTo_ [l=ur] {کو}  
_textFrom_ [l=ur] {منجانب}  
_labelFrom_ [l=ur] {منجانب}  

_labelAcronym_ [l=ur] {مخففات}  

# Navigation bar tooltip - to customize this for a specific metadata, add a macro named _textdescrXXX_ where XXX is the metadata name
_textdescrdefault_ [l=ur] {ورق گردانی بلحاظ _1_}  

_textdescrSearch_ [l=ur] {مخصوص اصطلاحات کی تلاش}  
_textdescrType_ [l=ur] {ورق گردانی بلحاظ قسم}  
_textdescrIdentifier_ [l=ur] {ورق گردانی بلحاظ شناختی نمبر}  
_textdescrSource_ [l=ur] {ورق گردانی بلحاظ اسم مسل}  
_textdescrTo_ [l=ur] {Browse by To field}  
_textdescrFrom_ [l=ur] {ورق گردانی بلحاظ کی طرف سے}  




_textdescrBrowse_ [l=ur] {مسودات کی ورق گردانی}  

_texticonclosedbook_ [l=ur] {اس مسودہ کو کھولیں اور مندرجات ملاحظہ فرماءیں}  
_texticonnext_ [l=ur] {اگلے حصے تک}  
_texticonprev_ [l=ur] {پچھلے حصہ تک}  

_texticonworld_ [l=ur] {ویب کا مسودہ ملاحظہ کریں}  

_texticonmidi_ [l=ur] {MIDI مسودہ کو ملاحظہ کریں}  
_texticonmsword_ [l=ur] {ماءیکرو سافٹ ورڈ کا مسودہ ملاحظہ کریں}  
_texticonmp3_ [l=ur] {MP3 دستاویز کو ملاحضہ کی جیے}  
_texticonpdf_ [l=ur] {PDF مسودہ ملاحظہ کریں }  
_texticonps_ [l=ur] {پوسٹ سکرپٹ کا مسودہ ملاحظہ کریں}  
_texticonppt_ [l=ur] {پاور پواءنٹ کا مسودہ ملاحظہ کریں}  
_texticonrtf_ [l=ur] {RTFدستاویز ملاحظہ کریں}  
_texticonxls_ [l=ur] {ماءیکروسافٹ ایکسل کا  مسودہ ملاحظہ کریں}  

_page_ [l=ur] {صفحہ}  
_pages_ [l=ur] {صفحات}  
_of_ [l=ur] {کا}  

_num_ [l=ur] {نمبر}  

_textmonth00_ [l=ur] {}
_textmonth01_ [l=ur] {جنوری}  
_textmonth02_ [l=ur] {فروری}  
_textmonth03_ [l=ur] {مارچ}  
_textmonth04_ [l=ur] {اپریل}  
_textmonth05_ [l=ur] {مئی}  
_textmonth06_ [l=ur] {جون}  
_textmonth07_ [l=ur] {جولا ئی}  
_textmonth08_ [l=ur] {اگست}  
_textmonth09_ [l=ur] {ستمبر}  
_textmonth10_ [l=ur] {اکتوبر}  
_textmonth11_ [l=ur] {نومبر}  
_textmonth12_ [l=ur] {دسمبر}  

_textdocument_ [l=ur] {دستاویز}  
_textsection_ [l=ur] {حصہ}  
_textparagraph_ [l=ur] {پیراگراف}  

_magazines_ [l=ur] {میگزین}  



_linktextHOME_ [l=ur] {صفحہ اول}  
_linktextHELP_ [l=ur] {مدد}  
_linktextPREFERENCES_ [l=ur] {پیشکس کی تنظیمات}  


######################################################################
# 'home' page
package home
######################################################################

_textpagetitle_ [l=ur] {گرین سٹون اصبعی کتب خانہ}  



_textadmin_ [l=ur] {حاکم کا صفحہ}  
_textabgs_ [l=ur] {گین سٹون کے بارے میں}  
_textgsdocs_ [l=ur] {گین سٹون کی لکھت پڑھت}  

_textdescradmin_ [l=ur] {،اس سے آپ نے صارف داخل کر سکتے ہیں اور گرین سٹون کی انسٹالیشن میں مجموعہ جات کی تلخیص کر سکتے ہیں}  



_textdescrgodocs_ [l=ur] {گرین سٹون کے ھدایت نامے}  

#####################################################################
# some macros used on the home page from other packages
#####################################################################
package gli


_textdescrgli_ [l=ur] {یہ نئے مجموعہ جات بنانے، پہلے سے موجود مجموعہ جات کو تبدیل اور ہٹانے میں مدد فراہم کرتا ہے}  

package collector

_textcollector_ [l=ur] {جمع کنندہ}  


package depositor

_textdepositor_ [l=ur] {جمع کنندہ	}  


package gti

_textgti_ [l=ur] {گرین سٹون مترجم}  
_textdescrtranslator_ [l=ur] {یہ کثیراللسانی گرین سٹون انٹرفیس کو تازہ ترین رکھنے میں مدد فراہم کرتا ہے}  


######################################################################
# 'about' page
package about
######################################################################


#------------------------------------------------------------
# text macros
#------------------------------------------------------------

_textabcol_ [l=ur] {اس مجموعہ کے بارے میں	}  

_textsubcols1_ [l=ur] {<p>یہ مجموعہ _1_ چھوٹے مجموعہ جات پر مشتملہے۔ جن میں سےدستیاب درج ذیل ہیں :<blockquote>}  

_textsubcols2_ [l=ur] {</blockquote>
؂آپ پیشکش کی تنضیمات کے صفھہ پرموجودہ زیر استعمال مجموعہ جات اور ذیلی مجموعہ جات کا جائزہ لے (یا تبدیلی کر) سکتے ہیں۔}  

_titleabout_ [l=ur] {بارے میں	}  


######################################################################
# document package
package document
######################################################################


#------------------------------------------------------------
# text macros
#------------------------------------------------------------

_texticonopenbookshelf_ [l=ur] {کتب خانہ کے اس حصے کو بند کریں}  
_texticonclosedbookshelf_ [l=ur] {کتب خانہ کے اس شعبہ کو کھولیں اور مندرجات ملاحظہ فرمائیں}  
_texticonopenbook_ [l=ur] {اس کتاب کو بند کریں}  
_texticonclosedfolder_ [l=ur] {اس تہ بند کو کھوؒلے اور اس میں موجود مواد کا جایزہ لی جے}  
_texticonclosedfolder2_ [l=ur] {ذیلی شعبہ کو کھولیں}  
_texticonopenfolder_ [l=ur] {اس فولڈر کو بند کریں}  

_texticonsmalltext_ [l=ur] {متن کے اس حصہ کو ملاحظہ کریں}  
_texticonsmalltext2_ [l=ur] {متن ملاحظہ کریں:}  
_texticonpointer_ [l=ur] {موجودہ شعبہ}  
_texticondetach_ [l=ur] {اس صفحہ کو الگ دریچہ میں کھولیں}  
_texticonhighlight_ [l=ur] {تلاش کی گئ اصطلاحات کو اجاگر کریں}  
_texticonnohighlight_ [l=ur] {تلاش کی گئ اصطلاحات کو اجاگر نہ کریں}  
_texticoncontracttoc_ [l=ur] {فہرست ابواب کو سکیڑو}  
_texticonexpandtoc_ [l=ur] {فہرست مندرجات کو پھیلائیں}  
_texticonexpandtext_ [l=ur] {تمام متن دکھائیں}  
_texticoncontracttext_ [l=ur] {صرف منتخب کردہ حصہ کو دکھاو}  
_texticonwarning_ [l=ur] {<b>تنبیہ: </b>}  
_texticoncont_ [l=ur] {جاری رہے؟}  



_textgoto_ [l=ur] {صفحہ پر جائیں}  
_textintro_ [l=ur] {<i>(تعارفی متن)</i>}  

_textCONTINUE_ [l=ur] {جاری رہے؟}  

_textEXPANDTEXT_ [l=ur] {متن کو پھیلائیں}  

_textCONTRACTCONTENTS_ [l=ur] {معاہدے کا متن}  

_textDETACH_ [l=ur] {الگ کریں}  

_textEXPANDCONTENTS_ [l=ur] {مندرجات کو پھیلائیں}  

_textCONTRACT_ [l=ur] {متن کو بند کریں}  

_textHIGHLIGHT_ [l=ur] {اجاگر کریں}  

_textNOHIGHLIGHT_ [l=ur] {اجاگر نہ کریں}  

_textPRINT_ [l=ur] {چھاپیں}  

_textnextsearchresult_ [l=ur] {اگلے تلاش شدہ نتائج}  
_textprevsearchresult_ [l=ur] {تلاش کیا ھوا پچھلا نتیجہ}  

# macros for printing page
_textreturnoriginal_ [l=ur] {بنیادی صفحہ پر واپس آئیں}  
_textprintpage_ [l=ur] {اس صفحہ کو چھاہیں}  
_textshowcontents_ [l=ur] {فہرست ملاحظہ کریں}  
_texthidecontents_ [l=ur] {فہرست مندرجات کو چھپائیں}  

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
_textquerytitle_ [l=ur] {اگر_(_thislast_,results _thisfirst_ - _thislast_ for query: _cgiargq_,No matches for query: _cgiargq}  
_textnoquerytitle_ [l=ur] {صفحہ تلاش}  











#alt text for query buttons

_textfreqmsg1_ [l=ur] {الفاظ کی تعداد}  










_textmatches_ [l=ur] {مماثل}  




#these go together in form search:
#"Words  (fold, stem)  ... in field"
_textwordphrase_ [l=ur] {الفاظ}  




_textallfields_ [l=ur] {تمام مندرجات}  
_texttextonly_ [l=ur] {صرف متن}  




# _indexselection_, _jselection_, _nselection_ and _gselection_ are set from 
# within the server - _indexselection_ is always set, but the others may be 
# unset

_textsimplesearch_ [l=ur] {تلاش کرو_indexselection_ _If_(_jselection_,of _jselection_ )_If_(_gselection_, at _gselection_ level )_If_(_nselection_,in _nselection_ language ) میں، جس میں یہ الفاظ پاے جاتے ہوں_querytypeselection_}  














_textdatesearch_ [l=ur] {آپ اس مواد کو کسی تاریخ میں تلاش سکتے ہیں، یا کسی خاص تاریں کے مواد کو ڈھونڈ سکتے ہیں۔ یہ تلاش کا ایک اختیاری پہلو ہے}  



_textad_ [l=ur] {C.E.}  
_textexplaineras_ [l=ur] {بعد مین}  





#text macros for search history

_texthresult_ [l=ur] {نتیجہ}  











######################################################################
# 'preferences' page
package preferences
######################################################################


#------------------------------------------------------------
# text macros
#------------------------------------------------------------



_textsearchprefs_ [l=ur] {تلاش کرنے کی تنظیمات}  

_textpresentationprefs_ [l=ur] {پیشکش کی تنظیمات}  

_textcasediffs_ [l=ur] {چھوٹے اور بڑے حروف تہجی کے فرق}  
_textignorecase_ [l=ur] {بڑے / چھوٹے حروف تہجی کے فرق کو نظر انداز کریں}  
_textmatchcase_ [l=ur] {چھوٹے /  بڑے حروف تہجی ہر صورت میں مطابقت رکھتے ہوں}  



_textaccentdiffs_ [l=ur] {لہجے کے فرق}  
_textignoreaccents_ [l=ur] {لہجے کے فرق کو نظر انداز کریں}  
_textmatchaccents_ [l=ur] {لہجہ ہر صورت میں مطابقت رکھتا ہو}  



_textintlink_ [l=ur] {دستاویزرات حاصل کیے گے بذریعہ:}  
_textlanguage_ [l=ur] {استعمال ہونے والی زبان}  


_textall_ [l=ur] {تمام}  



_textlinkinterm_ [l=ur] {درمیانی صفحہ کی مدد سے}  
_textlinkdirect_ [l=ur] {براہ راست وہاں جائے}  
_textdigitlib_ [l=ur] {اصبعی کتب خانہ}  



_textcollectionoption_ [l=ur] {شامل کیے جانے والے ذیلی مجموعہ جات}  


_textformsearchtype_ [l=ur] {بعد مین}  


_textlargebox_ [l=ur] {بڑا}  



_textnohistory_ [l=ur] {تاریخ تلاش ندارد ہے}  

_textnohistorydisplay_ [l=ur] {تاریخ تلاش ظاہر نہ ہو}  


#####################################################################
# 'browse' package for the dynamic browsing interface
package browse
#####################################################################

_textsortby_ [l=ur] {مسودات کو ترتیب دیں بلحاظ}  
_textalsoshowing_ [l=ur] {یہ بھی دکھایا جا رہا ہے}  

_textdocsperpage_ [l=ur] {فی صفحہ دستاویزات}  

_textfilterby_ [l=ur] {مسودات حاصل کریں جن میں پایا جاتا ہے}  
_textall_ [l=ur] {تمام}  
_textany_ [l=ur] {کوئ بھی}  
_textwords_ [l=ur] {ان الفاظ میں سے	}  
_textleaveblank_ [l=ur] {تمام دستاویزات کے حصول کے لیے اس خانہ کو خالی چھوڑ دیں}  



_nodata_ [l=ur] {<i>کوئ مواد نہیں ہے</i>	}  
_docs_ [l=ur] {مسودات	}  
######################################################################
# 'help' page -- this is lower priority for translating than the
# rest of this file
package help
######################################################################


#------------------------------------------------------------
# text macros
#------------------------------------------------------------

_textHelp_ [l=ur] {مدد}  

# Macros giving a brief help message for navigation bar access buttons
# The arguments to this will be _textXXX_ and _labelXXX_, where XXX is the metadata name. For example, to print out the help message for a titles classifier, the library will use _textdefaulthelp_(_textTitle_,_labelTitle_)
# To customize this for a specific metadata, add a macro named _textXXXhelp_ where XXX is the metadata name
_textdefaulthelp_ [l=ur] {مسودات کی ورق گردانی بلحاظ _1_ اور _2_ بٹن}  




_textBrowsehelp_ [l=ur] {مسودات کی ورق گردانی}  



_texthelptopicstitle_ [l=ur] {موضوعات}  

_textreadingdocs_ [l=ur] {مسودہ کو کیسے پڑھیں}  



# help about the icons
_texthelpopenbookshelf_ [l=ur] {اس کتابوں کی الماری کو کھولو}  
_texthelpopenbook_ [l=ur] {اس کتاب کو کھولیں /بند کریں}  
_texthelpviewtextsection_ [l=ur] {متن کا یہ حصہ ملاحظہ کریں}  


_texthelpdetachpage_ [l=ur] {اس مسل کوایک نۓ دریچے میں کھولو}  

_texthelpsectionarrows_ [l=ur] {اگلے   /  پچھلے حصہ پر جائیں}  


_texthelpsearchingtitle_ [l=ur] {کسی خاص لفظ کو کیسے تلاش کیا جاتا ہے}  



_texthelpquerytermstitle_ [l=ur] {تلاش کی اصطلاحات}  






_texthelpquerytypetitle_ [l=ur] {تلاش کی قسم}  


_texthelpadvancedsearchtitle_ [l=ur] {پیچیدہ تلاش بذریعہ _1_ سرچ انجن}  









_texthelpadvancedsearchextra_ [l=ur] {نوٹ: اگر آپ سادہ تلاش کو استعمال کریں تو یہ تمام operator نظر انداز ہو جائیں گے}  

_texthelpadvsearchlucene_ [l=ur] {۔Lucence مجموعہ جات میں پیچیدہ تلاش}  







_textdatesearch_ [l=ur] {تلاش بلحاظ تواریخ}  



_texthelpdatehowtotitle_ [l=ur] {اس سہولت کو کیسے استعمال کرنا ہے}  





_textchangeprefs_ [l=ur] {اپنی تنظیمات میں تبدیلی}  



_texthelpcollectionprefstitle_ [l=ur] {مجموعہ کی تنظیمات}  
_texthelpcollectionprefs_ [l=ur] {<p>کچھ مجموعہ جات ذیلی مجموعہ پر مشتمل ہیں اور ان میں علیحدہ علیحدہ یا مجموعی طور پر تلاش کی جا سکتی ہے۔اور ایسا کرنے کے لیے آپ صفحہ تنظیمات سے ان ذیلی مجموعہ جات کو اپنی تلاش میں شامل کر سکتے ہیں}  

_texthelplanguageprefstitle_ [l=ur] {لسانی تنظیمات}  





_texthelpsearchprefstitle_ [l=ur] {تلاش کی تنظیمات}  





 














_texthelpscopetitle_ [l=ur] {تلاش کا دائرہ کار}  
_texthelpscope_ [l=ur] {<p>
زیادہ تر مجموعہ جات میں آپ تلاش کے لیے مختلف اشاریہ جات استعمال کرتے ہیں۔ مثال کے طور پر' اشاریہ مصنف'اشاریہ عنوان یا مختلف ابواب اور فقروں کے اشاریہ جات ہو سکتے ہیں۔ عموما آپ کسی بھی اشاریہ سے تلاش کریں تو آپ کو مکمل اور ملتا جلتا مسودہ ہی ملتا ہےأٌٌٌٌٍّّّٔ 
<p>
اگر مزکورہ مسودہ کتابیں ہیں تو وہ مختص شدہ جگہ پر ہی کھولی جا سکتی ہیں۔}  
