<?php
/** Adminer - Compact database management
* @link http://www.adminer.org/
* @author Jakub Vrana, http://www.vrana.cz/
* @copyright 2007 Jakub Vrana
* @license http://www.apache.org/licenses/LICENSE-2.0 Apache License, Version 2.0
* @license http://www.gnu.org/licenses/gpl-2.0.html GNU General Public License, version 2 (one or other)
* @version 3.3.4
*/error_reporting(6135);$Zb=!ereg('^(unsafe_raw)?$',ini_get("filter.default"));if($Zb||ini_get("filter.default_flags")){foreach(array('_GET','_POST','_COOKIE','_SERVER')as$W){$Pf=filter_input_array(constant("INPUT$W"),FILTER_UNSAFE_RAW);if($Pf){$$W=$Pf;}}}if(isset($_GET["file"])){header("Expires: ".gmdate("D, d M Y H:i:s",time()+365*24*60*60)." GMT");if($_GET["file"]=="favicon.ico"){header("Content-Type: image/x-icon");echo
base64_decode("AAABAAEAEBAQAAEABAAoAQAAFgAAACgAAAAQAAAAIAAAAAEABAAAAAAAwAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA////AAAA/wBhTgAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAERERAAAAAAETMzEQAAAAATERExAAAAABMRETEAAAAAExERMQAAAAATERExAAAAABMRETEAAAAAEzMzMREREQATERExEhEhABEzMxEhEREAAREREhERIRAAAAARIRESEAAAAAESEiEQAAAAABEREQAAAAAAAAAAD//9UAwP/VAIB/AACAf/AAgH+kAIB/gACAfwAAgH8AAIABAACAAf8AgAH/AMAA/wD+AP8A/wAIAf+B1QD//9UA");}elseif($_GET["file"]=="default.css"){header("Content-Type: text/css; charset=utf-8");echo'body{color:#000;background:#fff;font:90%/1.25 Verdana,Arial,Helvetica,sans-serif;margin:0;}a{color:blue;}a:visited{color:navy;}a:hover{color:red;}h1{font-size:150%;margin:0;padding:.8em 1em;border-bottom:1px solid #999;font-weight:normal;color:#777;background:#eee;}h2{font-size:150%;margin:0 0 20px -18px;padding:.8em 1em;border-bottom:1px solid #000;color:#000;font-weight:normal;background:#ddf;}h3{font-weight:normal;font-size:130%;margin:1em 0 0;}form{margin:0;}table{margin:1em 20px 0 0;border:0;border-top:1px solid #999;border-left:1px solid #999;font-size:90%;}td,th{border:0;border-right:1px solid #999;border-bottom:1px solid #999;padding:.2em .3em;}th{background:#eee;text-align:left;}thead th{text-align:center;}thead td,thead th{background:#ddf;}fieldset{display:inline;vertical-align:top;padding:.5em .8em;margin:.8em .5em 0 0;border:1px solid #999;}p{margin:.8em 20px 0 0;}img{vertical-align:middle;border:0;}td img{max-width:200px;max-height:200px;}code{background:#eee;}tbody tr:hover td,tbody tr:hover th{background:#eee;}pre{margin:1em 0 0;}input[type=image]{vertical-align:middle;}.loading{cursor:progress;}.loading #loader{display:inline;}.version{color:#777;font-size:67%;}.js .hidden,.nojs .jsonly{display:none;}.nowrap td,.nowrap th,td.nowrap{white-space:pre;}.wrap td{white-space:normal;}.error{color:red;background:#fee;}.error b{background:#fff;font-weight:normal;}.message{color:green;background:#efe;}.error,.message{padding:.5em .8em;margin:1em 20px 0 0;}.char{color:#007F00;}.date{color:#7F007F;}.enum{color:#007F7F;}.binary{color:red;}.odd td{background:#F5F5F5;}.js .checked td,.js .checked th{background:#ddf;}.time{color:silver;font-size:70%;}.function{text-align:right;}.number{text-align:right;}.datetime{text-align:right;}.type{width:15ex;width:auto\\9;}.options select{width:20ex;width:auto\\9;}.active{font-weight:bold;}.sqlarea{width:98%;}#menu{position:absolute;margin:10px 0 0;padding:0 0 30px 0;top:2em;left:0;width:19em;overflow:auto;overflow-y:hidden;white-space:nowrap;}#menu p{padding:.8em 1em;margin:0;border-bottom:1px solid #ccc;}#content{margin:2em 0 0 21em;padding:10px 20px 20px 0;}#lang{position:absolute;top:0;left:0;line-height:1.8em;padding:.3em 1em;}#breadcrumb{white-space:nowrap;position:absolute;top:0;left:21em;background:#eee;height:2em;line-height:1.8em;padding:0 1em;margin:0 0 0 -18px;}#loader{display:none;position:fixed;top:2px;right:2px;z-index:1;}#h1{color:#777;text-decoration:none;font-style:italic;}#version{font-size:67%;color:red;}#schema{margin-left:60px;position:relative;-moz-user-select:none;-webkit-user-select:none;}#schema .table{border:1px solid silver;padding:0 2px;cursor:move;position:absolute;}#schema .references{position:absolute;}.rtl h2{margin:0 -18px 20px 0;}.rtl p,.rtl table,.rtl .error,.rtl .message{margin:1em 0 0 20px;}.rtl #content{margin:2em 21em 0 0;padding:10px 0 20px 20px;}.rtl #breadcrumb{left:auto;right:21em;margin:0 -18px 0 0;}.rtl #lang,.rtl #menu{left:auto;right:0;}@media print{#lang,#menu{display:none;}#content{margin-left:1em;}#breadcrumb{left:1em;}.nowrap td,.nowrap th,td.nowrap{white-space:normal;}}';}elseif($_GET["file"]=="functions.js"){header("Content-Type: text/javascript; charset=utf-8");?>
function toggle(id){var el=document.getElementById(id);el.className=(el.className=='hidden'?'':'hidden');return true;}
function cookie(assign,days){var date=new Date();date.setDate(date.getDate()+days);document.cookie=assign+'; expires='+date;}
function verifyVersion(){cookie('adminer_version=0',1);var script=document.createElement('script');script.src=location.protocol+'//www.adminer.org/version.php';document.body.appendChild(script);}
function selectValue(select){var selected=select.options[select.selectedIndex];return((selected.attributes.value||{}).specified?selected.value:selected.text);}
function trCheck(el){var tr=el.parentNode.parentNode;tr.className=tr.className.replace(/(^|\s)checked(\s|$)/,'$2')+(el.checked?' checked':'');}
function formCheck(el,name){var elems=el.form.elements;for(var i=0;i<elems.length;i++){if(name.test(elems[i].name)){elems[i].checked=el.checked;trCheck(elems[i]);}}}
function tableCheck(){var tables=document.getElementsByTagName('table');for(var i=0;i<tables.length;i++){if(/(^|\s)checkable(\s|$)/.test(tables[i].className)){var trs=tables[i].getElementsByTagName('tr');for(var j=0;j<trs.length;j++){trCheck(trs[j].firstChild.firstChild);}}}}
function formUncheck(id){var el=document.getElementById(id);el.checked=false;trCheck(el);}
function formChecked(el,name){var checked=0;var elems=el.form.elements;for(var i=0;i<elems.length;i++){if(name.test(elems[i].name)&&elems[i].checked){checked++;}}
return checked;}
function tableClick(event){var click=(!window.getSelection||getSelection().isCollapsed);var el=event.target||event.srcElement;while(!/^tr$/i.test(el.tagName)){if(/^table$/i.test(el.tagName)){return;}
if(/^(a|input|textarea)$/i.test(el.tagName)){click=false;}
el=el.parentNode;}
el=el.firstChild.firstChild;if(click){el.click&&el.click();el.onclick&&el.onclick();}
trCheck(el);}
function setHtml(id,html){var el=document.getElementById(id);if(el){if(html==undefined){el.parentNode.innerHTML='&nbsp;';}else{el.innerHTML=html;}}}
function nodePosition(el){var pos=0;while(el=el.previousSibling){pos++;}
return pos;}
function pageClick(href,page,event){if(!isNaN(page)&&page){href+=(page!=1?'&page='+(page-1):'');if(!ajaxSend(href)){location.href=href;}}}
function selectAddRow(field){field.onchange=function(){};var row=field.parentNode.cloneNode(true);var selects=row.getElementsByTagName('select');for(var i=0;i<selects.length;i++){selects[i].name=selects[i].name.replace(/[a-z]\[\d+/,'$&1');selects[i].selectedIndex=0;}
var inputs=row.getElementsByTagName('input');if(inputs.length){inputs[0].name=inputs[0].name.replace(/[a-z]\[\d+/,'$&1');inputs[0].value='';inputs[0].className='';}
field.parentNode.parentNode.appendChild(row);}
function ajaxAbort(){ajaxRequest.onreadystatechange=null;if(ajaxRequest.abort){ajaxRequest.abort();}}
function bodyKeydown(event,button){var target=event.target||event.srcElement;if(event.keyCode==27&&!event.shiftKey&&!event.ctrlKey&&!event.altKey&&!event.metaKey){ajaxAbort();document.body.className=document.body.className.replace(/ loading/g,'');onblur=function(){};if(originalFavicon){replaceFavicon(originalFavicon);}}
if(event.ctrlKey&&(event.keyCode==13||event.keyCode==10)&&!event.altKey&&!event.metaKey&&/select|textarea|input/i.test(target.tagName)){target.blur();if(!ajaxForm(target.form,(button?button+'=1':''))){if(button){target.form[button].click();}else{target.form.submit();}}
return false;}
return true;}
function editingKeydown(event){if((event.keyCode==40||event.keyCode==38)&&event.ctrlKey&&!event.altKey&&!event.metaKey){var target=event.target||event.srcElement;var sibling=(event.keyCode==40?'nextSibling':'previousSibling');var el=target.parentNode.parentNode[sibling];if(el&&(/^tr$/i.test(el.tagName)||(el=el[sibling]))&&/^tr$/i.test(el.tagName)&&(el=el.childNodes[nodePosition(target.parentNode)])&&(el=el.childNodes[nodePosition(target)])){el.focus();}
return false;}
if(event.shiftKey&&!bodyKeydown(event,'insert')){eventStop(event);return false;}
return true;}
function functionChange(select){var input=select.form[select.name.replace(/^function/,'fields')];if(selectValue(select)){if(input.origMaxLength===undefined){input.origMaxLength=input.maxLength;}
input.removeAttribute('maxlength');}else if(input.origMaxLength>=0){input.maxLength=input.origMaxLength;}}
function ajax(url,callback,data){var request=(window.XMLHttpRequest?new XMLHttpRequest():(window.ActiveXObject?new ActiveXObject('Microsoft.XMLHTTP'):false));if(request){request.open((data?'POST':'GET'),url);if(data){request.setRequestHeader('Content-Type','application/x-www-form-urlencoded');}
request.setRequestHeader('X-Requested-With','XMLHttpRequest');request.onreadystatechange=function(){if(request.readyState==4){callback(request);}};request.send(data);}
return request;}
function ajaxSetHtml(url){return ajax(url,function(request){if(request.status){var data=eval('('+request.responseText+')');for(var key in data){setHtml(key,data[key]);}}});}
var originalFavicon;function replaceFavicon(href){var favicon=document.getElementById('favicon');if(favicon){favicon.href=href;favicon.parentNode.appendChild(favicon);}}
var ajaxRequest={};function ajaxSend(url,data,popState,noscroll){if(!history.pushState){return false;}
ajaxAbort();onblur=function(){if(!originalFavicon){originalFavicon=(document.getElementById('favicon')||{}).href;}
replaceFavicon(document.getElementById('loader').firstChild.src);};document.body.className+=' loading';ajaxRequest=ajax(url,function(request){var title=request.getResponseHeader('X-AJAX-Title');if(title){document.title=decodeURIComponent(title);}
var redirect=request.getResponseHeader('X-AJAX-Redirect');if(redirect){return ajaxSend(redirect,'',popState);}
onblur=function(){};if(originalFavicon){replaceFavicon(originalFavicon);}
if(!popState){if(data||url!=location.href){history.pushState(data,'',url);}}
if(!noscroll&&!/&order/.test(url)){scrollTo(0,0);}
setHtml('content',(request.status?request.responseText:'<p class="error">'+noResponse));document.body.className=document.body.className.replace(/ loading/g,'');var content=document.getElementById('content');var scripts=content.getElementsByTagName('script');var length=scripts.length;for(var i=0;i<length;i++){var script=document.createElement('script');script.text=scripts[i].text;content.appendChild(script);}
var as=document.getElementById('menu').getElementsByTagName('a');var href=location.href.replace(/(&(sql=|dump=|(select|table)=[^&]*)).*/,'$1');for(var i=0;i<as.length;i++){as[i].className=(href==as[i].href?'active':'');}
var dump=document.getElementById('dump');if(dump){var match=/&(select|table)=([^&]+)/.exec(href);dump.href=dump.href.replace(/[^=]+$/,'')+(match?match[2]:'');}
if(window.jush){jush.highlight_tag('code',0);}},data);return ajaxRequest;}
onpopstate=function(event){if((ajaxRequest.send||event.state)&&!/#/.test(location.href)){ajaxSend(location.href,(event.state&&confirm(areYouSure)?event.state:''),1);}else{ajaxRequest.send=true;}};function ajaxForm(form,data,noscroll){if((/&(database|scheme|create|view|sql|user|dump|call)=/.test(location.href)&&!/\./.test(data))||(form.onsubmit&&form.onsubmit()===false)){return false;}
var params=[];for(var i=0;i<form.elements.length;i++){var el=form.elements[i];if(/file/i.test(el.type)&&el.value){return false;}else if(el.name&&(!/checkbox|radio|submit|file/i.test(el.type)||el.checked)){params.push(encodeURIComponent(el.name)+'='+encodeURIComponent(/select/i.test(el.tagName)?selectValue(el):el.value));}}
if(data){params.push(data);}
if(form.method=='post'){return ajaxSend((/\?/.test(form.action)?form.action:location.href),params.join('&'),false,noscroll);}
return ajaxSend((form.action||location.href).replace(/\?.*/,'')+'?'+params.join('&'),'',false,noscroll);}
function selectDblClick(td,event,text){if(/input|textarea/i.test(td.firstChild.tagName)){return;}
var original=td.innerHTML;var input=document.createElement(text?'textarea':'input');input.onkeydown=function(event){if(!event){event=window.event;}
if(event.keyCode==27&&!(event.ctrlKey||event.shiftKey||event.altKey||event.metaKey)){td.innerHTML=original;}};var pos=event.rangeOffset;var value=td.firstChild.alt||td.textContent||td.innerText;input.style.width=Math.max(td.clientWidth-14,20)+'px';if(text){var rows=1;value.replace(/\n/g,function(){rows++;});input.rows=rows;}
if(value=='\u00A0'||td.getElementsByTagName('i').length){value='';}
if(document.selection){var range=document.selection.createRange();range.moveToPoint(event.clientX,event.clientY);var range2=range.duplicate();range2.moveToElementText(td);range2.setEndPoint('EndToEnd',range);pos=range2.text.length;}
td.innerHTML='';td.appendChild(input);input.focus();if(text==2){return ajax(location.href+'&'+encodeURIComponent(td.id)+'=',function(request){if(request.status){input.value=request.responseText;input.name=td.id;}});}
input.value=value;input.name=td.id;input.selectionStart=pos;input.selectionEnd=pos;if(document.selection){var range=document.selection.createRange();range.moveEnd('character',-input.value.length+pos);range.select();}}
function bodyClick(event,db,ns){if(event.button||event.shiftKey||event.altKey||event.metaKey){return;}
if(event.getPreventDefault?event.getPreventDefault():event.returnValue===false||event.defaultPrevented){return false;}
var el=event.target||event.srcElement;if(/^a$/i.test(el.parentNode.tagName)){el=el.parentNode;}
if(/^a$/i.test(el.tagName)&&!/:|#|&download=/i.test(el.getAttribute('href'))&&/[&?]username=/.test(el.href)&&!event.ctrlKey){var match=/&db=([^&]*)/.exec(el.href);var match2=/&ns=([^&]*)/.exec(el.href);return!(db==(match?decodeURIComponent(match[1]):'')&&ns==(match2?decodeURIComponent(match2[1]):'')&&ajaxSend(el.href));}
if(/^input$/i.test(el.tagName)&&/image|submit/.test(el.type)){if(event.ctrlKey){el.form.target='_blank';}else{return!ajaxForm(el.form,(el.name?encodeURIComponent(el.name)+(el.type=='image'?'.x':'')+'=1':''),el.type=='image');}}
return true;}
function eventStop(event){if(event.stopPropagation){event.stopPropagation();}else{event.cancelBubble=true;}}
var jushRoot=location.protocol + '//www.adminer.org/static/';function bodyLoad(version){if(history.state!==undefined){onpopstate(history);}
if(jushRoot){var script=document.createElement('script');script.src=jushRoot+'jush.js';script.onload=function(){if(window.jush){jush.create_links=' target="_blank" rel="noreferrer"';jush.urls.sql_sqlset=jush.urls.sql[0]=jush.urls.sqlset[0]=jush.urls.sqlstatus[0]='http://dev.mysql.com/doc/refman/'+version+'/en/$key';var pgsql='http://www.postgresql.org/docs/'+version+'/static/';jush.urls.pgsql_pgsqlset=jush.urls.pgsql[0]=pgsql+'$key';jush.urls.pgsqlset[0]=pgsql+'runtime-config-$key.html#GUC-$1';jush.style(jushRoot+'jush.css');if(window.jushLinks){jush.custom_links=jushLinks;}
jush.highlight_tag('code',0);}};script.onreadystatechange=function(){if(/^(loaded|complete)$/.test(script.readyState)){script.onload();}};document.body.appendChild(script);}}
function formField(form,name){for(var i=0;i<form.length;i++){if(form[i].name==name){return form[i];}}}
function typePassword(el,disable){try{el.type=(disable?'text':'password');}catch(e){}}
function loginDriver(driver){var trs=driver.parentNode.parentNode.parentNode.rows;for(var i=1;i<trs.length;i++){trs[i].className=(/sqlite/.test(driver.value)?'hidden':'');}}
function textareaKeydown(target,event){if(!event.shiftKey&&!event.altKey&&!event.ctrlKey&&!event.metaKey){if(event.keyCode==9){if(target.setSelectionRange){var start=target.selectionStart;var scrolled=target.scrollTop;target.value=target.value.substr(0,start)+'\t'+target.value.substr(target.selectionEnd);target.setSelectionRange(start+1,start+1);target.scrollTop=scrolled;return false;}else if(target.createTextRange){document.selection.createRange().text='\t';return false;}}
if(event.keyCode==27){var els=target.form.elements;for(var i=1;i<els.length;i++){if(els[i-1]==target){els[i].focus();break;}}
return false;}}
return true;}
var added='.',rowCount;function delimiterEqual(val,a,b){return(val==a+'_'+b||val==a+b||val==a+b.charAt(0).toUpperCase()+b.substr(1));}
function idfEscape(s){return s.replace(/`/,'``');}
function editingNameChange(field){var name=field.name.substr(0,field.name.length-7);var type=formField(field.form,name+'[type]');var opts=type.options;var candidate;var val=field.value;for(var i=opts.length;i--;){var match=/(.+)`(.+)/.exec(opts[i].value);if(!match){if(candidate&&i==opts.length-2&&val==opts[candidate].value.replace(/.+`/,'')&&name=='fields[1]'){return;}
break;}
var table=match[1];var column=match[2];var tables=[table,table.replace(/s$/,''),table.replace(/es$/,'')];for(var j=0;j<tables.length;j++){table=tables[j];if(val==column||val==table||delimiterEqual(val,table,column)||delimiterEqual(val,column,table)){if(candidate){return;}
candidate=i;break;}}}
if(candidate){type.selectedIndex=candidate;type.onchange();}}
function editingAddRow(button,allowed,focus){if(allowed&&rowCount>=allowed){return false;}
var match=/(\d+)(\.\d+)?/.exec(button.name);var x=match[0]+(match[2]?added.substr(match[2].length):added)+'1';var row=button.parentNode.parentNode;var row2=row.cloneNode(true);var tags=row.getElementsByTagName('select');var tags2=row2.getElementsByTagName('select');for(var i=0;i<tags.length;i++){tags2[i].name=tags[i].name.replace(/([0-9.]+)/,x);tags2[i].selectedIndex=tags[i].selectedIndex;}
tags=row.getElementsByTagName('input');tags2=row2.getElementsByTagName('input');var input=tags2[0];for(var i=0;i<tags.length;i++){if(tags[i].name=='auto_increment_col'){tags2[i].value=x;tags2[i].checked=false;}
tags2[i].name=tags[i].name.replace(/([0-9.]+)/,x);if(/\[(orig|field|comment|default)/.test(tags[i].name)){tags2[i].value='';}
if(/\[(has_default)/.test(tags[i].name)){tags2[i].checked=false;}}
tags[0].onchange=function(){editingNameChange(tags[0]);};row.parentNode.insertBefore(row2,row.nextSibling);if(focus){input.onchange=function(){editingNameChange(input);};input.focus();}
added+='0';rowCount++;return true;}
function editingRemoveRow(button){var field=formField(button.form,button.name.replace(/drop_col(.+)/,'fields$1[field]'));field.parentNode.removeChild(field);button.parentNode.parentNode.style.display='none';return true;}
var lastType='';function editingTypeChange(type){var name=type.name.substr(0,type.name.length-6);var text=selectValue(type);for(var i=0;i<type.form.elements.length;i++){var el=type.form.elements[i];if(el.name==name+'[length]'&&!((/(char|binary)$/.test(lastType)&&/(char|binary)$/.test(text))||(/(enum|set)$/.test(lastType)&&/(enum|set)$/.test(text)))){el.value='';}
if(lastType=='timestamp'&&el.name==name+'[has_default]'&&/timestamp/i.test(formField(type.form,name+'[default]').value)){el.checked=false;}
if(el.name==name+'[collation]'){el.className=(/(char|text|enum|set)$/.test(text)?'':'hidden');}
if(el.name==name+'[unsigned]'){el.className=(/(int|float|double|decimal)$/.test(text)?'':'hidden');}
if(el.name==name+'[on_delete]'){el.className=(/`/.test(text)?'':'hidden');}}}
function editingLengthFocus(field){var td=field.parentNode;if(/(enum|set)$/.test(selectValue(td.previousSibling.firstChild))){var edit=document.getElementById('enum-edit');var val=field.value;edit.value=(/^'.+','.+'$/.test(val)?val.substr(1,val.length-2).replace(/','/g,"\n").replace(/''/g,"'"):val);td.appendChild(edit);field.style.display='none';edit.style.display='inline';edit.focus();}}
function editingLengthBlur(edit){var field=edit.parentNode.firstChild;var val=edit.value;field.value=(/\n/.test(val)?"'"+val.replace(/\n+$/,'').replace(/'/g,"''").replace(/\n/g,"','")+"'":val);field.style.display='inline';edit.style.display='none';}
function columnShow(checked,column){var trs=document.getElementById('edit-fields').getElementsByTagName('tr');for(var i=0;i<trs.length;i++){trs[i].getElementsByTagName('td')[column].className=(checked?'':'hidden');}}
function partitionByChange(el){var partitionTable=/RANGE|LIST/.test(selectValue(el));el.form['partitions'].className=(partitionTable||!el.selectedIndex?'hidden':'');document.getElementById('partition-table').className=(partitionTable?'':'hidden');}
function partitionNameChange(el){var row=el.parentNode.parentNode.cloneNode(true);row.firstChild.firstChild.value='';el.parentNode.parentNode.parentNode.appendChild(row);el.onchange=function(){};}
function foreignAddRow(field){field.onchange=function(){};var row=field.parentNode.parentNode.cloneNode(true);var selects=row.getElementsByTagName('select');for(var i=0;i<selects.length;i++){selects[i].name=selects[i].name.replace(/\]/,'1$&');selects[i].selectedIndex=0;}
field.parentNode.parentNode.parentNode.appendChild(row);}
function indexesAddRow(field){field.onchange=function(){};var parent=field.parentNode.parentNode;var row=parent.cloneNode(true);var selects=row.getElementsByTagName('select');for(var i=0;i<selects.length;i++){selects[i].name=selects[i].name.replace(/indexes\[\d+/,'$&1');selects[i].selectedIndex=0;}
var inputs=row.getElementsByTagName('input');for(var i=0;i<inputs.length;i++){inputs[i].name=inputs[i].name.replace(/indexes\[\d+/,'$&1');inputs[i].value='';}
parent.parentNode.appendChild(row);}
function indexesChangeColumn(field,prefix){var columns=field.parentNode.parentNode.getElementsByTagName('select');var names=[];for(var i=0;i<columns.length;i++){var value=selectValue(columns[i]);if(value){names.push(value);}}
field.form[field.name.replace(/\].*/,'][name]')].value=prefix+names.join('_');}
function indexesAddColumn(field,prefix){field.onchange=function(){indexesChangeColumn(field,prefix);};var select=field.form[field.name.replace(/\].*/,'][type]')];if(!select.selectedIndex){select.selectedIndex=3;select.onchange();}
var column=field.parentNode.cloneNode(true);select=column.getElementsByTagName('select')[0];select.name=select.name.replace(/\]\[\d+/,'$&1');select.selectedIndex=0;var input=column.getElementsByTagName('input')[0];input.name=input.name.replace(/\]\[\d+/,'$&1');input.value='';field.parentNode.parentNode.appendChild(column);field.onchange();}
var that,x,y;function schemaMousedown(el,event){if((event.which?event.which:event.button)==1){that=el;x=event.clientX-el.offsetLeft;y=event.clientY-el.offsetTop;}}
function schemaMousemove(ev){if(that!==undefined){ev=ev||event;var left=(ev.clientX-x)/em;var top=(ev.clientY-y)/em;var divs=that.getElementsByTagName('div');var lineSet={};for(var i=0;i<divs.length;i++){if(divs[i].className=='references'){var div2=document.getElementById((/^refs/.test(divs[i].id)?'refd':'refs')+divs[i].id.substr(4));var ref=(tablePos[divs[i].title]?tablePos[divs[i].title]:[div2.parentNode.offsetTop/em,0]);var left1=-1;var id=divs[i].id.replace(/^ref.(.+)-.+/,'$1');if(divs[i].parentNode!=div2.parentNode){left1=Math.min(0,ref[1]-left)-1;divs[i].style.left=left1+'em';divs[i].getElementsByTagName('div')[0].style.width=-left1+'em';var left2=Math.min(0,left-ref[1])-1;div2.style.left=left2+'em';div2.getElementsByTagName('div')[0].style.width=-left2+'em';}
if(!lineSet[id]){var line=document.getElementById(divs[i].id.replace(/^....(.+)-.+$/,'refl$1'));var top1=top+divs[i].offsetTop/em;var top2=top+div2.offsetTop/em;if(divs[i].parentNode!=div2.parentNode){top2+=ref[0]-top;line.getElementsByTagName('div')[0].style.height=Math.abs(top1-top2)+'em';}
line.style.left=(left+left1)+'em';line.style.top=Math.min(top1,top2)+'em';lineSet[id]=true;}}}
that.style.left=left+'em';that.style.top=top+'em';}}
function schemaMouseup(ev,db){if(that!==undefined){ev=ev||event;tablePos[that.firstChild.firstChild.firstChild.data]=[(ev.clientY-y)/em,(ev.clientX-x)/em];that=undefined;var s='';for(var key in tablePos){s+='_'+key+':'+Math.round(tablePos[key][0]*10000)/10000+'x'+Math.round(tablePos[key][1]*10000)/10000;}
s=encodeURIComponent(s.substr(1));var link=document.getElementById('schema-link');link.href=link.href.replace(/[^=]+$/,'')+s;cookie('adminer_schema-'+db+'='+s,30);}}<?php
}else{header("Content-Type: image/gif");switch($_GET["file"]){case"plus.gif":echo
base64_decode("R0lGODdhEgASAKEAAO7u7gAAAJmZmQAAACwAAAAAEgASAAACIYSPqcvtD00I8cwqKb5v+q8pIAhxlRmhZYi17iPE8kzLBQA7");break;case"cross.gif":echo
base64_decode("R0lGODdhEgASAKEAAO7u7gAAAJmZmQAAACwAAAAAEgASAAACI4SPqcvtDyMKYdZGb355wy6BX3dhlOEx57FK7gtHwkzXNl0AADs=");break;case"up.gif":echo
base64_decode("R0lGODdhEgASAKEAAO7u7gAAAJmZmQAAACwAAAAAEgASAAACIISPqcvtD00IUU4K730T9J5hFTiKEXmaYcW2rgDH8hwXADs=");break;case"down.gif":echo
base64_decode("R0lGODdhEgASAKEAAO7u7gAAAJmZmQAAACwAAAAAEgASAAACIISPqcvtD00I8cwqKb5bV/5cosdMJtmcHca2lQDH8hwXADs=");break;case"arrow.gif":echo
base64_decode("R0lGODlhCAAKAIAAAICAgP///yH5BAEAAAEALAAAAAAIAAoAAAIPBIJplrGLnpQRqtOy3rsAADs=");break;case"loader.gif":echo
base64_decode("R0lGODlhEAAQAPIAAP///wAAAMLCwkJCQgAAAGJiYoKCgpKSkiH/C05FVFNDQVBFMi4wAwEAAAAh/hpDcmVhdGVkIHdpdGggYWpheGxvYWQuaW5mbwAh+QQJCgAAACwAAAAAEAAQAAADMwi63P4wyklrE2MIOggZnAdOmGYJRbExwroUmcG2LmDEwnHQLVsYOd2mBzkYDAdKa+dIAAAh+QQJCgAAACwAAAAAEAAQAAADNAi63P5OjCEgG4QMu7DmikRxQlFUYDEZIGBMRVsaqHwctXXf7WEYB4Ag1xjihkMZsiUkKhIAIfkECQoAAAAsAAAAABAAEAAAAzYIujIjK8pByJDMlFYvBoVjHA70GU7xSUJhmKtwHPAKzLO9HMaoKwJZ7Rf8AYPDDzKpZBqfvwQAIfkECQoAAAAsAAAAABAAEAAAAzMIumIlK8oyhpHsnFZfhYumCYUhDAQxRIdhHBGqRoKw0R8DYlJd8z0fMDgsGo/IpHI5TAAAIfkECQoAAAAsAAAAABAAEAAAAzIIunInK0rnZBTwGPNMgQwmdsNgXGJUlIWEuR5oWUIpz8pAEAMe6TwfwyYsGo/IpFKSAAAh+QQJCgAAACwAAAAAEAAQAAADMwi6IMKQORfjdOe82p4wGccc4CEuQradylesojEMBgsUc2G7sDX3lQGBMLAJibufbSlKAAAh+QQJCgAAACwAAAAAEAAQAAADMgi63P7wCRHZnFVdmgHu2nFwlWCI3WGc3TSWhUFGxTAUkGCbtgENBMJAEJsxgMLWzpEAACH5BAkKAAAALAAAAAAQABAAAAMyCLrc/jDKSatlQtScKdceCAjDII7HcQ4EMTCpyrCuUBjCYRgHVtqlAiB1YhiCnlsRkAAAOwAAAAAAAAAAAA==");break;}}exit;}function
connection(){global$g;return$g;}function
adminer(){global$b;return$b;}function
idf_unescape($s){$Nc=substr($s,-1);return
str_replace($Nc.$Nc,$Nc,substr($s,1,-1));}function
escape_string($W){return
substr(q($W),1,-1);}function
remove_slashes($oe,$Zb=false){if(get_magic_quotes_gpc()){while(list($w,$W)=each($oe)){foreach($W
as$Jc=>$V){unset($oe[$w][$Jc]);if(is_array($V)){$oe[$w][stripslashes($Jc)]=$V;$oe[]=&$oe[$w][stripslashes($Jc)];}else{$oe[$w][stripslashes($Jc)]=($Zb?$V:stripslashes($V));}}}}}function
bracket_escape($s,$_a=false){static$Df=array(':'=>':1',']'=>':2','['=>':3');return
strtr($s,($_a?array_flip($Df):$Df));}function
h($M){return
htmlspecialchars(str_replace("\0","",$M),ENT_QUOTES);}function
nbsp($M){return(trim($M)!=""?h($M):"&nbsp;");}function
nl_br($M){return
str_replace("\n","<br>",$M);}function
checkbox($A,$X,$Ja,$Lc="",$Cd="",$Ic=false){static$r=0;$r++;$G="<input type='checkbox' name='$A' value='".h($X)."'".($Ja?" checked":"").($Cd?' onclick="'.h($Cd).'"':'').($Ic?" class='jsonly'":"")." id='checkbox-$r'>";return($Lc!=""?"<label for='checkbox-$r'>$G".h($Lc)."</label>":$G);}function
optionlist($Gd,$Oe=null,$Uf=false){$G="";foreach($Gd
as$Jc=>$V){$Hd=array($Jc=>$V);if(is_array($V)){$G.='<optgroup label="'.h($Jc).'">';$Hd=$V;}foreach($Hd
as$w=>$W){$G.='<option'.($Uf||is_string($w)?' value="'.h($w).'"':'').(($Uf||is_string($w)?(string)$w:$W)===$Oe?' selected':'').'>'.h($W);}if(is_array($V)){$G.='</optgroup>';}}return$G;}function
html_select($A,$Gd,$X="",$Bd=true){if($Bd){return"<select name='".h($A)."'".(is_string($Bd)?' onchange="'.h($Bd).'"':"").">".optionlist($Gd,$X)."</select>";}$G="";foreach($Gd
as$w=>$W){$G.="<label><input type='radio' name='".h($A)."' value='".h($w)."'".($w==$X?" checked":"").">".h($W)."</label>";}return$G;}function
confirm($ab="",$bf=false){return" onclick=\"".($bf?"eventStop(event); ":"")."return confirm('".'Are you sure?'.($ab?" (' + $ab + ')":"")."');\"";}function
print_fieldset($r,$Sc,$ag=false,$Cd=""){echo"<fieldset><legend><a href='#fieldset-$r' onclick=\"".h($Cd)."return !toggle('fieldset-$r');\">$Sc</a></legend><div id='fieldset-$r'".($ag?"":" class='hidden'").">\n";}function
bold($Ea){return($Ea?" class='active'":"");}function
odd($G=' class="odd"'){static$q=0;if(!$G){$q=-1;}return($q++%
2?$G:'');}function
js_escape($M){return
addcslashes($M,"\r\n'\\/");}function
json_row($w,$W=null){static$ac=true;if($ac){echo"{";}if($w!=""){echo($ac?"":",")."\n\t\"".addcslashes($w,"\r\n\"\\").'": '.(isset($W)?'"'.addcslashes($W,"\r\n\"\\").'"':'undefined');$ac=false;}else{echo"\n}\n";$ac=true;}}function
ini_bool($Ac){$W=ini_get($Ac);return(eregi('^(on|true|yes)$',$W)||(int)$W);}function
sid(){static$G;if(!isset($G)){$G=(SID&&!($_COOKIE&&ini_bool("session.use_cookies")));}return$G;}function
q($M){global$g;return$g->quote($M);}function
get_vals($E,$e=0){global$g;$G=array();$F=$g->query($E);if(is_object($F)){while($H=$F->fetch_row()){$G[]=$H[$e];}}return$G;}function
get_key_vals($E,$h=null){global$g;if(!is_object($h)){$h=$g;}$G=array();$F=$h->query($E);if(is_object($F)){while($H=$F->fetch_row()){$G[$H[0]]=$H[1];}}return$G;}function
get_rows($E,$h=null,$k="<p class='error'>"){global$g;$Wa=(is_object($h)?$h:$g);$G=array();$F=$Wa->query($E);if(is_object($F)){while($H=$F->fetch_assoc()){$G[]=$H;}}elseif(!$F&&!is_object($h)&&$k&&defined("PAGE_HEADER")){echo$k.error()."\n";}return$G;}function
unique_array($H,$u){foreach($u
as$t){if(ereg("PRIMARY|UNIQUE",$t["type"])){$G=array();foreach($t["columns"]as$w){if(!isset($H[$w])){continue
2;}$G[$w]=$H[$w];}return$G;}}$G=array();foreach($H
as$w=>$W){if(!preg_match('~^(COUNT\\((\\*|(DISTINCT )?`(?:[^`]|``)+`)\\)|(AVG|GROUP_CONCAT|MAX|MIN|SUM)\\(`(?:[^`]|``)+`\\))$~',$w)){$G[$w]=$W;}}return$G;}function
where($Z){global$v;$G=array();foreach((array)$Z["where"]as$w=>$W){$G[]=idf_escape(bracket_escape($w,1)).(($v=="sql"&&ereg('\\.',$W))||$v=="mssql"?" LIKE ".exact_value(addcslashes($W,"%_\\")):" = ".exact_value($W));}foreach((array)$Z["null"]as$w){$G[]=idf_escape($w)." IS NULL";}return
implode(" AND ",$G);}function
where_check($W){parse_str($W,$Ia);remove_slashes(array(&$Ia));return
where($Ia);}function
where_link($q,$e,$X,$Dd="="){return"&where%5B$q%5D%5Bcol%5D=".urlencode($e)."&where%5B$q%5D%5Bop%5D=".urlencode((isset($X)?$Dd:"IS NULL"))."&where%5B$q%5D%5Bval%5D=".urlencode($X);}function
cookie($A,$X){global$ba;$Td=array($A,(ereg("\n",$X)?"":$X),time()+2592000,preg_replace('~\\?.*~','',$_SERVER["REQUEST_URI"]),"",$ba);if(version_compare(PHP_VERSION,'5.2.0')>=0){$Td[]=true;}return
call_user_func_array('setcookie',$Td);}function
restart_session(){if(!ini_bool("session.use_cookies")){session_start();}}function&get_session($w){return$_SESSION[$w][DRIVER][SERVER][$_GET["username"]];}function
set_session($w,$W){$_SESSION[$w][DRIVER][SERVER][$_GET["username"]]=$W;}function
auth_url($rb,$K,$U){global$sb;preg_match('~([^?]*)\\??(.*)~',remove_from_uri(implode("|",array_keys($sb))."|username|".session_name()),$_);return"$_[1]?".(sid()?SID."&":"").($rb!="server"||$K!=""?urlencode($rb)."=".urlencode($K)."&":"")."username=".urlencode($U).($_[2]?"&$_[2]":"");}function
is_ajax(){return($_SERVER["HTTP_X_REQUESTED_WITH"]=="XMLHttpRequest");}function
redirect($Vc,$gd=null){if(isset($gd)){restart_session();$_SESSION["messages"][preg_replace('~^[^?]*~','',(isset($Vc)?$Vc:$_SERVER["REQUEST_URI"]))][]=$gd;}if(isset($Vc)){if($Vc==""){$Vc=".";}header((is_ajax()?"X-AJAX-Redirect":"Location").": $Vc");exit;}}function
query_redirect($E,$Vc,$gd,$ue=true,$Ob=true,$Vb=false){global$g,$k,$b;if($Ob){$Vb=!$g->query($E);}$Xe="";if($E){$Xe=$b->messageQuery("$E;");}if($Vb){$k=error().$Xe;return
false;}if($ue){redirect($Vc,$gd.$Xe);}return
true;}function
queries($E=null){global$g;static$se=array();if(!isset($E)){return
implode(";\n",$se);}$se[]=(ereg(';$',$E)?"DELIMITER ;;\n$E;\nDELIMITER ":$E);return$g->query($E);}function
apply_queries($E,$Q,$Kb='table'){foreach($Q
as$O){if(!queries("$E ".$Kb($O))){return
false;}}return
true;}function
queries_redirect($Vc,$gd,$ue){return
query_redirect(queries(),$Vc,$gd,$ue,false,!$ue);}function
remove_from_uri($Sd=""){return
substr(preg_replace("~(?<=[?&])($Sd".(SID?"":"|".session_name()).")=[^&]*&~",'',"$_SERVER[REQUEST_URI]&"),0,-1);}function
pagination($C,$fb){return" ".($C==$fb?$C+1:'<a href="'.h(remove_from_uri("page").($C?"&page=$C":"")).'">'.($C+1)."</a>");}function
get_file($w,$kb=false){$Xb=$_FILES[$w];if(!$Xb||$Xb["error"]){return$Xb["error"];}$G=file_get_contents($kb&&ereg('\\.gz$',$Xb["name"])?"compress.zlib://$Xb[tmp_name]":($kb&&ereg('\\.bz2$',$Xb["name"])?"compress.bzip2://$Xb[tmp_name]":$Xb["tmp_name"]));if($kb){$Ye=substr($G,0,3);if(function_exists("iconv")&&ereg("^\xFE\xFF|^\xFF\xFE",$Ye,$_e)){$G=iconv("utf-16","utf-8",$G);}elseif($Ye=="\xEF\xBB\xBF"){$G=substr($G,3);}}return$G;}function
upload_error($k){$ed=($k==UPLOAD_ERR_INI_SIZE?ini_get("upload_max_filesize"):0);return($k?'Unable to upload a file.'.($ed?" ".sprintf('Maximum allowed file size is %sB.',$ed):""):'File does not exist.');}function
repeat_pattern($ae,$x){return
str_repeat("$ae{0,65535}",$x/65535)."$ae{0,".($x
%
65535)."}";}function
is_utf8($W){return(preg_match('~~u',$W)&&!preg_match('~[\\0-\\x8\\xB\\xC\\xE-\\x1F]~',$W));}function
shorten_utf8($M,$x=80,$ff=""){if(!preg_match("(^(".repeat_pattern("[\t\r\n -\x{FFFF}]",$x).")($)?)u",$M,$_)){preg_match("(^(".repeat_pattern("[\t\r\n -~]",$x).")($)?)",$M,$_);}return
h($_[1]).$ff.(isset($_[2])?"":"<i>...</i>");}function
friendly_url($W){return
preg_replace('~[^a-z0-9_]~i','-',$W);}function
hidden_fields($oe,$wc=array()){while(list($w,$W)=each($oe)){if(is_array($W)){foreach($W
as$Jc=>$V){$oe[$w."[$Jc]"]=$V;}}elseif(!in_array($w,$wc)){echo'<input type="hidden" name="'.h($w).'" value="'.h($W).'">';}}}function
hidden_fields_get(){echo(sid()?'<input type="hidden" name="'.session_name().'" value="'.h(session_id()).'">':''),(SERVER!==null?'<input type="hidden" name="'.DRIVER.'" value="'.h(SERVER).'">':""),'<input type="hidden" name="username" value="'.h($_GET["username"]).'">';}function
column_foreign_keys($O){global$b;$G=array();foreach($b->foreignKeys($O)as$n){foreach($n["source"]as$W){$G[$W][]=$n;}}return$G;}function
enum_input($S,$xa,$l,$X,$Cb=null){global$b;preg_match_all("~'((?:[^']|'')*)'~",$l["length"],$Zc);$G=(isset($Cb)?"<label><input type='$S'$xa value='$Cb'".((is_array($X)?in_array($Cb,$X):$X===0)?" checked":"")."><i>".'empty'."</i></label>":"");foreach($Zc[1]as$q=>$W){$W=stripcslashes(str_replace("''","'",$W));$Ja=(is_int($X)?$X==$q+1:(is_array($X)?in_array($q+1,$X):$X===$W));$G.=" <label><input type='$S'$xa value='".($q+1)."'".($Ja?' checked':'').'>'.h($b->editVal($W,$l)).'</label>';}return$G;}function
input($l,$X,$o){global$T,$b,$v;$A=h(bracket_escape($l["field"]));echo"<td class='function'>";$Be=($v=="mssql"&&$l["auto_increment"]);if($Be&&!$_POST["save"]){$o=null;}$lc=(isset($_GET["select"])||$Be?array("orig"=>'original'):array())+$b->editFunctions($l);$xa=" name='fields[$A]'";if($l["type"]=="enum"){echo
nbsp($lc[""])."<td>".$b->editInput($_GET["edit"],$l,$xa,$X);}else{$ac=0;foreach($lc
as$w=>$W){if($w===""||!$W){break;}$ac++;}$Bd=($ac?" onchange=\"var f = this.form['function[".h(js_escape(bracket_escape($l["field"])))."]']; if ($ac > f.selectedIndex) f.selectedIndex = $ac;\"":"");$xa.=$Bd;echo(count($lc)>1?html_select("function[$A]",$lc,!isset($o)||in_array($o,$lc)||isset($lc[$o])?$o:"","functionChange(this);"):nbsp(reset($lc))).'<td>';$Cc=$b->editInput($_GET["edit"],$l,$xa,$X);if($Cc!=""){echo$Cc;}elseif($l["type"]=="set"){preg_match_all("~'((?:[^']|'')*)'~",$l["length"],$Zc);foreach($Zc[1]as$q=>$W){$W=stripcslashes(str_replace("''","'",$W));$Ja=(is_int($X)?($X>>$q)&1:in_array($W,explode(",",$X),true));echo" <label><input type='checkbox' name='fields[$A][$q]' value='".(1<<$q)."'".($Ja?' checked':'')."$Bd>".h($b->editVal($W,$l)).'</label>';}}elseif(ereg('blob|bytea|raw|file',$l["type"])&&ini_bool("file_uploads")){echo"<input type='file' name='fields-$A'$Bd>";}elseif(ereg('text|lob',$l["type"])){echo"<textarea ".($v!="sqlite"||ereg("\n",$X)?"cols='50' rows='12'":"cols='30' rows='1' style='height: 1.2em;'")."$xa>".h($X).'</textarea>';}else{$fd=(!ereg('int',$l["type"])&&preg_match('~^(\\d+)(,(\\d+))?$~',$l["length"],$_)?((ereg("binary",$l["type"])?2:1)*$_[1]+($_[3]?1:0)+($_[2]&&!$l["unsigned"]?1:0)):($T[$l["type"]]?$T[$l["type"]]+($l["unsigned"]?0:1):0));echo"<input value='".h($X)."'".($fd?" maxlength='$fd'":"").(ereg('char|binary',$l["type"])&&$fd>20?" size='40'":"")."$xa>";}}}function
process_input($l){global$b;$s=bracket_escape($l["field"]);$o=$_POST["function"][$s];$X=$_POST["fields"][$s];if($l["type"]=="enum"){if($X==-1){return
false;}if($X==""){return"NULL";}return+$X;}if($l["auto_increment"]&&$X==""){return
null;}if($o=="orig"){return($l["on_update"]=="CURRENT_TIMESTAMP"?idf_escape($l["field"]):false);}if($o=="NULL"){return"NULL";}if($l["type"]=="set"){return
array_sum((array)$X);}if(ereg('blob|bytea|raw|file',$l["type"])&&ini_bool("file_uploads")){$Xb=get_file("fields-$s");if(!is_string($Xb)){return
false;}return
q($Xb);}return$b->processInput($l,$X,$o);}function
search_tables(){global$b,$g;$_GET["where"][0]["op"]="LIKE %%";$_GET["where"][0]["val"]=$_POST["query"];$gc=false;foreach(table_status()as$O=>$P){$A=$b->tableName($P);if(isset($P["Engine"])&&$A!=""&&(!$_POST["tables"]||in_array($O,$_POST["tables"]))){$F=$g->query("SELECT".limit("1 FROM ".table($O)," WHERE ".implode(" AND ",$b->selectSearchProcess(fields($O),array())),1));if($F->fetch_row()){if(!$gc){echo"<ul>\n";$gc=true;}echo"<li><a href='".h(ME."select=".urlencode($O)."&where[0][op]=".urlencode($_GET["where"][0]["op"])."&where[0][val]=".urlencode($_GET["where"][0]["val"]))."'>$A</a>\n";}}}echo($gc?"</ul>":"<p class='message'>".'No tables.')."\n";}function
dump_headers($vc,$od=false){global$b;$G=$b->dumpHeaders($vc,$od);$Qd=$_POST["output"];if($Qd!="text"){header("Content-Disposition: attachment; filename=".friendly_url($vc!=""?$vc:(SERVER!=""?SERVER:"localhost")).".$G".($Qd!="file"&&!ereg('[^0-9a-z]',$Qd)?".$Qd":""));}session_write_close();return$G;}function
dump_csv($H){foreach($H
as$w=>$W){if(preg_match("~[\"\n,;\t]~",$W)||$W===""){$H[$w]='"'.str_replace('"','""',$W).'"';}}echo
implode(($_POST["format"]=="csv"?",":($_POST["format"]=="tsv"?"\t":";")),$H)."\r\n";}function
apply_sql_function($o,$e){return($o?($o=="unixepoch"?"DATETIME($e, '$o')":($o=="count distinct"?"COUNT(DISTINCT ":strtoupper("$o("))."$e)"):$e);}function
password_file(){$ob=ini_get("upload_tmp_dir");if(!$ob){if(function_exists('sys_get_temp_dir')){$ob=sys_get_temp_dir();}else{$Yb=@tempnam("","");if(!$Yb){return
false;}$ob=dirname($Yb);unlink($Yb);}}$Yb="$ob/adminer.key";$G=@file_get_contents($Yb);if($G){return$G;}$ic=@fopen($Yb,"w");if($ic){$G=md5(uniqid(mt_rand(),true));fwrite($ic,$G);fclose($ic);}return$G;}function
is_mail($_b){$wa='[-a-z0-9!#$%&\'*+/=?^_`{|}~]';$qb='[a-z0-9]([-a-z0-9]{0,61}[a-z0-9])';$ae="$wa+(\\.$wa+)*@($qb?\\.)+$qb";return
preg_match("(^$ae(,\\s*$ae)*\$)i",$_b);}function
is_url($M){$qb='[a-z0-9]([-a-z0-9]{0,61}[a-z0-9])';return(preg_match("~^(https?)://($qb?\\.)+$qb(:\\d+)?(/.*)?(\\?.*)?(#.*)?\$~i",$M,$_)?strtolower($_[1]):"");}global$b,$g,$sb,$yb,$Gb,$k,$lc,$pc,$ba,$Bc,$v,$ca,$Mc,$Ad,$df,$R,$Ff,$T,$Rf,$ia;if(!$_SERVER["REQUEST_URI"]){$_SERVER["REQUEST_URI"]=$_SERVER["ORIG_PATH_INFO"];}if(!strpos($_SERVER["REQUEST_URI"],'?')&&$_SERVER["QUERY_STRING"]!=""){$_SERVER["REQUEST_URI"].="?$_SERVER[QUERY_STRING]";}$ba=$_SERVER["HTTPS"]&&strcasecmp($_SERVER["HTTPS"],"off");@ini_set("session.use_trans_sid",false);if(!defined("SID")){session_name("adminer_sid");$Td=array(0,preg_replace('~\\?.*~','',$_SERVER["REQUEST_URI"]),"",$ba);if(version_compare(PHP_VERSION,'5.2.0')>=0){$Td[]=true;}call_user_func_array('session_set_cookie_params',$Td);session_start();}remove_slashes(array(&$_GET,&$_POST,&$_COOKIE),$Zb);if(function_exists("set_magic_quotes_runtime")){set_magic_quotes_runtime(false);}@set_time_limit(0);@ini_set("zend.ze1_compatibility_mode",false);@ini_set("precision",20);function
get_lang(){return'en';}function
lang($Ef,$vd){$de=($vd==1?0:1);return
sprintf($Ef[$de],$vd);}if(extension_loaded('pdo')){class
Min_PDO
extends
PDO{var$_result,$server_info,$affected_rows,$error;function
__construct(){global$b;$de=array_search("",$b->operators);if($de!==false){unset($b->operators[$de]);}}function
dsn($vb,$U,$D,$Nb='auth_error'){set_exception_handler($Nb);parent::__construct($vb,$U,$D);restore_exception_handler();$this->setAttribute(13,array('Min_PDOStatement'));$this->server_info=$this->getAttribute(4);}function
query($E,$Lf=false){$F=parent::query($E);if(!$F){$Ib=$this->errorInfo();$this->error=$Ib[2];return
false;}$this->store_result($F);return$F;}function
multi_query($E){return$this->_result=$this->query($E);}function
store_result($F=null){if(!$F){$F=$this->_result;}if($F->columnCount()){$F->num_rows=$F->rowCount();return$F;}$this->affected_rows=$F->rowCount();return
true;}function
next_result(){return$this->_result->nextRowset();}function
result($E,$l=0){$F=$this->query($E);if(!$F){return
false;}$H=$F->fetch();return$H[$l];}}class
Min_PDOStatement
extends
PDOStatement{var$_offset=0,$num_rows;function
fetch_assoc(){return$this->fetch(2);}function
fetch_row(){return$this->fetch(3);}function
fetch_field(){$H=(object)$this->getColumnMeta($this->_offset++);$H->orgtable=$H->table;$H->orgname=$H->name;$H->charsetnr=(in_array("blob",$H->flags)?63:0);return$H;}}}$sb=array();$sb["sqlite"]="SQLite 3";$sb["sqlite2"]="SQLite 2";if(isset($_GET["sqlite"])||isset($_GET["sqlite2"])){$ge=array((isset($_GET["sqlite"])?"SQLite3":"SQLite"),"PDO_SQLite");define("DRIVER",(isset($_GET["sqlite"])?"sqlite":"sqlite2"));if(extension_loaded(isset($_GET["sqlite"])?"sqlite3":"sqlite")){if(isset($_GET["sqlite"])){class
Min_SQLite{var$extension="SQLite3",$server_info,$affected_rows,$error,$_link;function
Min_SQLite($Yb){$this->_link=new
SQLite3($Yb);$Yf=$this->_link->version();$this->server_info=$Yf["versionString"];}function
query($E){$F=@$this->_link->query($E);if(!$F){$this->error=$this->_link->lastErrorMsg();return
false;}elseif($F->numColumns()){return
new
Min_Result($F);}$this->affected_rows=$this->_link->changes();return
true;}function
quote($M){return"'".$this->_link->escapeString($M)."'";}function
store_result(){return$this->_result;}function
result($E,$l=0){$F=$this->query($E);if(!is_object($F)){return
false;}$H=$F->_result->fetchArray();return$H[$l];}}class
Min_Result{var$_result,$_offset=0,$num_rows;function
Min_Result($F){$this->_result=$F;}function
fetch_assoc(){return$this->_result->fetchArray(SQLITE3_ASSOC);}function
fetch_row(){return$this->_result->fetchArray(SQLITE3_NUM);}function
fetch_field(){$e=$this->_offset++;$S=$this->_result->columnType($e);return(object)array("name"=>$this->_result->columnName($e),"type"=>$S,"charsetnr"=>($S==SQLITE3_BLOB?63:0),);}function
__desctruct(){return$this->_result->finalize();}}}else{class
Min_SQLite{var$extension="SQLite",$server_info,$affected_rows,$error,$_link;function
Min_SQLite($Yb){$this->server_info=sqlite_libversion();$this->_link=new
SQLiteDatabase($Yb);}function
query($E,$Lf=false){$ld=($Lf?"unbufferedQuery":"query");$F=@$this->_link->$ld($E,SQLITE_BOTH,$k);if(!$F){$this->error=$k;return
false;}elseif($F===true){$this->affected_rows=$this->changes();return
true;}return
new
Min_Result($F);}function
quote($M){return"'".sqlite_escape_string($M)."'";}function
store_result(){return$this->_result;}function
result($E,$l=0){$F=$this->query($E);if(!is_object($F)){return
false;}$H=$F->_result->fetch();return$H[$l];}}class
Min_Result{var$_result,$_offset=0,$num_rows;function
Min_Result($F){$this->_result=$F;if(method_exists($F,'numRows')){$this->num_rows=$F->numRows();}}function
fetch_assoc(){$H=$this->_result->fetch(SQLITE_ASSOC);if(!$H){return
false;}$G=array();foreach($H
as$w=>$W){$G[($w[0]=='"'?idf_unescape($w):$w)]=$W;}return$G;}function
fetch_row(){return$this->_result->fetch(SQLITE_NUM);}function
fetch_field(){$A=$this->_result->fieldName($this->_offset++);$ae='(\\[.*]|"(?:[^"]|"")*"|(.+))';if(preg_match("~^($ae\\.)?$ae\$~",$A,$_)){$O=($_[3]!=""?$_[3]:idf_unescape($_[2]));$A=($_[5]!=""?$_[5]:idf_unescape($_[4]));}return(object)array("name"=>$A,"orgname"=>$A,"orgtable"=>$O,);}}}}elseif(extension_loaded("pdo_sqlite")){class
Min_SQLite
extends
Min_PDO{var$extension="PDO_SQLite";function
Min_SQLite($Yb){$this->dsn(DRIVER.":$Yb","","");}}}if(class_exists("Min_SQLite")){class
Min_DB
extends
Min_SQLite{function
Min_DB(){$this->Min_SQLite(":memory:");}function
select_db($Yb){if(is_readable($Yb)&&$this->query("ATTACH ".$this->quote(ereg("(^[/\\\\]|:)",$Yb)?$Yb:dirname($_SERVER["SCRIPT_FILENAME"])."/$Yb")." AS a")){$this->Min_SQLite($Yb);return
true;}return
false;}function
multi_query($E){return$this->_result=$this->query($E);}function
next_result(){return
false;}}}function
idf_escape($s){return'"'.str_replace('"','""',$s).'"';}function
table($s){return
idf_escape($s);}function
connect(){return
new
Min_DB;}function
get_databases(){return
array();}function
limit($E,$Z,$y,$B=0,$Qe=" "){return" $E$Z".(isset($y)?$Qe."LIMIT $y".($B?" OFFSET $B":""):"");}function
limit1($E,$Z){global$g;return($g->result("SELECT sqlite_compileoption_used('ENABLE_UPDATE_DELETE_LIMIT')")?limit($E,$Z,1):" $E$Z");}function
db_collation($j,$Oa){global$g;return$g->result("PRAGMA encoding");}function
engines(){return
array();}function
logged_user(){return
get_current_user();}function
tables_list(){return
get_key_vals("SELECT name, type FROM sqlite_master WHERE type IN ('table', 'view') ORDER BY (name = 'sqlite_sequence'), name",1);}function
count_tables($i){return
array();}function
table_status($A=""){$G=array();foreach(get_rows("SELECT name AS Name, type AS Engine FROM sqlite_master WHERE type IN ('table', 'view')".($A!=""?" AND name = ".q($A):""))as$H){$H["Auto_increment"]="";$G[$H["Name"]]=$H;}foreach(get_rows("SELECT * FROM sqlite_sequence",null,"")as$H){$G[$H["name"]]["Auto_increment"]=$H["seq"];}return($A!=""?$G[$A]:$G);}function
is_view($P){return$P["Engine"]=="view";}function
fk_support($P){global$g;return$_GET["create"]==""&&!$g->result("SELECT sqlite_compileoption_used('OMIT_FOREIGN_KEY')");}function
fields($O){$G=array();foreach(get_rows("PRAGMA table_info(".table($O).")")as$H){$S=strtolower($H["type"]);$lb=$H["dflt_value"];$G[$H["name"]]=array("field"=>$H["name"],"type"=>(eregi("int",$S)?"integer":(eregi("char|clob|text",$S)?"text":(eregi("blob",$S)?"blob":(eregi("real|floa|doub",$S)?"real":"numeric")))),"full_type"=>$S,"default"=>(ereg("'(.*)'",$lb,$_)?str_replace("''","'",$_[1]):($lb=="NULL"?null:$lb)),"null"=>!$H["notnull"],"auto_increment"=>eregi('^integer$',$S)&&$H["pk"],"privileges"=>array("select"=>1,"insert"=>1,"update"=>1),"primary"=>$H["pk"],);}return$G;}function
indexes($O,$h=null){$G=array();$je=array();foreach(fields($O)as$l){if($l["primary"]){$je[]=$l["field"];}}if($je){$G[""]=array("type"=>"PRIMARY","columns"=>$je,"lengths"=>array());}foreach(get_rows("PRAGMA index_list(".table($O).")")as$H){$G[$H["name"]]["type"]=($H["unique"]?"UNIQUE":"INDEX");$G[$H["name"]]["lengths"]=array();foreach(get_rows("PRAGMA index_info(".idf_escape($H["name"]).")")as$Ie){$G[$H["name"]]["columns"][]=$Ie["name"];}}return$G;}function
foreign_keys($O){$G=array();foreach(get_rows("PRAGMA foreign_key_list(".table($O).")")as$H){$n=&$G[$H["id"]];if(!$n){$n=$H;}$n["source"][]=$H["from"];$n["target"][]=$H["to"];}return$G;}function
view($A){global$g;return
array("select"=>preg_replace('~^(?:[^`"[]+|`[^`]*`|"[^"]*")* AS\\s+~iU','',$g->result("SELECT sql FROM sqlite_master WHERE name = ".q($A))));}function
collations(){return(isset($_GET["create"])?get_vals("PRAGMA collation_list",1):array());}function
information_schema($j){return
false;}function
error(){global$g;return
h($g->error);}function
exact_value($W){return
q($W);}function
check_sqlite_name($A){global$g;$Ub="db|sdb|sqlite";if(!preg_match("~^[^\\0]*\\.($Ub)\$~",$A)){$g->error=sprintf('Please use one of the extensions %s.',str_replace("|",", ",$Ub));return
false;}return
true;}function
create_database($j,$d){global$g;if(file_exists($j)){$g->error='File exists.';return
false;}if(!check_sqlite_name($j)){return
false;}$z=new
Min_SQLite($j);$z->query('PRAGMA encoding = "UTF-8"');$z->query('CREATE TABLE adminer (i)');$z->query('DROP TABLE adminer');return
true;}function
drop_databases($i){global$g;$g->Min_SQLite(":memory:");foreach($i
as$j){if(!@unlink($j)){$g->error='File exists.';return
false;}}return
true;}function
rename_database($A,$d){global$g;if(!check_sqlite_name($A)){return
false;}$g->Min_SQLite(":memory:");$g->error='File exists.';return@rename(DB,$A);}function
auto_increment(){return" PRIMARY KEY".(DRIVER=="sqlite"?" AUTOINCREMENT":"");}function
alter_table($O,$A,$m,$cc,$Sa,$Eb,$d,$ya,$Xd){$c=array();foreach($m
as$l){if($l[1]){$c[]=($O!=""&&$l[0]==""?"ADD ":"  ").implode($l[1]);}}$c=array_merge($c,$cc);if($O!=""){foreach($c
as$W){if(!queries("ALTER TABLE ".table($O)." $W")){return
false;}}if($O!=$A&&!queries("ALTER TABLE ".table($O)." RENAME TO ".table($A))){return
false;}}elseif(!queries("CREATE TABLE ".table($A)." (\n".implode(",\n",$c)."\n)")){return
false;}if($ya){queries("UPDATE sqlite_sequence SET seq = $ya WHERE name = ".q($A));}return
true;}function
alter_indexes($O,$c){foreach($c
as$W){if(!queries($W[2]=="DROP"?"DROP INDEX ".idf_escape($W[1]):"CREATE $W[0] ".($W[0]!="INDEX"?"INDEX ":"").idf_escape($W[1]!=""?$W[1]:uniqid($O."_"))." ON ".table($O)." $W[2]")){return
false;}}return
true;}function
truncate_tables($Q){return
apply_queries("DELETE FROM",$Q);}function
drop_views($Y){return
apply_queries("DROP VIEW",$Y);}function
drop_tables($Q){return
apply_queries("DROP TABLE",$Q);}function
move_tables($Q,$Y,$sf){return
false;}function
trigger($A){global$g;if($A==""){return
array("Statement"=>"BEGIN\n\t;\nEND");}preg_match('~^CREATE\\s+TRIGGER\\s*(?:[^`"\\s]+|`[^`]*`|"[^"]*")+\\s*([a-z]+)\\s+([a-z]+)\\s+ON\\s*(?:[^`"\\s]+|`[^`]*`|"[^"]*")+\\s*(?:FOR\\s*EACH\\s*ROW\\s)?(.*)~is',$g->result("SELECT sql FROM sqlite_master WHERE name = ".q($A)),$_);return
array("Timing"=>strtoupper($_[1]),"Event"=>strtoupper($_[2]),"Trigger"=>$A,"Statement"=>$_[3]);}function
triggers($O){$G=array();foreach(get_rows("SELECT * FROM sqlite_master WHERE type = 'trigger' AND tbl_name = ".q($O))as$H){preg_match('~^CREATE\\s+TRIGGER\\s*(?:[^`"\\s]+|`[^`]*`|"[^"]*")+\\s*([a-z]+)\\s*([a-z]+)~i',$H["sql"],$_);$G[$H["name"]]=array($_[1],$_[2]);}return$G;}function
trigger_options(){return
array("Timing"=>array("BEFORE","AFTER","INSTEAD OF"),"Type"=>array("FOR EACH ROW"),);}function
routine($A,$S){}function
routines(){}function
routine_languages(){}function
begin(){return
queries("BEGIN");}function
insert_into($O,$L){return
queries("INSERT INTO ".table($O).($L?" (".implode(", ",array_keys($L)).")\nVALUES (".implode(", ",$L).")":"DEFAULT VALUES"));}function
insert_update($O,$L,$je){return
queries("REPLACE INTO ".table($O)." (".implode(", ",array_keys($L)).") VALUES (".implode(", ",$L).")");}function
last_id(){global$g;return$g->result("SELECT LAST_INSERT_ROWID()");}function
explain($g,$E){return$g->query("EXPLAIN $E");}function
found_rows($P,$Z){}function
types(){return
array();}function
schemas(){return
array();}function
get_schema(){return"";}function
set_schema($Me){return
true;}function
create_sql($O,$ya){global$g;return$g->result("SELECT sql FROM sqlite_master WHERE type = 'table' AND name = ".q($O));}function
truncate_sql($O){return"DELETE FROM ".table($O);}function
use_sql($ib){}function
trigger_sql($O,$N){return
implode(get_vals("SELECT sql || ';;\n' FROM sqlite_master WHERE type = 'trigger' AND tbl_name = ".q($O)));}function
show_variables(){global$g;$G=array();foreach(array("auto_vacuum","cache_size","count_changes","default_cache_size","empty_result_callbacks","encoding","foreign_keys","full_column_names","fullfsync","journal_mode","journal_size_limit","legacy_file_format","locking_mode","page_size","max_page_count","read_uncommitted","recursive_triggers","reverse_unordered_selects","secure_delete","short_column_names","synchronous","temp_store","temp_store_directory","schema_version","integrity_check","quick_check")as$w){$G[$w]=$g->result("PRAGMA $w");}return$G;}function
show_status(){$G=array();foreach(get_vals("PRAGMA compile_options")as$Fd){list($w,$W)=explode("=",$Fd,2);$G[$w]=$W;}return$G;}function
support($Wb){return
ereg('^(view|trigger|variables|status|dump)$',$Wb);}$v="sqlite";$T=array("integer"=>0,"real"=>0,"numeric"=>0,"text"=>0,"blob"=>0);$df=array_keys($T);$Rf=array();$Ed=array("=","<",">","<=",">=","!=","LIKE","LIKE %%","IN","IS NULL","NOT LIKE","NOT IN","IS NOT NULL","");$lc=array("hex","length","lower","round","unixepoch","upper");$pc=array("avg","count","count distinct","group_concat","max","min","sum");$yb=array(array(),array("integer|real|numeric"=>"+/-","text"=>"||",));}$sb["pgsql"]="PostgreSQL";if(isset($_GET["pgsql"])){$ge=array("PgSQL","PDO_PgSQL");define("DRIVER","pgsql");if(extension_loaded("pgsql")){class
Min_DB{var$extension="PgSQL",$_link,$_result,$_string,$_database=true,$server_info,$affected_rows,$error;function
_error($Hb,$k){if(ini_bool("html_errors")){$k=html_entity_decode(strip_tags($k));}$k=ereg_replace('^[^:]*: ','',$k);$this->error=$k;}function
connect($K,$U,$D){global$b;$j=$b->database();set_error_handler(array($this,'_error'));$this->_string="host='".str_replace(":","' port='",addcslashes($K,"'\\"))."' user='".addcslashes($U,"'\\")."' password='".addcslashes($D,"'\\")."'";$this->_link=@pg_connect("$this->_string dbname='".($j!=""?addcslashes($j,"'\\"):"postgres")."'",PGSQL_CONNECT_FORCE_NEW);if(!$this->_link&&$j!=""){$this->_database=false;$this->_link=@pg_connect("$this->_string dbname='postgres'",PGSQL_CONNECT_FORCE_NEW);}restore_error_handler();if($this->_link){$Yf=pg_version($this->_link);$this->server_info=$Yf["server"];pg_set_client_encoding($this->_link,"UTF8");}return(bool)$this->_link;}function
quote($M){return"'".pg_escape_string($this->_link,$M)."'";}function
select_db($ib){global$b;if($ib==$b->database()){return$this->_database;}$G=@pg_connect("$this->_string dbname='".addcslashes($ib,"'\\")."'",PGSQL_CONNECT_FORCE_NEW);if($G){$this->_link=$G;}return$G;}function
close(){$this->_link=@pg_connect("$this->_string dbname='postgres'");}function
query($E,$Lf=false){$F=@pg_query($this->_link,$E);if(!$F){$this->error=pg_last_error($this->_link);return
false;}elseif(!pg_num_fields($F)){$this->affected_rows=pg_affected_rows($F);return
true;}return
new
Min_Result($F);}function
multi_query($E){return$this->_result=$this->query($E);}function
store_result(){return$this->_result;}function
next_result(){return
false;}function
result($E,$l=0){$F=$this->query($E);if(!$F||!$F->num_rows){return
false;}return
pg_fetch_result($F->_result,0,$l);}}class
Min_Result{var$_result,$_offset=0,$num_rows;function
Min_Result($F){$this->_result=$F;$this->num_rows=pg_num_rows($F);}function
fetch_assoc(){return
pg_fetch_assoc($this->_result);}function
fetch_row(){return
pg_fetch_row($this->_result);}function
fetch_field(){$e=$this->_offset++;$G=new
stdClass;if(function_exists('pg_field_table')){$G->orgtable=pg_field_table($this->_result,$e);}$G->name=pg_field_name($this->_result,$e);$G->orgname=$G->name;$G->type=pg_field_type($this->_result,$e);$G->charsetnr=($G->type=="bytea"?63:0);return$G;}function
__destruct(){pg_free_result($this->_result);}}}elseif(extension_loaded("pdo_pgsql")){class
Min_DB
extends
Min_PDO{var$extension="PDO_PgSQL";function
connect($K,$U,$D){global$b;$j=$b->database();$M="pgsql:host='".str_replace(":","' port='",addcslashes($K,"'\\"))."' options='-c client_encoding=utf8'";$this->dsn("$M dbname='".($j!=""?addcslashes($j,"'\\"):"postgres")."'",$U,$D);return
true;}function
select_db($ib){global$b;return($b->database()==$ib);}function
close(){}}}function
idf_escape($s){return'"'.str_replace('"','""',$s).'"';}function
table($s){return
idf_escape($s);}function
connect(){global$b;$g=new
Min_DB;$eb=$b->credentials();if($g->connect($eb[0],$eb[1],$eb[2])){if($g->server_info>=9){$g->query("SET application_name = 'Adminer'");}return$g;}return$g->error;}function
get_databases(){return
get_vals("SELECT datname FROM pg_database ORDER BY datname");}function
limit($E,$Z,$y,$B=0,$Qe=" "){return" $E$Z".(isset($y)?$Qe."LIMIT $y".($B?" OFFSET $B":""):"");}function
limit1($E,$Z){return" $E$Z";}function
db_collation($j,$Oa){global$g;return$g->result("SHOW LC_COLLATE");}function
engines(){return
array();}function
logged_user(){global$g;return$g->result("SELECT user");}function
tables_list(){return
get_key_vals("SELECT table_name, table_type FROM information_schema.tables WHERE table_schema = current_schema() ORDER BY table_name");}function
count_tables($i){return
array();}function
table_status($A=""){$G=array();foreach(get_rows("SELECT relname AS \"Name\", CASE relkind WHEN 'r' THEN '' ELSE 'view' END AS \"Engine\", pg_relation_size(oid) AS \"Data_length\", pg_total_relation_size(oid) - pg_relation_size(oid) AS \"Index_length\", obj_description(oid, 'pg_class') AS \"Comment\", relhasoids AS \"Oid\"
FROM pg_class
WHERE relkind IN ('r','v')
AND relnamespace = (SELECT oid FROM pg_namespace WHERE nspname = current_schema())".($A!=""?" AND relname = ".q($A):""))as$H){$G[$H["Name"]]=$H;}return($A!=""?$G[$A]:$G);}function
is_view($P){return$P["Engine"]=="view";}function
fk_support($P){return
true;}function
fields($O){$G=array();foreach(get_rows("SELECT a.attname AS field, format_type(a.atttypid, a.atttypmod) AS full_type, d.adsrc AS default, a.attnotnull, col_description(c.oid, a.attnum) AS comment
FROM pg_class c
JOIN pg_namespace n ON c.relnamespace = n.oid
JOIN pg_attribute a ON c.oid = a.attrelid
LEFT JOIN pg_attrdef d ON c.oid = d.adrelid AND a.attnum = d.adnum
WHERE c.relname = ".q($O)."
AND n.nspname = current_schema()
AND NOT a.attisdropped
AND a.attnum > 0
ORDER BY a.attnum")as$H){ereg('(.*)(\\((.*)\\))?',$H["full_type"],$_);list(,$H["type"],,$H["length"])=$_;$H["full_type"]=$H["type"].($H["length"]?"($H[length])":"");$H["null"]=($H["attnotnull"]=="f");$H["auto_increment"]=eregi("^nextval\\(",$H["default"]);$H["privileges"]=array("insert"=>1,"select"=>1,"update"=>1);if(preg_match('~^(.*)::.+$~',$H["default"],$_)){$H["default"]=($_[1][0]=="'"?idf_unescape($_[1]):$_[1]);}$G[$H["field"]]=$H;}return$G;}function
indexes($O,$h=null){global$g;if(!is_object($h)){$h=$g;}$G=array();$mf=$h->result("SELECT oid FROM pg_class WHERE relname = ".q($O));$f=get_key_vals("SELECT attnum, attname FROM pg_attribute WHERE attrelid = $mf AND attnum > 0",$h);foreach(get_rows("SELECT relname, indisunique, indisprimary, indkey FROM pg_index i, pg_class ci WHERE i.indrelid = $mf AND ci.oid = i.indexrelid",$h)as$H){$G[$H["relname"]]["type"]=($H["indisprimary"]=="t"?"PRIMARY":($H["indisunique"]=="t"?"UNIQUE":"INDEX"));$G[$H["relname"]]["columns"]=array();foreach(explode(" ",$H["indkey"])as$zc){$G[$H["relname"]]["columns"][]=$f[$zc];}$G[$H["relname"]]["lengths"]=array();}return$G;}function
foreign_keys($O){global$Ad;$G=array();foreach(get_rows("SELECT conname, pg_get_constraintdef(oid) AS definition
FROM pg_constraint
WHERE conrelid = (SELECT pc.oid FROM pg_class AS pc INNER JOIN pg_namespace AS pn ON (pn.oid = pc.relnamespace) WHERE pc.relname = ".q($O)." AND pn.nspname = current_schema())
AND contype = 'f'::char
ORDER BY conkey, conname")as$H){if(preg_match('~FOREIGN KEY\s*\((.+)\)\s*REFERENCES (.+)\((.+)\)(.*)$~iA',$H['definition'],$_)){$H['source']=array_map('trim',explode(',',$_[1]));$H['table']=$_[2];if(preg_match('~(.+)\.(.+)~',$_[2],$Yc)){$H['ns']=$Yc[1];$H['table']=$Yc[2];}$H['target']=array_map('trim',explode(',',$_[3]));$H['on_delete']=(preg_match("~ON DELETE ($Ad)~",$_[4],$Yc)?$Yc[1]:'NO ACTION');$H['on_update']=(preg_match("~ON UPDATE ($Ad)~",$_[4],$Yc)?$Yc[1]:'NO ACTION');$G[$H['conname']]=$H;}}return$G;}function
view($A){global$g;return
array("select"=>$g->result("SELECT pg_get_viewdef(".q($A).")"));}function
collations(){return
array();}function
information_schema($j){return($j=="information_schema");}function
error(){global$g;$G=h($g->error);if(preg_match('~^(.*\\n)?([^\\n]*)\\n( *)\\^(\\n.*)?$~s',$G,$_)){$G=$_[1].preg_replace('~((?:[^&]|&[^;]*;){'.strlen($_[3]).'})(.*)~','\\1<b>\\2</b>',$_[2]).$_[4];}return
nl_br($G);}function
exact_value($W){return
q($W);}function
create_database($j,$d){return
queries("CREATE DATABASE ".idf_escape($j).($d?" ENCODING ".idf_escape($d):""));}function
drop_databases($i){global$g;$g->close();return
apply_queries("DROP DATABASE",$i,'idf_escape');}function
rename_database($A,$d){return
queries("ALTER DATABASE ".idf_escape(DB)." RENAME TO ".idf_escape($A));}function
auto_increment(){return"";}function
alter_table($O,$A,$m,$cc,$Sa,$Eb,$d,$ya,$Xd){$c=array();$se=array();foreach($m
as$l){$e=idf_escape($l[0]);$W=$l[1];if(!$W){$c[]="DROP $e";}else{$Wf=$W[5];unset($W[5]);if(isset($W[6])&&$l[0]==""){$W[1]=($W[1]=="bigint"?" big":" ")."serial";}if($l[0]==""){$c[]=($O!=""?"ADD ":"  ").implode($W);}else{if($e!=$W[0]){$se[]="ALTER TABLE ".table($O)." RENAME $e TO $W[0]";}$c[]="ALTER $e TYPE$W[1]";if(!$W[6]){$c[]="ALTER $e ".($W[3]?"SET$W[3]":"DROP DEFAULT");$c[]="ALTER $e ".($W[2]==" NULL"?"DROP NOT":"SET").$W[2];}}if($l[0]!=""||$Wf!=""){$se[]="COMMENT ON COLUMN ".table($O).".$W[0] IS ".($Wf!=""?substr($Wf,9):"''");}}}$c=array_merge($c,$cc);if($O==""){array_unshift($se,"CREATE TABLE ".table($A)." (\n".implode(",\n",$c)."\n)");}elseif($c){array_unshift($se,"ALTER TABLE ".table($O)."\n".implode(",\n",$c));}if($O!=""&&$O!=$A){$se[]="ALTER TABLE ".table($O)." RENAME TO ".table($A);}if($O!=""||$Sa!=""){$se[]="COMMENT ON TABLE ".table($A)." IS ".q($Sa);}if($ya!=""){}foreach($se
as$E){if(!queries($E)){return
false;}}return
true;}function
alter_indexes($O,$c){$bb=array();$tb=array();foreach($c
as$W){if($W[0]!="INDEX"){$bb[]=($W[2]=="DROP"?"\nDROP CONSTRAINT ".idf_escape($W[1]):"\nADD $W[0] ".($W[0]=="PRIMARY"?"KEY ":"").$W[2]);}elseif($W[2]=="DROP"){$tb[]=idf_escape($W[1]);}elseif(!queries("CREATE INDEX ".idf_escape($W[1]!=""?$W[1]:uniqid($O."_"))." ON ".table($O)." $W[2]")){return
false;}}return((!$bb||queries("ALTER TABLE ".table($O).implode(",",$bb)))&&(!$tb||queries("DROP INDEX ".implode(", ",$tb))));}function
truncate_tables($Q){return
queries("TRUNCATE ".implode(", ",array_map('table',$Q)));return
true;}function
drop_views($Y){return
queries("DROP VIEW ".implode(", ",array_map('table',$Y)));}function
drop_tables($Q){return
queries("DROP TABLE ".implode(", ",array_map('table',$Q)));}function
move_tables($Q,$Y,$sf){foreach($Q
as$O){if(!queries("ALTER TABLE ".table($O)." SET SCHEMA ".idf_escape($sf))){return
false;}}foreach($Y
as$O){if(!queries("ALTER VIEW ".table($O)." SET SCHEMA ".idf_escape($sf))){return
false;}}return
true;}function
trigger($A){if($A==""){return
array("Statement"=>"EXECUTE PROCEDURE ()");}$I=get_rows('SELECT trigger_name AS "Trigger", condition_timing AS "Timing", event_manipulation AS "Event", \'FOR EACH \' || action_orientation AS "Type", action_statement AS "Statement" FROM information_schema.triggers WHERE event_object_table = '.q($_GET["trigger"]).' AND trigger_name = '.q($A));return
reset($I);}function
triggers($O){$G=array();foreach(get_rows("SELECT * FROM information_schema.triggers WHERE event_object_table = ".q($O))as$H){$G[$H["trigger_name"]]=array($H["condition_timing"],$H["event_manipulation"]);}return$G;}function
trigger_options(){return
array("Timing"=>array("BEFORE","AFTER"),"Type"=>array("FOR EACH ROW","FOR EACH STATEMENT"),);}function
routines(){return
get_rows('SELECT p.proname AS "ROUTINE_NAME", p.proargtypes AS "ROUTINE_TYPE", pg_catalog.format_type(p.prorettype, NULL) AS "DTD_IDENTIFIER"
FROM pg_catalog.pg_namespace n
JOIN pg_catalog.pg_proc p ON p.pronamespace = n.oid
WHERE n.nspname = current_schema()
ORDER BY p.proname');}function
routine_languages(){return
get_vals("SELECT langname FROM pg_catalog.pg_language");}function
begin(){return
queries("BEGIN");}function
insert_into($O,$L){return
queries("INSERT INTO ".table($O).($L?" (".implode(", ",array_keys($L)).")\nVALUES (".implode(", ",$L).")":"DEFAULT VALUES"));}function
insert_update($O,$L,$je){global$g;$Sf=array();$Z=array();foreach($L
as$w=>$W){$Sf[]="$w = $W";if(isset($je[idf_unescape($w)])){$Z[]="$w = $W";}}return($Z&&queries("UPDATE ".table($O)." SET ".implode(", ",$Sf)." WHERE ".implode(" AND ",$Z))&&$g->affected_rows)||queries("INSERT INTO ".table($O)." (".implode(", ",array_keys($L)).") VALUES (".implode(", ",$L).")");}function
last_id(){return
0;}function
explain($g,$E){return$g->query("EXPLAIN $E");}function
found_rows($P,$Z){global$g;if(ereg(" rows=([0-9]+)",$g->result("EXPLAIN SELECT * FROM ".idf_escape($P["Name"]).($Z?" WHERE ".implode(" AND ",$Z):"")),$_e)){return$_e[1];}return
false;}function
types(){return
get_vals("SELECT typname
FROM pg_type
WHERE typnamespace = (SELECT oid FROM pg_namespace WHERE nspname = current_schema())
AND typtype IN ('b','d','e')
AND typelem = 0");}function
schemas(){return
get_vals("SELECT nspname FROM pg_namespace ORDER BY nspname");}function
get_schema(){global$g;return$g->result("SELECT current_schema()");}function
set_schema($Le){global$g,$T,$df;$G=$g->query("SET search_path TO ".idf_escape($Le));foreach(types()as$S){if(!isset($T[$S])){$T[$S]=0;$df['User types'][]=$S;}}return$G;}function
use_sql($ib){return"\connect ".idf_escape($ib);}function
show_variables(){return
get_key_vals("SHOW ALL");}function
process_list(){return
get_rows("SELECT * FROM pg_stat_activity ORDER BY procpid");}function
show_status(){}function
support($Wb){return
ereg('^(comment|view|scheme|processlist|sequence|trigger|type|variables|drop_col)$',$Wb);}$v="pgsql";$T=array();$df=array();foreach(array('Numbers'=>array("smallint"=>5,"integer"=>10,"bigint"=>19,"boolean"=>1,"numeric"=>0,"real"=>7,"double precision"=>16,"money"=>20),'Date and time'=>array("date"=>13,"time"=>17,"timestamp"=>20,"interval"=>0),'Strings'=>array("character"=>0,"character varying"=>0,"text"=>0,"tsquery"=>0,"tsvector"=>0,"uuid"=>0,"xml"=>0),'Binary'=>array("bit"=>0,"bit varying"=>0,"bytea"=>0),'Network'=>array("cidr"=>43,"inet"=>43,"macaddr"=>17,"txid_snapshot"=>0),'Geometry'=>array("box"=>0,"circle"=>0,"line"=>0,"lseg"=>0,"path"=>0,"point"=>0,"polygon"=>0),)as$w=>$W){$T+=$W;$df[$w]=array_keys($W);}$Rf=array();$Ed=array("=","<",">","<=",">=","!=","~","!~","LIKE","LIKE %%","IN","IS NULL","NOT LIKE","NOT IN","IS NOT NULL");$lc=array("char_length","lower","round","to_hex","to_timestamp","upper");$pc=array("avg","count","count distinct","max","min","sum");$yb=array(array("char"=>"md5","date|time"=>"now",),array("int|numeric|real|money"=>"+/-","date|time"=>"+ interval/- interval","char|text"=>"||",));}$sb["oracle"]="Oracle";if(isset($_GET["oracle"])){$ge=array("OCI8","PDO_OCI");define("DRIVER","oracle");if(extension_loaded("oci8")){class
Min_DB{var$extension="oci8",$_link,$_result,$server_info,$affected_rows,$error;function
_error($Hb,$k){if(ini_bool("html_errors")){$k=html_entity_decode(strip_tags($k));}$k=ereg_replace('^[^:]*: ','',$k);$this->error=$k;}function
connect($K,$U,$D){$this->_link=@oci_new_connect($U,$D,$K,"AL32UTF8");if($this->_link){$this->server_info=oci_server_version($this->_link);return
true;}$k=oci_error();$this->error=$k["message"];return
false;}function
quote($M){return"'".str_replace("'","''",$M)."'";}function
select_db($ib){return
true;}function
query($E,$Lf=false){$F=oci_parse($this->_link,$E);if(!$F){$k=oci_error($this->_link);$this->error=$k["message"];return
false;}set_error_handler(array($this,'_error'));$G=@oci_execute($F);restore_error_handler();if($G){if(oci_num_fields($F)){return
new
Min_Result($F);}$this->affected_rows=oci_num_rows($F);}return$G;}function
multi_query($E){return$this->_result=$this->query($E);}function
store_result(){return$this->_result;}function
next_result(){return
false;}function
result($E,$l=1){$F=$this->query($E);if(!is_object($F)||!oci_fetch($F->_result)){return
false;}return
oci_result($F->_result,$l);}}class
Min_Result{var$_result,$_offset=1,$num_rows;function
Min_Result($F){$this->_result=$F;}function
_convert($H){foreach((array)$H
as$w=>$W){if(is_a($W,'OCI-Lob')){$H[$w]=$W->load();}}return$H;}function
fetch_assoc(){return$this->_convert(oci_fetch_assoc($this->_result));}function
fetch_row(){return$this->_convert(oci_fetch_row($this->_result));}function
fetch_field(){$e=$this->_offset++;$G=new
stdClass;$G->name=oci_field_name($this->_result,$e);$G->orgname=$G->name;$G->type=oci_field_type($this->_result,$e);$G->charsetnr=(ereg("raw|blob|bfile",$G->type)?63:0);return$G;}function
__destruct(){oci_free_statement($this->_result);}}}elseif(extension_loaded("pdo_oci")){class
Min_DB
extends
Min_PDO{var$extension="PDO_OCI";function
connect($K,$U,$D){$this->dsn("oci:dbname=//$K;charset=AL32UTF8",$U,$D);return
true;}function
select_db($ib){return
true;}}}function
idf_escape($s){return'"'.str_replace('"','""',$s).'"';}function
table($s){return
idf_escape($s);}function
connect(){global$b;$g=new
Min_DB;$eb=$b->credentials();if($g->connect($eb[0],$eb[1],$eb[2])){return$g;}return$g->error;}function
get_databases(){return
get_vals("SELECT tablespace_name FROM user_tablespaces");}function
limit($E,$Z,$y,$B=0,$Qe=" "){return($B?" * FROM (SELECT t.*, rownum AS rnum FROM (SELECT $E$Z) t WHERE rownum <= ".($y+$B).") WHERE rnum > $B":(isset($y)?" * FROM (SELECT $E$Z) WHERE rownum <= ".($y+$B):" $E$Z"));}function
limit1($E,$Z){return" $E$Z";}function
db_collation($j,$Oa){global$g;return$g->result("SELECT value FROM nls_database_parameters WHERE parameter = 'NLS_CHARACTERSET'");}function
engines(){return
array();}function
logged_user(){global$g;return$g->result("SELECT USER FROM DUAL");}function
tables_list(){return
get_key_vals("SELECT table_name, 'table' FROM all_tables WHERE tablespace_name = ".q(DB)."
UNION SELECT view_name, 'view' FROM user_views");}function
count_tables($i){return
array();}function
table_status($A=""){$G=array();$Ne=q($A);foreach(get_rows('SELECT table_name "Name", \'table\' "Engine" FROM all_tables WHERE tablespace_name = '.q(DB).($A!=""?" AND table_name = $Ne":"")."
UNION SELECT view_name, 'view' FROM user_views".($A!=""?" WHERE view_name = $Ne":""))as$H){if($A!=""){return$H;}$G[$H["Name"]]=$H;}return$G;}function
is_view($P){return$P["Engine"]=="view";}function
fk_support($P){return
true;}function
fields($O){$G=array();foreach(get_rows("SELECT * FROM all_tab_columns WHERE table_name = ".q($O)." ORDER BY column_id")as$H){$S=$H["DATA_TYPE"];$x="$H[DATA_PRECISION],$H[DATA_SCALE]";if($x==","){$x=$H["DATA_LENGTH"];}$G[$H["COLUMN_NAME"]]=array("field"=>$H["COLUMN_NAME"],"full_type"=>$S.($x?"($x)":""),"type"=>strtolower($S),"length"=>$x,"default"=>$H["DATA_DEFAULT"],"null"=>($H["NULLABLE"]=="Y"),"privileges"=>array("insert"=>1,"select"=>1,"update"=>1),);}return$G;}function
indexes($O,$h=null){$G=array();foreach(get_rows("SELECT uic.*, uc.constraint_type
FROM user_ind_columns uic
LEFT JOIN user_constraints uc ON uic.index_name = uc.constraint_name AND uic.table_name = uc.table_name
WHERE uic.table_name = ".q($O)."
ORDER BY uc.constraint_type, uic.column_position",$h)as$H){$G[$H["INDEX_NAME"]]["type"]=($H["CONSTRAINT_TYPE"]=="P"?"PRIMARY":($H["CONSTRAINT_TYPE"]=="U"?"UNIQUE":"INDEX"));$G[$H["INDEX_NAME"]]["columns"][]=$H["COLUMN_NAME"];$G[$H["INDEX_NAME"]]["lengths"][]=($H["CHAR_LENGTH"]&&$H["CHAR_LENGTH"]!=$H["COLUMN_LENGTH"]?$H["CHAR_LENGTH"]:null);}return$G;}function
view($A){$I=get_rows('SELECT text "select" FROM user_views WHERE view_name = '.q($A));return
reset($I);}function
collations(){return
array();}function
information_schema($j){return
false;}function
error(){global$g;return
h($g->error);}function
exact_value($W){return
q($W);}function
explain($g,$E){$g->query("EXPLAIN PLAN FOR $E");return$g->query("SELECT * FROM plan_table");}function
found_rows($P,$Z){}function
alter_table($O,$A,$m,$cc,$Sa,$Eb,$d,$ya,$Xd){$c=$tb=array();foreach($m
as$l){$W=$l[1];if($W&&$l[0]!=""&&idf_escape($l[0])!=$W[0]){queries("ALTER TABLE ".table($O)." RENAME COLUMN ".idf_escape($l[0])." TO $W[0]");}if($W){$c[]=($O!=""?($l[0]!=""?"MODIFY (":"ADD ("):"  ").implode($W).($O!=""?")":"");}else{$tb[]=idf_escape($l[0]);}}if($O==""){return
queries("CREATE TABLE ".table($A)." (\n".implode(",\n",$c)."\n)");}return(!$c||queries("ALTER TABLE ".table($O)."\n".implode("\n",$c)))&&(!$tb||queries("ALTER TABLE ".table($O)." DROP (".implode(", ",$tb).")"))&&($O==$A||queries("ALTER TABLE ".table($O)." RENAME TO ".table($A)));}function
foreign_keys($O){return
array();}function
truncate_tables($Q){return
apply_queries("TRUNCATE TABLE",$Q);}function
drop_views($Y){return
apply_queries("DROP VIEW",$Y);}function
drop_tables($Q){return
apply_queries("DROP TABLE",$Q);}function
begin(){return
true;}function
insert_into($O,$L){return
queries("INSERT INTO ".table($O)." (".implode(", ",array_keys($L)).")\nVALUES (".implode(", ",$L).")");}function
last_id(){return
0;}function
schemas(){return
array();}function
get_schema(){return"";}function
set_schema($Me){return
true;}function
show_variables(){return
get_key_vals('SELECT name, display_value FROM v$parameter');}function
show_status(){$I=get_rows('SELECT * FROM v$instance');return
reset($I);}function
support($Wb){return
ereg("view|drop_col|variables|status",$Wb);}$v="oracle";$T=array();$df=array();foreach(array('Numbers'=>array("number"=>38,"binary_float"=>12,"binary_double"=>21),'Date and time'=>array("date"=>10,"timestamp"=>29,"interval year"=>12,"interval day"=>28),'Strings'=>array("char"=>2000,"varchar2"=>4000,"nchar"=>2000,"nvarchar2"=>4000,"clob"=>4294967295,"nclob"=>4294967295),'Binary'=>array("raw"=>2000,"long raw"=>2147483648,"blob"=>4294967295,"bfile"=>4294967296),)as$w=>$W){$T+=$W;$df[$w]=array_keys($W);}$Rf=array();$Ed=array("=","<",">","<=",">=","!=","LIKE","LIKE %%","IN","IS NULL","NOT LIKE","NOT REGEXP","NOT IN","IS NOT NULL","");$lc=array("length","lower","round","upper");$pc=array("avg","count","count distinct","max","min","sum");$yb=array(array("date"=>"current_date","timestamp"=>"current_timestamp",),array("number|float|double"=>"+/-","date|timestamp"=>"+ interval/- interval","char|clob"=>"||",));}$sb["mssql"]="MS SQL";if(isset($_GET["mssql"])){$ge=array("SQLSRV","MSSQL");define("DRIVER","mssql");if(extension_loaded("sqlsrv")){class
Min_DB{var$extension="sqlsrv",$_link,$_result,$server_info,$affected_rows,$error;function
_get_error(){$this->error="";foreach(sqlsrv_errors()as$k){$this->error.="$k[message]\n";}$this->error=rtrim($this->error);}function
connect($K,$U,$D){$this->_link=@sqlsrv_connect($K,array("UID"=>$U,"PWD"=>$D));if($this->_link){$_c=sqlsrv_server_info($this->_link);$this->server_info=$_c['SQLServerVersion'];}else{$this->_get_error();}return(bool)$this->_link;}function
quote($M){return"'".str_replace("'","''",$M)."'";}function
select_db($ib){return$this->query("USE $ib");}function
query($E,$Lf=false){$F=sqlsrv_query($this->_link,$E);if(!$F){$this->_get_error();return
false;}return$this->store_result($F);}function
multi_query($E){$this->_result=sqlsrv_query($this->_link,$E);if(!$this->_result){$this->_get_error();return
false;}return
true;}function
store_result($F=null){if(!$F){$F=$this->_result;}if(sqlsrv_field_metadata($F)){return
new
Min_Result($F);}$this->affected_rows=sqlsrv_rows_affected($F);return
true;}function
next_result(){return
sqlsrv_next_result($this->_result);}function
result($E,$l=0){$F=$this->query($E);if(!is_object($F)){return
false;}$H=$F->fetch_row();return$H[$l];}}class
Min_Result{var$_result,$_offset=0,$_fields,$num_rows;function
Min_Result($F){$this->_result=$F;}function
_convert($H){foreach((array)$H
as$w=>$W){if(is_a($W,'DateTime')){$H[$w]=$W->format("Y-m-d H:i:s");}}return$H;}function
fetch_assoc(){return$this->_convert(sqlsrv_fetch_array($this->_result,SQLSRV_FETCH_ASSOC,SQLSRV_SCROLL_NEXT));}function
fetch_row(){return$this->_convert(sqlsrv_fetch_array($this->_result,SQLSRV_FETCH_NUMERIC,SQLSRV_SCROLL_NEXT));}function
fetch_field(){if(!$this->_fields){$this->_fields=sqlsrv_field_metadata($this->_result);}$l=$this->_fields[$this->_offset++];$G=new
stdClass;$G->name=$l["Name"];$G->orgname=$l["Name"];$G->type=($l["Type"]==1?254:0);return$G;}function
seek($B){for($q=0;$q<$B;$q++){sqlsrv_fetch($this->_result);}}function
__destruct(){sqlsrv_free_stmt($this->_result);}}}elseif(extension_loaded("mssql")){class
Min_DB{var$extension="MSSQL",$_link,$_result,$server_info,$affected_rows,$error;function
connect($K,$U,$D){$this->_link=@mssql_connect($K,$U,$D);if($this->_link){$F=$this->query("SELECT SERVERPROPERTY('ProductLevel'), SERVERPROPERTY('Edition')");$H=$F->fetch_row();$this->server_info=$this->result("sp_server_info 2",2)." [$H[0]] $H[1]";}else{$this->error=mssql_get_last_message();}return(bool)$this->_link;}function
quote($M){return"'".str_replace("'","''",$M)."'";}function
select_db($ib){return
mssql_select_db($ib);}function
query($E,$Lf=false){$F=mssql_query($E,$this->_link);if(!$F){$this->error=mssql_get_last_message();return
false;}if($F===true){$this->affected_rows=mssql_rows_affected($this->_link);return
true;}return
new
Min_Result($F);}function
multi_query($E){return$this->_result=$this->query($E);}function
store_result(){return$this->_result;}function
next_result(){return
mssql_next_result($this->_result);}function
result($E,$l=0){$F=$this->query($E);if(!is_object($F)){return
false;}return
mssql_result($F->_result,0,$l);}}class
Min_Result{var$_result,$_offset=0,$_fields,$num_rows;function
Min_Result($F){$this->_result=$F;$this->num_rows=mssql_num_rows($F);}function
fetch_assoc(){return
mssql_fetch_assoc($this->_result);}function
fetch_row(){return
mssql_fetch_row($this->_result);}function
num_rows(){return
mssql_num_rows($this->_result);}function
fetch_field(){$G=mssql_fetch_field($this->_result);$G->orgtable=$G->table;$G->orgname=$G->name;return$G;}function
seek($B){mssql_data_seek($this->_result,$B);}function
__destruct(){mssql_free_result($this->_result);}}}function
idf_escape($s){return"[".str_replace("]","]]",$s)."]";}function
table($s){return($_GET["ns"]!=""?idf_escape($_GET["ns"]).".":"").idf_escape($s);}function
connect(){global$b;$g=new
Min_DB;$eb=$b->credentials();if($g->connect($eb[0],$eb[1],$eb[2])){return$g;}return$g->error;}function
get_databases(){return
get_vals("EXEC sp_databases");}function
limit($E,$Z,$y,$B=0,$Qe=" "){return(isset($y)?" TOP (".($y+$B).")":"")." $E$Z";}function
limit1($E,$Z){return
limit($E,$Z,1);}function
db_collation($j,$Oa){global$g;return$g->result("SELECT collation_name FROM sys.databases WHERE name =  ".q($j));}function
engines(){return
array();}function
logged_user(){global$g;return$g->result("SELECT SUSER_NAME()");}function
tables_list(){return
get_key_vals("SELECT name, type_desc FROM sys.all_objects WHERE schema_id = SCHEMA_ID(".q(get_schema()).") AND type IN ('S', 'U', 'V') ORDER BY name");}function
count_tables($i){global$g;$G=array();foreach($i
as$j){$g->select_db($j);$G[$j]=$g->result("SELECT COUNT(*) FROM INFORMATION_SCHEMA.TABLES");}return$G;}function
table_status($A=""){$G=array();foreach(get_rows("SELECT name AS Name, type_desc AS Engine FROM sys.all_objects WHERE schema_id = SCHEMA_ID(".q(get_schema()).") AND type IN ('S', 'U', 'V')".($A!=""?" AND name = ".q($A):""))as$H){if($A!=""){return$H;}$G[$H["Name"]]=$H;}return$G;}function
is_view($P){return$P["Engine"]=="VIEW";}function
fk_support($P){return
true;}function
fields($O){$G=array();foreach(get_rows("SELECT c.*, t.name type, d.definition [default]
FROM sys.all_columns c
JOIN sys.all_objects o ON c.object_id = o.object_id
JOIN sys.types t ON c.user_type_id = t.user_type_id
LEFT JOIN sys.default_constraints d ON c.default_object_id = d.parent_column_id
WHERE o.schema_id = SCHEMA_ID(".q(get_schema()).") AND o.type IN ('S', 'U', 'V') AND o.name = ".q($O))as$H){$S=$H["type"];$x=(ereg("char|binary",$S)?$H["max_length"]:($S=="decimal"?"$H[precision],$H[scale]":""));$G[$H["name"]]=array("field"=>$H["name"],"full_type"=>$S.($x?"($x)":""),"type"=>$S,"length"=>$x,"default"=>$H["default"],"null"=>$H["is_nullable"],"auto_increment"=>$H["is_identity"],"collation"=>$H["collation_name"],"privileges"=>array("insert"=>1,"select"=>1,"update"=>1),"primary"=>$H["is_identity"],);}return$G;}function
indexes($O,$h=null){$G=array();foreach(get_rows("SELECT i.name, key_ordinal, is_unique, is_primary_key, c.name AS column_name
FROM sys.indexes i
INNER JOIN sys.index_columns ic ON i.object_id = ic.object_id AND i.index_id = ic.index_id
INNER JOIN sys.columns c ON ic.object_id = c.object_id AND ic.column_id = c.column_id
WHERE OBJECT_NAME(i.object_id) = ".q($O),$h)as$H){$G[$H["name"]]["type"]=($H["is_primary_key"]?"PRIMARY":($H["is_unique"]?"UNIQUE":"INDEX"));$G[$H["name"]]["lengths"]=array();$G[$H["name"]]["columns"][$H["key_ordinal"]]=$H["column_name"];}return$G;}function
view($A){global$g;return
array("select"=>preg_replace('~^(?:[^[]|\\[[^]]*])*\\s+AS\\s+~isU','',$g->result("SELECT VIEW_DEFINITION FROM INFORMATION_SCHEMA.VIEWS WHERE TABLE_SCHEMA = SCHEMA_NAME() AND TABLE_NAME = ".q($A))));}function
collations(){$G=array();foreach(get_vals("SELECT name FROM fn_helpcollations()")as$d){$G[ereg_replace("_.*","",$d)][]=$d;}return$G;}function
information_schema($j){return
false;}function
error(){global$g;return
nl_br(h(preg_replace('~^(\\[[^]]*])+~m','',$g->error)));}function
exact_value($W){return
q($W);}function
create_database($j,$d){return
queries("CREATE DATABASE ".idf_escape($j).(eregi('^[a-z0-9_]+$',$d)?" COLLATE $d":""));}function
drop_databases($i){return
queries("DROP DATABASE ".implode(", ",array_map('idf_escape',$i)));}function
rename_database($A,$d){if(eregi('^[a-z0-9_]+$',$d)){queries("ALTER DATABASE ".idf_escape(DB)." COLLATE $d");}queries("ALTER DATABASE ".idf_escape(DB)." MODIFY NAME = ".idf_escape($A));return
true;}function
auto_increment(){return" IDENTITY".($_POST["Auto_increment"]!=""?"(".(+$_POST["Auto_increment"]).",1)":"")." PRIMARY KEY";}function
alter_table($O,$A,$m,$cc,$Sa,$Eb,$d,$ya,$Xd){$c=array();foreach($m
as$l){$e=idf_escape($l[0]);$W=$l[1];if(!$W){$c["DROP"][]=" COLUMN $e";}else{$W[1]=preg_replace("~( COLLATE )'(\\w+)'~","\\1\\2",$W[1]);if($l[0]==""){$c["ADD"][]="\n  ".implode("",$W).($O==""?substr($cc[$W[0]],16+strlen($W[0])):"");}else{unset($W[6]);if($e!=$W[0]){queries("EXEC sp_rename ".q(table($O).".$e").", ".q(idf_unescape($W[0])).", 'COLUMN'");}$c["ALTER COLUMN ".implode("",$W)][]="";}}}if($O==""){return
queries("CREATE TABLE ".table($A)." (".implode(",",(array)$c["ADD"])."\n)");}if($O!=$A){queries("EXEC sp_rename ".q(table($O)).", ".q($A));}if($cc){$c[""]=$cc;}foreach($c
as$w=>$W){if(!queries("ALTER TABLE ".idf_escape($A)." $w".implode(",",$W))){return
false;}}return
true;}function
alter_indexes($O,$c){$t=array();$tb=array();foreach($c
as$W){if($W[2]=="DROP"){if($W[0]=="PRIMARY"){$tb[]=idf_escape($W[1]);}else{$t[]=idf_escape($W[1])." ON ".table($O);}}elseif(!queries(($W[0]!="PRIMARY"?"CREATE $W[0] ".($W[0]!="INDEX"?"INDEX ":"").idf_escape($W[1]!=""?$W[1]:uniqid($O."_"))." ON ".table($O):"ALTER TABLE ".table($O)." ADD PRIMARY KEY")." $W[2]")){return
false;}}return(!$t||queries("DROP INDEX ".implode(", ",$t)))&&(!$tb||queries("ALTER TABLE ".table($O)." DROP ".implode(", ",$tb)));}function
begin(){return
queries("BEGIN TRANSACTION");}function
insert_into($O,$L){return
queries("INSERT INTO ".table($O).($L?" (".implode(", ",array_keys($L)).")\nVALUES (".implode(", ",$L).")":"DEFAULT VALUES"));}function
insert_update($O,$L,$je){$Sf=array();$Z=array();foreach($L
as$w=>$W){$Sf[]="$w = $W";if(isset($je[idf_unescape($w)])){$Z[]="$w = $W";}}return
queries("MERGE ".table($O)." USING (VALUES(".implode(", ",$L).")) AS source (c".implode(", c",range(1,count($L))).") ON ".implode(" AND ",$Z)." WHEN MATCHED THEN UPDATE SET ".implode(", ",$Sf)." WHEN NOT MATCHED THEN INSERT (".implode(", ",array_keys($L)).") VALUES (".implode(", ",$L).");");}function
last_id(){global$g;return$g->result("SELECT SCOPE_IDENTITY()");}function
explain($g,$E){$g->query("SET SHOWPLAN_ALL ON");$G=$g->query($E);$g->query("SET SHOWPLAN_ALL OFF");return$G;}function
found_rows($P,$Z){}function
foreign_keys($O){$G=array();foreach(get_rows("EXEC sp_fkeys @fktable_name = ".q($O))as$H){$n=&$G[$H["FK_NAME"]];$n["table"]=$H["PKTABLE_NAME"];$n["source"][]=$H["FKCOLUMN_NAME"];$n["target"][]=$H["PKCOLUMN_NAME"];}return$G;}function
truncate_tables($Q){return
apply_queries("TRUNCATE TABLE",$Q);}function
drop_views($Y){return
queries("DROP VIEW ".implode(", ",array_map('table',$Y)));}function
drop_tables($Q){return
queries("DROP TABLE ".implode(", ",array_map('table',$Q)));}function
move_tables($Q,$Y,$sf){return
apply_queries("ALTER SCHEMA ".idf_escape($sf)." TRANSFER",array_merge($Q,$Y));}function
trigger($A){if($A==""){return
array();}$I=get_rows("SELECT s.name [Trigger],
CASE WHEN OBJECTPROPERTY(s.id, 'ExecIsInsertTrigger') = 1 THEN 'INSERT' WHEN OBJECTPROPERTY(s.id, 'ExecIsUpdateTrigger') = 1 THEN 'UPDATE' WHEN OBJECTPROPERTY(s.id, 'ExecIsDeleteTrigger') = 1 THEN 'DELETE' END [Event],
CASE WHEN OBJECTPROPERTY(s.id, 'ExecIsInsteadOfTrigger') = 1 THEN 'INSTEAD OF' ELSE 'AFTER' END [Timing],
c.text
FROM sysobjects s
JOIN syscomments c ON s.id = c.id
WHERE s.xtype = 'TR' AND s.name = ".q($A));$G=reset($I);if($G){$G["Statement"]=preg_replace('~^.+\\s+AS\\s+~isU','',$G["text"]);}return$G;}function
triggers($O){$G=array();foreach(get_rows("SELECT sys1.name,
CASE WHEN OBJECTPROPERTY(sys1.id, 'ExecIsInsertTrigger') = 1 THEN 'INSERT' WHEN OBJECTPROPERTY(sys1.id, 'ExecIsUpdateTrigger') = 1 THEN 'UPDATE' WHEN OBJECTPROPERTY(sys1.id, 'ExecIsDeleteTrigger') = 1 THEN 'DELETE' END [Event],
CASE WHEN OBJECTPROPERTY(sys1.id, 'ExecIsInsteadOfTrigger') = 1 THEN 'INSTEAD OF' ELSE 'AFTER' END [Timing]
FROM sysobjects sys1
JOIN sysobjects sys2 ON sys1.parent_obj = sys2.id
WHERE sys1.xtype = 'TR' AND sys2.name = ".q($O))as$H){$G[$H["name"]]=array($H["Timing"],$H["Event"]);}return$G;}function
trigger_options(){return
array("Timing"=>array("AFTER","INSTEAD OF"),"Type"=>array("AS"),);}function
schemas(){return
get_vals("SELECT name FROM sys.schemas");}function
get_schema(){global$g;if($_GET["ns"]!=""){return$_GET["ns"];}return$g->result("SELECT SCHEMA_NAME()");}function
set_schema($Le){return
true;}function
use_sql($ib){return"USE ".idf_escape($ib);}function
show_variables(){return
array();}function
show_status(){return
array();}function
support($Wb){return
ereg('^(scheme|trigger|view|drop_col)$',$Wb);}$v="mssql";$T=array();$df=array();foreach(array('Numbers'=>array("tinyint"=>3,"smallint"=>5,"int"=>10,"bigint"=>20,"bit"=>1,"decimal"=>0,"real"=>12,"float"=>53,"smallmoney"=>10,"money"=>20),'Date and time'=>array("date"=>10,"smalldatetime"=>19,"datetime"=>19,"datetime2"=>19,"time"=>8,"datetimeoffset"=>10),'Strings'=>array("char"=>8000,"varchar"=>8000,"text"=>2147483647,"nchar"=>4000,"nvarchar"=>4000,"ntext"=>1073741823),'Binary'=>array("binary"=>8000,"varbinary"=>8000,"image"=>2147483647),)as$w=>$W){$T+=$W;$df[$w]=array_keys($W);}$Rf=array();$Ed=array("=","<",">","<=",">=","!=","LIKE","LIKE %%","IN","IS NULL","NOT LIKE","NOT IN","IS NOT NULL");$lc=array("len","lower","round","upper");$pc=array("avg","count","count distinct","max","min","sum");$yb=array(array("date|time"=>"getdate",),array("int|decimal|real|float|money|datetime"=>"+/-","char|text"=>"+",));}$sb=array("server"=>"MySQL")+$sb;if(!defined("DRIVER")){$ge=array("MySQLi","MySQL","PDO_MySQL");define("DRIVER","server");if(extension_loaded("mysqli")){class
Min_DB
extends
MySQLi{var$extension="MySQLi";function
Min_DB(){parent::init();}function
connect($K,$U,$D){mysqli_report(MYSQLI_REPORT_OFF);list($tc,$ce)=explode(":",$K,2);$G=@$this->real_connect(($K!=""?$tc:ini_get("mysqli.default_host")),($K.$U!=""?$U:ini_get("mysqli.default_user")),($K.$U.$D!=""?$D:ini_get("mysqli.default_pw")),null,(is_numeric($ce)?$ce:ini_get("mysqli.default_port")),(!is_numeric($ce)?$ce:null));if($G){if(method_exists($this,'set_charset')){$this->set_charset("utf8");}else{$this->query("SET NAMES utf8");}}return$G;}function
result($E,$l=0){$F=$this->query($E);if(!$F){return
false;}$H=$F->fetch_array();return$H[$l];}function
quote($M){return"'".$this->escape_string($M)."'";}}}elseif(extension_loaded("mysql")&&!(ini_get("sql.safe_mode")&&extension_loaded("pdo_mysql"))){class
Min_DB{var$extension="MySQL",$server_info,$affected_rows,$error,$_link,$_result;function
connect($K,$U,$D){$this->_link=@mysql_connect(($K!=""?$K:ini_get("mysql.default_host")),("$K$U"!=""?$U:ini_get("mysql.default_user")),("$K$U$D"!=""?$D:ini_get("mysql.default_password")),true,131072);if($this->_link){$this->server_info=mysql_get_server_info($this->_link);if(function_exists('mysql_set_charset')){mysql_set_charset("utf8",$this->_link);}else{$this->query("SET NAMES utf8");}}else{$this->error=mysql_error();}return(bool)$this->_link;}function
quote($M){return"'".mysql_real_escape_string($M,$this->_link)."'";}function
select_db($ib){return
mysql_select_db($ib,$this->_link);}function
query($E,$Lf=false){$F=@($Lf?mysql_unbuffered_query($E,$this->_link):mysql_query($E,$this->_link));if(!$F){$this->error=mysql_error($this->_link);return
false;}if($F===true){$this->affected_rows=mysql_affected_rows($this->_link);$this->info=mysql_info($this->_link);return
true;}return
new
Min_Result($F);}function
multi_query($E){return$this->_result=$this->query($E);}function
store_result(){return$this->_result;}function
next_result(){return
false;}function
result($E,$l=0){$F=$this->query($E);if(!$F||!$F->num_rows){return
false;}return
mysql_result($F->_result,0,$l);}}class
Min_Result{var$num_rows,$_result,$_offset=0;function
Min_Result($F){$this->_result=$F;$this->num_rows=mysql_num_rows($F);}function
fetch_assoc(){return
mysql_fetch_assoc($this->_result);}function
fetch_row(){return
mysql_fetch_row($this->_result);}function
fetch_field(){$G=mysql_fetch_field($this->_result,$this->_offset++);$G->orgtable=$G->table;$G->orgname=$G->name;$G->charsetnr=($G->blob?63:0);return$G;}function
__destruct(){mysql_free_result($this->_result);}}}elseif(extension_loaded("pdo_mysql")){class
Min_DB
extends
Min_PDO{var$extension="PDO_MySQL";function
connect($K,$U,$D){$this->dsn("mysql:host=".str_replace(":",";unix_socket=",preg_replace('~:(\\d)~',';port=\\1',$K)),$U,$D);$this->query("SET NAMES utf8");return
true;}function
select_db($ib){return$this->query("USE ".idf_escape($ib));}function
query($E,$Lf=false){$this->setAttribute(1000,!$Lf);return
parent::query($E,$Lf);}}}function
idf_escape($s){return"`".str_replace("`","``",$s)."`";}function
table($s){return
idf_escape($s);}function
connect(){global$b;$g=new
Min_DB;$eb=$b->credentials();if($g->connect($eb[0],$eb[1],$eb[2])){$g->query("SET sql_quote_show_create = 1, autocommit = 1");return$g;}$G=$g->error;if(function_exists('iconv')&&!is_utf8($G)&&strlen($Je=iconv("windows-1250","utf-8",$G))>strlen($G)){$G=$Je;}return$G;}function
get_databases($bc=true){global$g;$G=&get_session("dbs");if(!isset($G)){if($bc){restart_session();ob_flush();flush();}$G=get_vals($g->server_info>=5?"SELECT SCHEMA_NAME FROM information_schema.SCHEMATA":"SHOW DATABASES");}return$G;}function
limit($E,$Z,$y,$B=0,$Qe=" "){return" $E$Z".(isset($y)?$Qe."LIMIT $y".($B?" OFFSET $B":""):"");}function
limit1($E,$Z){return
limit($E,$Z,1);}function
db_collation($j,$Oa){global$g;$G=null;$bb=$g->result("SHOW CREATE DATABASE ".idf_escape($j),1);if(preg_match('~ COLLATE ([^ ]+)~',$bb,$_)){$G=$_[1];}elseif(preg_match('~ CHARACTER SET ([^ ]+)~',$bb,$_)){$G=$Oa[$_[1]][-1];}return$G;}function
engines(){$G=array();foreach(get_rows("SHOW ENGINES")as$H){if(ereg("YES|DEFAULT",$H["Support"])){$G[]=$H["Engine"];}}return$G;}function
logged_user(){global$g;return$g->result("SELECT USER()");}function
tables_list(){global$g;return
get_key_vals("SHOW".($g->server_info>=5?" FULL":"")." TABLES");}function
count_tables($i){$G=array();foreach($i
as$j){$G[$j]=count(get_vals("SHOW TABLES IN ".idf_escape($j)));}return$G;}function
table_status($A=""){$G=array();foreach(get_rows("SHOW TABLE STATUS".($A!=""?" LIKE ".q(addcslashes($A,"%_")):""))as$H){if($H["Engine"]=="InnoDB"){$H["Comment"]=preg_replace('~(?:(.+); )?InnoDB free: .*~','\\1',$H["Comment"]);}if(!isset($H["Rows"])){$H["Comment"]="";}if($A!=""){return$H;}$G[$H["Name"]]=$H;}return$G;}function
is_view($P){return!isset($P["Rows"]);}function
fk_support($P){return
eregi("InnoDB|IBMDB2I",$P["Engine"]);}function
fields($O){$G=array();foreach(get_rows("SHOW FULL COLUMNS FROM ".table($O))as$H){preg_match('~^([^( ]+)(?:\\((.+)\\))?( unsigned)?( zerofill)?$~',$H["Type"],$_);$G[$H["Field"]]=array("field"=>$H["Field"],"full_type"=>$H["Type"],"type"=>$_[1],"length"=>$_[2],"unsigned"=>ltrim($_[3].$_[4]),"default"=>($H["Default"]!=""||ereg("char",$_[1])?$H["Default"]:null),"null"=>($H["Null"]=="YES"),"auto_increment"=>($H["Extra"]=="auto_increment"),"on_update"=>(eregi('^on update (.+)',$H["Extra"],$_)?$_[1]:""),"collation"=>$H["Collation"],"privileges"=>array_flip(explode(",",$H["Privileges"])),"comment"=>$H["Comment"],"primary"=>($H["Key"]=="PRI"),);}return$G;}function
indexes($O,$h=null){$G=array();foreach(get_rows("SHOW INDEX FROM ".table($O),$h)as$H){$G[$H["Key_name"]]["type"]=($H["Key_name"]=="PRIMARY"?"PRIMARY":($H["Index_type"]=="FULLTEXT"?"FULLTEXT":($H["Non_unique"]?"INDEX":"UNIQUE")));$G[$H["Key_name"]]["columns"][]=$H["Column_name"];$G[$H["Key_name"]]["lengths"][]=$H["Sub_part"];}return$G;}function
foreign_keys($O){global$g,$Ad;static$ae='`(?:[^`]|``)+`';$G=array();$cb=$g->result("SHOW CREATE TABLE ".table($O),1);if($cb){preg_match_all("~CONSTRAINT ($ae) FOREIGN KEY \\(((?:$ae,? ?)+)\\) REFERENCES ($ae)(?:\\.($ae))? \\(((?:$ae,? ?)+)\\)(?: ON DELETE ($Ad))?(?: ON UPDATE ($Ad))?~",$cb,$Zc,PREG_SET_ORDER);foreach($Zc
as$_){preg_match_all("~$ae~",$_[2],$Ve);preg_match_all("~$ae~",$_[5],$sf);$G[idf_unescape($_[1])]=array("db"=>idf_unescape($_[4]!=""?$_[3]:$_[4]),"table"=>idf_unescape($_[4]!=""?$_[4]:$_[3]),"source"=>array_map('idf_unescape',$Ve[0]),"target"=>array_map('idf_unescape',$sf[0]),"on_delete"=>($_[6]?$_[6]:"RESTRICT"),"on_update"=>($_[7]?$_[7]:"RESTRICT"),);}}return$G;}function
view($A){global$g;return
array("select"=>preg_replace('~^(?:[^`]|`[^`]*`)*\\s+AS\\s+~isU','',$g->result("SHOW CREATE VIEW ".table($A),1)));}function
collations(){$G=array();foreach(get_rows("SHOW COLLATION")as$H){if($H["Default"]){$G[$H["Charset"]][-1]=$H["Collation"];}else{$G[$H["Charset"]][]=$H["Collation"];}}ksort($G);foreach($G
as$w=>$W){asort($G[$w]);}return$G;}function
information_schema($j){global$g;return($g->server_info>=5&&$j=="information_schema");}function
error(){global$g;return
h(preg_replace('~^You have an error.*syntax to use~U',"Syntax error",$g->error));}function
exact_value($W){return
q($W)." COLLATE utf8_bin";}function
create_database($j,$d){set_session("dbs",null);return
queries("CREATE DATABASE ".idf_escape($j).($d?" COLLATE ".q($d):""));}function
drop_databases($i){set_session("dbs",null);return
apply_queries("DROP DATABASE",$i,'idf_escape');}function
rename_database($A,$d){if(create_database($A,$d)){$Ae=array();foreach(tables_list()as$O=>$S){$Ae[]=table($O)." TO ".idf_escape($A).".".table($O);}if(!$Ae||queries("RENAME TABLE ".implode(", ",$Ae))){queries("DROP DATABASE ".idf_escape(DB));return
true;}}return
false;}function
auto_increment(){$za=" PRIMARY KEY";if($_GET["create"]!=""&&$_POST["auto_increment_col"]){foreach(indexes($_GET["create"])as$t){if(in_array($_POST["fields"][$_POST["auto_increment_col"]]["orig"],$t["columns"],true)){$za="";break;}if($t["type"]=="PRIMARY"){$za=" UNIQUE";}}}return" AUTO_INCREMENT$za";}function
alter_table($O,$A,$m,$cc,$Sa,$Eb,$d,$ya,$Xd){$c=array();foreach($m
as$l){$c[]=($l[1]?($O!=""?($l[0]!=""?"CHANGE ".idf_escape($l[0]):"ADD"):" ")." ".implode($l[1]).($O!=""?" $l[2]":""):"DROP ".idf_escape($l[0]));}$c=array_merge($c,$cc);$Ze="COMMENT=".q($Sa).($Eb?" ENGINE=".q($Eb):"").($d?" COLLATE ".q($d):"").($ya!=""?" AUTO_INCREMENT=$ya":"").$Xd;if($O==""){return
queries("CREATE TABLE ".table($A)." (\n".implode(",\n",$c)."\n) $Ze");}if($O!=$A){$c[]="RENAME TO ".table($A);}$c[]=$Ze;return
queries("ALTER TABLE ".table($O)."\n".implode(",\n",$c));}function
alter_indexes($O,$c){foreach($c
as$w=>$W){$c[$w]=($W[2]=="DROP"?"\nDROP INDEX ".idf_escape($W[1]):"\nADD $W[0] ".($W[0]=="PRIMARY"?"KEY ":"").($W[1]!=""?idf_escape($W[1])." ":"").$W[2]);}return
queries("ALTER TABLE ".table($O).implode(",",$c));}function
truncate_tables($Q){return
apply_queries("TRUNCATE TABLE",$Q);}function
drop_views($Y){return
queries("DROP VIEW ".implode(", ",array_map('table',$Y)));}function
drop_tables($Q){return
queries("DROP TABLE ".implode(", ",array_map('table',$Q)));}function
move_tables($Q,$Y,$sf){$Ae=array();foreach(array_merge($Q,$Y)as$O){$Ae[]=table($O)." TO ".idf_escape($sf).".".table($O);}return
queries("RENAME TABLE ".implode(", ",$Ae));}function
copy_tables($Q,$Y,$sf){queries("SET sql_mode = 'NO_AUTO_VALUE_ON_ZERO'");foreach($Q
as$O){$A=($sf==DB?table("copy_$O"):idf_escape($sf).".".table($O));if(!queries("DROP TABLE IF EXISTS $A")||!queries("CREATE TABLE $A LIKE ".table($O))||!queries("INSERT INTO $A SELECT * FROM ".table($O))){return
false;}}foreach($Y
as$O){$A=($sf==DB?table("copy_$O"):idf_escape($sf).".".table($O));$Zf=view($O);if(!queries("DROP VIEW IF EXISTS $A")||!queries("CREATE VIEW $A AS $Zf[select]")){return
false;}}return
true;}function
trigger($A){if($A==""){return
array();}$I=get_rows("SHOW TRIGGERS WHERE `Trigger` = ".q($A));return
reset($I);}function
triggers($O){$G=array();foreach(get_rows("SHOW TRIGGERS LIKE ".q(addcslashes($O,"%_")))as$H){$G[$H["Trigger"]]=array($H["Timing"],$H["Event"]);}return$G;}function
trigger_options(){return
array("Timing"=>array("BEFORE","AFTER"),"Type"=>array("FOR EACH ROW"),);}function
routine($A,$S){global$g,$Gb,$Bc,$T;$ua=array("bool","boolean","integer","double precision","real","dec","numeric","fixed","national char","national varchar");$Kf="((".implode("|",array_merge(array_keys($T),$ua)).")(?:\\s*\\(((?:[^'\")]*|$Gb)+)\\))?\\s*(zerofill\\s*)?(unsigned(?:\\s+zerofill)?)?)(?:\\s*(?:CHARSET|CHARACTER\\s+SET)\\s*['\"]?([^'\"\\s]+)['\"]?)?";$ae="\\s*(".($S=="FUNCTION"?"":$Bc).")?\\s*(?:`((?:[^`]|``)*)`\\s*|\\b(\\S+)\\s+)$Kf";$bb=$g->result("SHOW CREATE $S ".idf_escape($A),2);preg_match("~\\(((?:$ae\\s*,?)*)\\)".($S=="FUNCTION"?"\\s*RETURNS\\s+$Kf":"")."\\s*(.*)~is",$bb,$_);$m=array();preg_match_all("~$ae\\s*,?~is",$_[1],$Zc,PREG_SET_ORDER);foreach($Zc
as$Sd){$A=str_replace("``","`",$Sd[2]).$Sd[3];$m[]=array("field"=>$A,"type"=>strtolower($Sd[5]),"length"=>preg_replace_callback("~$Gb~s",'normalize_enum',$Sd[6]),"unsigned"=>strtolower(preg_replace('~\\s+~',' ',trim("$Sd[8] $Sd[7]"))),"full_type"=>$Sd[4],"inout"=>strtoupper($Sd[1]),"collation"=>strtolower($Sd[9]),);}if($S!="FUNCTION"){return
array("fields"=>$m,"definition"=>$_[11]);}return
array("fields"=>$m,"returns"=>array("type"=>$_[12],"length"=>$_[13],"unsigned"=>$_[15],"collation"=>$_[16]),"definition"=>$_[17],"language"=>"SQL",);}function
routines(){return
get_rows("SELECT * FROM information_schema.ROUTINES WHERE ROUTINE_SCHEMA = ".q(DB));}function
routine_languages(){return
array();}function
begin(){return
queries("BEGIN");}function
insert_into($O,$L){return
queries("INSERT INTO ".table($O)." (".implode(", ",array_keys($L)).")\nVALUES (".implode(", ",$L).")");}function
insert_update($O,$L,$je){foreach($L
as$w=>$W){$L[$w]="$w = $W";}$Sf=implode(", ",$L);return
queries("INSERT INTO ".table($O)." SET $Sf ON DUPLICATE KEY UPDATE $Sf");}function
last_id(){global$g;return$g->result("SELECT LAST_INSERT_ID()");}function
explain($g,$E){return$g->query("EXPLAIN $E");}function
found_rows($P,$Z){return($Z||$P["Engine"]!="InnoDB"?null:$P["Rows"]);}function
types(){return
array();}function
schemas(){return
array();}function
get_schema(){return"";}function
set_schema($Le){return
true;}function
create_sql($O,$ya){global$g;$G=$g->result("SHOW CREATE TABLE ".table($O),1);if(!$ya){$G=preg_replace('~ AUTO_INCREMENT=\\d+~','',$G);}return$G;}function
truncate_sql($O){return"TRUNCATE ".table($O);}function
use_sql($ib){return"USE ".idf_escape($ib);}function
trigger_sql($O,$N){$G="";foreach(get_rows("SHOW TRIGGERS LIKE ".q(addcslashes($O,"%_")),null,"-- ")as$H){$G.="\n".($N=='CREATE+ALTER'?"DROP TRIGGER IF EXISTS ".idf_escape($H["Trigger"]).";;\n":"")."CREATE TRIGGER ".idf_escape($H["Trigger"])." $H[Timing] $H[Event] ON ".table($H["Table"])." FOR EACH ROW\n$H[Statement];;\n";}return$G;}function
show_variables(){return
get_key_vals("SHOW VARIABLES");}function
process_list(){return
get_rows("SHOW FULL PROCESSLIST");}function
show_status(){return
get_key_vals("SHOW STATUS");}function
support($Wb){global$g;return!ereg("scheme|sequence|type".($g->server_info<5.1?"|event|partitioning".($g->server_info<5?"|view|routine|trigger":""):""),$Wb);}$v="sql";$T=array();$df=array();foreach(array('Numbers'=>array("tinyint"=>3,"smallint"=>5,"mediumint"=>8,"int"=>10,"bigint"=>20,"decimal"=>66,"float"=>12,"double"=>21),'Date and time'=>array("date"=>10,"datetime"=>19,"timestamp"=>19,"time"=>10,"year"=>4),'Strings'=>array("char"=>255,"varchar"=>65535,"tinytext"=>255,"text"=>65535,"mediumtext"=>16777215,"longtext"=>4294967295),'Binary'=>array("bit"=>20,"binary"=>255,"varbinary"=>65535,"tinyblob"=>255,"blob"=>65535,"mediumblob"=>16777215,"longblob"=>4294967295),'Lists'=>array("enum"=>65535,"set"=>64),)as$w=>$W){$T+=$W;$df[$w]=array_keys($W);}$Rf=array("unsigned","zerofill","unsigned zerofill");$Ed=array("=","<",">","<=",">=","!=","LIKE","LIKE %%","REGEXP","IN","IS NULL","NOT LIKE","NOT REGEXP","NOT IN","IS NOT NULL","");$lc=array("char_length","date","from_unixtime","hex","lower","round","sec_to_time","time_to_sec","upper");$pc=array("avg","count","count distinct","group_concat","max","min","sum");$yb=array(array("char"=>"md5/sha1/password/encrypt/uuid","binary"=>"md5/sha1/hex","date|time"=>"now",),array("int|float|double|decimal"=>"+/-","date"=>"+ interval/- interval","time"=>"addtime/subtime","char|text"=>"concat",));}define("SERVER",$_GET[DRIVER]);define("DB",$_GET["db"]);define("ME",preg_replace('~^[^?]*/([^?]*).*~','\\1',$_SERVER["REQUEST_URI"]).'?'.(sid()?SID.'&':'').(SERVER!==null?DRIVER."=".urlencode(SERVER).'&':'').(isset($_GET["username"])?"username=".urlencode($_GET["username"]).'&':'').(DB!=""?'db='.urlencode(DB).'&'.(isset($_GET["ns"])?"ns=".urlencode($_GET["ns"])."&":""):''));$ia="3.3.4";class
Adminer{var$operators;function
name(){return"<a href='http://www.adminer.org/' id='h1'>Adminer</a>";}function
credentials(){return
array(SERVER,$_GET["username"],get_session("pwds"));}function
permanentLogin(){return
password_file();}function
database(){return
DB;}function
databases($bc=true){return
get_databases($bc);}function
headers(){return
true;}function
head(){return
true;}function
loginForm(){global$sb;echo'<table cellspacing="0">
<tr><th>System<td>',html_select("driver",$sb,DRIVER,"loginDriver(this);"),'<tr><th>Server<td><input name="server" value="',h(SERVER),'" title="hostname[:port]">
<tr><th>Username<td><input id="username" name="username" value="',h($_GET["username"]);?>">
<tr><th>Password<td><input type="password" name="password">
</table>
<script type="text/javascript">
var username = document.getElementById('username');
username.focus();
username.form['driver'].onchange();
</script>
<?php

echo"<p><input type='submit' value='".'Login'."'>\n",checkbox("permanent",1,$_COOKIE["adminer_permanent"],'Permanent login')."\n";}function
login($Wc,$D){return
true;}function
tableName($kf){return
h($kf["Name"]);}function
fieldName($l,$Id=0){return'<span title="'.h($l["full_type"]).'">'.h($l["field"]).'</span>';}function
selectLinks($kf,$L=""){echo'<p class="tabs">';$Uc=array("select"=>'Select data',"table"=>'Show structure');if(is_view($kf)){$Uc["view"]='Alter view';}else{$Uc["create"]='Alter table';}if(isset($L)){$Uc["edit"]='New item';}foreach($Uc
as$w=>$W){echo" <a href='".h(ME)."$w=".urlencode($kf["Name"]).($w=="edit"?$L:"")."'".bold(isset($_GET[$w])).">$W</a>";}echo"\n";}function
foreignKeys($O){return
foreign_keys($O);}function
backwardKeys($O,$jf){return
array();}function
backwardKeysPrint($Aa,$H){}function
selectQuery($E){global$v;return"<p><a href='".h(remove_from_uri("page"))."&amp;page=last' title='".'Last page'."'>&gt;&gt;</a> <code class='jush-$v'>".h(str_replace("\n"," ",$E))."</code> <a href='".h(ME)."sql=".urlencode($E)."'>".'Edit'."</a></p>\n";}function
rowDescription($O){return"";}function
rowDescriptions($I,$dc){return$I;}function
selectVal($W,$z,$l){$G=($W!="<i>NULL</i>"&&ereg("char|binary",$l["type"])&&!ereg("var",$l["type"])?"<code>$W</code>":$W);if(ereg('blob|bytea|raw|file',$l["type"])&&!is_utf8($W)){$G=lang(array('%d byte','%d bytes'),strlen(html_entity_decode($W,ENT_QUOTES)));}return($z?"<a href='$z'>$G</a>":$G);}function
editVal($W,$l){return(ereg("binary",$l["type"])?reset(unpack("H*",$W)):$W);}function
selectColumnsPrint($J,$f){global$lc,$pc;print_fieldset("select",'Select',$J);$q=0;$kc=array('Functions'=>$lc,'Aggregation'=>$pc);foreach($J
as$w=>$W){$W=$_GET["columns"][$w];echo"<div>".html_select("columns[$q][fun]",array(-1=>"")+$kc,$W["fun"]),"(<select name='columns[$q][col]'><option>".optionlist($f,$W["col"],true)."</select>)</div>\n";$q++;}echo"<div>".html_select("columns[$q][fun]",array(-1=>"")+$kc,"","this.nextSibling.nextSibling.onchange();"),"(<select name='columns[$q][col]' onchange='selectAddRow(this);'><option>".optionlist($f,null,true)."</select>)</div>\n","</div></fieldset>\n";}function
selectSearchPrint($Z,$f,$u){print_fieldset("search",'Search',$Z);foreach($u
as$q=>$t){if($t["type"]=="FULLTEXT"){echo"(<i>".implode("</i>, <i>",array_map('h',$t["columns"]))."</i>) AGAINST"," <input name='fulltext[$q]' value='".h($_GET["fulltext"][$q])."'>",checkbox("boolean[$q]",1,isset($_GET["boolean"][$q]),"BOOL"),"<br>\n";}}$q=0;foreach((array)$_GET["where"]as$W){if("$W[col]$W[val]"!=""&&in_array($W["op"],$this->operators)){echo"<div><select name='where[$q][col]'><option value=''>(".'anywhere'.")".optionlist($f,$W["col"],true)."</select>",html_select("where[$q][op]",$this->operators,$W["op"]),"<input name='where[$q][val]' value='".h($W["val"])."'></div>\n";$q++;}}echo"<div><select name='where[$q][col]' onchange='this.nextSibling.nextSibling.onchange();'><option value=''>(".'anywhere'.")".optionlist($f,null,true)."</select>",html_select("where[$q][op]",$this->operators,"="),"<input name='where[$q][val]' onchange='selectAddRow(this);'></div>\n","</div></fieldset>\n";}function
selectOrderPrint($Id,$f,$u){print_fieldset("sort",'Sort',$Id);$q=0;foreach((array)$_GET["order"]as$w=>$W){if(isset($f[$W])){echo"<div><select name='order[$q]'><option>".optionlist($f,$W,true)."</select>",checkbox("desc[$q]",1,isset($_GET["desc"][$w]),'descending')."</div>\n";$q++;}}echo"<div><select name='order[$q]' onchange='selectAddRow(this);'><option>".optionlist($f,null,true)."</select>","<label><input type='checkbox' name='desc[$q]' value='1'>".'descending'."</label></div>\n";echo"</div></fieldset>\n";}function
selectLimitPrint($y){echo"<fieldset><legend>".'Limit'."</legend><div>";echo"<input name='limit' size='3' value='".h($y)."'>","</div></fieldset>\n";}function
selectLengthPrint($vf){if(isset($vf)){echo"<fieldset><legend>".'Text length'."</legend><div>",'<input name="text_length" size="3" value="'.h($vf).'">',"</div></fieldset>\n";}}function
selectActionPrint(){echo"<fieldset><legend>".'Action'."</legend><div>","<input type='submit' value='".'Select'."'>","</div></fieldset>\n";}function
selectCommandPrint(){return!information_schema(DB);}function
selectImportPrint(){return
true;}function
selectEmailPrint($Ab,$f){}function
selectColumnsProcess($f,$u){global$lc,$pc;$J=array();$nc=array();foreach((array)$_GET["columns"]as$w=>$W){if($W["fun"]=="count"||(isset($f[$W["col"]])&&(!$W["fun"]||in_array($W["fun"],$lc)||in_array($W["fun"],$pc)))){$J[$w]=apply_sql_function($W["fun"],(isset($f[$W["col"]])?idf_escape($W["col"]):"*"));if(!in_array($W["fun"],$pc)){$nc[]=$J[$w];}}}return
array($J,$nc);}function
selectSearchProcess($m,$u){global$v;$G=array();foreach($u
as$q=>$t){if($t["type"]=="FULLTEXT"&&$_GET["fulltext"][$q]!=""){$G[]="MATCH (".implode(", ",array_map('idf_escape',$t["columns"])).") AGAINST (".q($_GET["fulltext"][$q]).(isset($_GET["boolean"][$q])?" IN BOOLEAN MODE":"").")";}}foreach((array)$_GET["where"]as$W){if("$W[col]$W[val]"!=""&&in_array($W["op"],$this->operators)){$Va=" $W[op]";if(ereg('IN$',$W["op"])){$xc=process_length($W["val"]);$Va.=" (".($xc!=""?$xc:"NULL").")";}elseif(!$W["op"]){$Va.=$W["val"];}elseif($W["op"]=="LIKE %%"){$Va=" LIKE ".$this->processInput($m[$W["col"]],"%$W[val]%");}elseif(!ereg('NULL$',$W["op"])){$Va.=" ".$this->processInput($m[$W["col"]],$W["val"]);}if($W["col"]!=""){$G[]=idf_escape($W["col"]).$Va;}else{$Pa=array();foreach($m
as$A=>$l){if(is_numeric($W["val"])||!ereg('int|float|double|decimal',$l["type"])){$A=idf_escape($A);$Pa[]=($v=="sql"&&ereg('char|text|enum|set',$l["type"])&&!ereg('^utf8',$l["collation"])?"CONVERT($A USING utf8)":$A);}}$G[]=($Pa?"(".implode("$Va OR ",$Pa)."$Va)":"0");}}}return$G;}function
selectOrderProcess($m,$u){$G=array();foreach((array)$_GET["order"]as$w=>$W){if(isset($m[$W])||preg_match('~^((COUNT\\(DISTINCT |[A-Z0-9_]+\\()(`(?:[^`]|``)+`|"(?:[^"]|"")+")\\)|COUNT\\(\\*\\))$~',$W)){$G[]=(isset($m[$W])?idf_escape($W):$W).(isset($_GET["desc"][$w])?" DESC":"");}}return$G;}function
selectLimitProcess(){return(isset($_GET["limit"])?$_GET["limit"]:"30");}function
selectLengthProcess(){return(isset($_GET["text_length"])?$_GET["text_length"]:"100");}function
selectEmailProcess($Z,$dc){return
false;}function
messageQuery($E){global$v;static$ab=0;restart_session();$r="sql-".($ab++);$rc=&get_session("queries");if(strlen($E)>1e6){$E=ereg_replace('[\x80-\xFF]+$','',substr($E,0,1e6))."\n...";}$rc[$_GET["db"]][]=$E;return" <a href='#$r' onclick=\"return !toggle('$r');\">".'SQL command'."</a><div id='$r' class='hidden'><pre><code class='jush-$v'>".shorten_utf8($E,1000).'</code></pre><p><a href="'.h(str_replace("db=".urlencode(DB),"db=".urlencode($_GET["db"]),ME).'sql=&history='.(count($rc[$_GET["db"]])-1)).'">'.'Edit'.'</a></div>';}function
editFunctions($l){global$yb;$G=($l["null"]?"NULL/":"");foreach($yb
as$w=>$lc){if(!$w||(!isset($_GET["call"])&&(isset($_GET["select"])||where($_GET)))){foreach($lc
as$ae=>$W){if(!$ae||ereg($ae,$l["type"])){$G.="/$W";}}if($w&&!ereg('set|blob|bytea|raw|file',$l["type"])){$G.="/=";}}}return
explode("/",$G);}function
editInput($O,$l,$xa,$X){if($l["type"]=="enum"){return(isset($_GET["select"])?"<label><input type='radio'$xa value='-1' checked><i>".'original'."</i></label> ":"").($l["null"]?"<label><input type='radio'$xa value=''".(isset($X)||isset($_GET["select"])?"":" checked")."><i>NULL</i></label> ":"").enum_input("radio",$xa,$l,$X,0);}return"";}function
processInput($l,$X,$o=""){if($o=="="){return$X;}$A=$l["field"];$G=($l["type"]=="bit"&&ereg("^([0-9]+|b'[0-1]+')\$",$X)?$X:q($X));if(ereg('^(now|getdate|uuid)$',$o)){$G="$o()";}elseif(ereg('^current_(date|timestamp)$',$o)){$G=$o;}elseif(ereg('^([+-]|\\|\\|)$',$o)){$G=idf_escape($A)." $o $G";}elseif(ereg('^[+-] interval$',$o)){$G=idf_escape($A)." $o ".(preg_match("~^(\\d+|'[0-9.: -]') [A-Z_]+$~i",$X)?$X:$G);}elseif(ereg('^(addtime|subtime|concat)$',$o)){$G="$o(".idf_escape($A).", $G)";}elseif(ereg('^(md5|sha1|password|encrypt|hex)$',$o)){$G="$o($G)";}if(ereg("binary",$l["type"])){$G="unhex($G)";}return$G;}function
dumpOutput(){$G=array('text'=>'open','file'=>'save');if(function_exists('gzencode')){$G['gz']='gzip';}if(function_exists('bzcompress')){$G['bz2']='bzip2';}return$G;}function
dumpFormat(){return
array('sql'=>'SQL','csv'=>'CSV,','csv;'=>'CSV;','tsv'=>'TSV');}function
dumpTable($O,$N,$Gc=false){if($_POST["format"]!="sql"){echo"\xef\xbb\xbf";if($N){dump_csv(array_keys(fields($O)));}}elseif($N){$bb=create_sql($O,$_POST["auto_increment"]);if($bb){if($N=="DROP+CREATE"){echo"DROP ".($Gc?"VIEW":"TABLE")." IF EXISTS ".table($O).";\n";}if($Gc){$bb=preg_replace('~^([A-Z =]+) DEFINER=`'.preg_replace('~@(.*)~','`@`(%|\\1)',logged_user()).'`~','\\1',$bb);}echo($N!="CREATE+ALTER"?$bb:($Gc?substr_replace($bb," OR REPLACE",6,0):substr_replace($bb," IF NOT EXISTS",12,0))).";\n\n";}if($N=="CREATE+ALTER"&&!$Gc){$E="SELECT COLUMN_NAME, COLUMN_DEFAULT, IS_NULLABLE, COLLATION_NAME, COLUMN_TYPE, EXTRA, COLUMN_COMMENT FROM information_schema.COLUMNS WHERE TABLE_SCHEMA = DATABASE() AND TABLE_NAME = ".q($O)." ORDER BY ORDINAL_POSITION";echo"DELIMITER ;;
CREATE PROCEDURE adminer_alter (INOUT alter_command text) BEGIN
	DECLARE _column_name, _collation_name, after varchar(64) DEFAULT '';
	DECLARE _column_type, _column_default text;
	DECLARE _is_nullable char(3);
	DECLARE _extra varchar(30);
	DECLARE _column_comment varchar(255);
	DECLARE done, set_after bool DEFAULT 0;
	DECLARE add_columns text DEFAULT '";$m=array();$ta="";foreach(get_rows($E)as$H){$lb=$H["COLUMN_DEFAULT"];$H["default"]=(isset($lb)?q($lb):"NULL");$H["after"]=q($ta);$H["alter"]=escape_string(idf_escape($H["COLUMN_NAME"])." $H[COLUMN_TYPE]".($H["COLLATION_NAME"]?" COLLATE $H[COLLATION_NAME]":"").(isset($lb)?" DEFAULT ".($lb=="CURRENT_TIMESTAMP"?$lb:$H["default"]):"").($H["IS_NULLABLE"]=="YES"?"":" NOT NULL").($H["EXTRA"]?" $H[EXTRA]":"").($H["COLUMN_COMMENT"]?" COMMENT ".q($H["COLUMN_COMMENT"]):"").($ta?" AFTER ".idf_escape($ta):" FIRST"));echo", ADD $H[alter]";$m[]=$H;$ta=$H["COLUMN_NAME"];}echo"';
	DECLARE columns CURSOR FOR $E;
	DECLARE CONTINUE HANDLER FOR NOT FOUND SET done = 1;
	SET @alter_table = '';
	OPEN columns;
	REPEAT
		FETCH columns INTO _column_name, _column_default, _is_nullable, _collation_name, _column_type, _extra, _column_comment;
		IF NOT done THEN
			SET set_after = 1;
			CASE _column_name";foreach($m
as$H){echo"
				WHEN ".q($H["COLUMN_NAME"])." THEN
					SET add_columns = REPLACE(add_columns, ', ADD $H[alter]', IF(
						_column_default <=> $H[default] AND _is_nullable = '$H[IS_NULLABLE]' AND _collation_name <=> ".(isset($H["COLLATION_NAME"])?"'$H[COLLATION_NAME]'":"NULL")." AND _column_type = ".q($H["COLUMN_TYPE"])." AND _extra = '$H[EXTRA]' AND _column_comment = ".q($H["COLUMN_COMMENT"])." AND after = $H[after]
					, '', ', MODIFY $H[alter]'));";}echo"
				ELSE
					SET @alter_table = CONCAT(@alter_table, ', DROP ', _column_name);
					SET set_after = 0;
			END CASE;
			IF set_after THEN
				SET after = _column_name;
			END IF;
		END IF;
	UNTIL done END REPEAT;
	CLOSE columns;
	IF @alter_table != '' OR add_columns != '' THEN
		SET alter_command = CONCAT(alter_command, 'ALTER TABLE ".table($O)."', SUBSTR(CONCAT(add_columns, @alter_table), 2), ';\\n');
	END IF;
END;;
DELIMITER ;
CALL adminer_alter(@adminer_alter);
DROP PROCEDURE adminer_alter;

";}}}function
dumpData($O,$N,$E){global$g,$v;$bd=($v=="sqlite"?0:1048576);if($N){if($_POST["format"]=="sql"&&$N=="TRUNCATE+INSERT"){echo
truncate_sql($O).";\n";}if($_POST["format"]=="sql"){$m=fields($O);}$F=$g->query($E,1);if($F){$Dc="";$Ga="";while($H=$F->fetch_assoc()){if($_POST["format"]!="sql"){if($N=="table"){dump_csv(array_keys($H));$N="INSERT";}dump_csv($H);}else{if(!$Dc){$Dc="INSERT INTO ".table($O)." (".implode(", ",array_map('idf_escape',array_keys($H))).") VALUES";}foreach($H
as$w=>$W){$H[$w]=(isset($W)?(ereg('int|float|double|decimal|bit',$m[$w]["type"])?$W:q($W)):"NULL");}$Je=implode(",\t",$H);if($N=="INSERT+UPDATE"){$L=array();foreach($H
as$w=>$W){$L[]=idf_escape($w)." = $W";}echo"$Dc ($Je) ON DUPLICATE KEY UPDATE ".implode(", ",$L).";\n";}else{$Je=($bd?"\n":" ")."($Je)";if(!$Ga){$Ga=$Dc.$Je;}elseif(strlen($Ga)+4+strlen($Je)<$bd){$Ga.=",$Je";}else{echo"$Ga;\n";$Ga=$Dc.$Je;}}}}if($_POST["format"]=="sql"&&$N!="INSERT+UPDATE"&&$Ga){$Ga.=";\n";echo$Ga;}}elseif($_POST["format"]=="sql"){echo"-- ".str_replace("\n"," ",$g->error)."\n";}}}function
dumpHeaders($vc,$od=false){$Qd=$_POST["output"];$Sb=($_POST["format"]=="sql"?"sql":($od?"tar":"csv"));header("Content-Type: ".($Qd=="bz2"?"application/x-bzip":($Qd=="gz"?"application/x-gzip":($Sb=="tar"?"application/x-tar":($Sb=="sql"||$Qd!="file"?"text/plain":"text/csv")."; charset=utf-8"))));if($Qd=="bz2"){ob_start('bzcompress',1e6);}if($Qd=="gz"){ob_start('gzencode',1e6);}return$Sb;}function
homepage(){echo'<p>'.($_GET["ns"]==""?'<a href="'.h(ME).'database=">'.'Alter database'."</a>\n":""),(support("scheme")?"<a href='".h(ME)."scheme='>".($_GET["ns"]!=""?'Alter schema':'Create schema')."</a>\n":""),($_GET["ns"]!==""?'<a href="'.h(ME).'schema=">'.'Database schema'."</a>\n":""),(support("privileges")?"<a href='".h(ME)."privileges='>".'Privileges'."</a>\n":"");return
true;}function
navigation($nd){global$ia,$g,$R,$v,$sb;echo'<h1>
',$this->name(),' <span class="version">',$ia,'</span>
<a href="http://www.adminer.org/#download" id="version">',(version_compare($ia,$_COOKIE["adminer_version"])<0?h($_COOKIE["adminer_version"]):""),'</a>
</h1>
';if($nd=="auth"){$ac=true;foreach((array)$_SESSION["pwds"]as$rb=>$Te){foreach($Te
as$K=>$Vf){foreach($Vf
as$U=>$D){if(isset($D)){if($ac){echo"<p onclick='eventStop(event);'>\n";$ac=false;}echo"<a href='".h(auth_url($rb,$K,$U))."'>($sb[$rb]) ".h($U.($K!=""?"@$K":""))."</a><br>\n";}}}}}else{$i=$this->databases();echo'<form action="" method="post">
<p class="logout">
';if(DB==""||!$nd){echo"<a href='".h(ME)."sql='".bold(isset($_GET["sql"])).">".'SQL command'."</a>\n";if(support("dump")){echo"<a href='".h(ME)."dump=".urlencode(isset($_GET["table"])?$_GET["table"]:$_GET["select"])."' id='dump'".bold(isset($_GET["dump"])).">".'Dump'."</a>\n";}}echo'<input type="submit" name="logout" value="Logout" onclick="eventStop(event);">
<input type="hidden" name="token" value="',$R,'">
</p>
</form>
<form action="">
<p>
';hidden_fields_get();echo($i?html_select("db",array(""=>"(".'database'.")")+$i,DB,"this.form.submit();"):'<input name="db" value="'.h(DB).'">'),'<input type="submit" value="Use"',($i?" class='hidden'":""),' onclick="eventStop(event);">
';if($nd!="db"&&DB!=""&&$g->select_db(DB)){if(support("scheme")){echo"<br>".html_select("ns",array(""=>"(".'schema'.")")+schemas(),$_GET["ns"],"this.form.submit();");if($_GET["ns"]!=""){set_schema($_GET["ns"]);}}if($_GET["ns"]!==""&&!$nd){echo'<p><a href="'.h(ME).'create="'.bold($_GET["create"]==="").">".'Create new table'."</a>\n";$Q=tables_list();if(!$Q){echo"<p class='message'>".'No tables.'."\n";}else{$this->tablesPrint($Q);$Uc=array();foreach($Q
as$O=>$S){$Uc[]=preg_quote($O,'/');}echo"<script type='text/javascript'>\n","var jushLinks = { $v: [ '".js_escape(ME)."table=\$&', /\\b(".implode("|",$Uc).")\\b/g ] };\n";foreach(array("bac","bra","sqlite_quo","mssql_bra")as$W){echo"jushLinks.$W = jushLinks.$v;\n";}echo"</script>\n";}}}echo(isset($_GET["sql"])?'<input type="hidden" name="sql" value="">':(isset($_GET["schema"])?'<input type="hidden" name="schema" value="">':(isset($_GET["dump"])?'<input type="hidden" name="dump" value="">':""))),"</p></form>\n";}}function
tablesPrint($Q){echo"<p id='tables'>\n";foreach($Q
as$O=>$S){echo'<a href="'.h(ME).'select='.urlencode($O).'"'.bold($_GET["select"]==$O).">".'select'."</a> ",'<a href="'.h(ME).'table='.urlencode($O).'"'.bold($_GET["table"]==$O)." title='".'Show structure'."'>".$this->tableName(array("Name"=>$O))."</a><br>\n";}}}$b=(function_exists('adminer_object')?adminer_object():new
Adminer);if(!isset($b->operators)){$b->operators=$Ed;}function
page_header($yf,$k="",$Fa=array(),$zf=""){global$ca,$b,$g,$sb;header("Content-Type: text/html; charset=utf-8");if($b->headers()){header("X-Frame-Options: deny");header("X-XSS-Protection: 0");}$_f=$yf.($zf!=""?": ".h($zf):"");$Af=strip_tags($_f.(SERVER!=""&&SERVER!="localhost"?h(" - ".SERVER):"")." - ".$b->name());if(is_ajax()){header("X-AJAX-Title: ".rawurlencode($Af));}else{echo'<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01//EN">
<html lang="en" dir="ltr">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<meta http-equiv="Content-Script-Type" content="text/javascript">
<meta name="robots" content="noindex">
<title>',$Af,'</title>
<link rel="stylesheet" type="text/css" href="',h(preg_replace("~\\?.*~","",ME))."?file=default.css&amp;version=3.3.4";?>">
<script type="text/javascript">
var areYouSure = 'Resend POST data?';
var noResponse = 'No response from server.';
</script>
<script type="text/javascript" src="<?php echo
h(preg_replace("~\\?.*~","",ME))."?file=functions.js&amp;version=3.3.4",'"></script>
';if($b->head()){echo'<link rel="shortcut icon" type="image/x-icon" href="',h(preg_replace("~\\?.*~","",ME))."?file=favicon.ico&amp;version=3.3.4",'" id="favicon">
';if(file_exists("adminer.css")){echo'<link rel="stylesheet" type="text/css" href="adminer.css">
';}}echo'
<body class="ltr nojs"',($_POST?"":" onclick=\"return bodyClick(event, '".h(js_escape(DB)."', '".js_escape($_GET["ns"]))."');\"");echo' onkeydown="bodyKeydown(event);" onload="bodyLoad(\'',(is_object($g)?substr($g->server_info,0,3):""),'\');',(isset($_COOKIE["adminer_version"])?"":" verifyVersion();"),'">
<script type="text/javascript">
document.body.className = document.body.className.replace(/ nojs/, \' js\');
</script>

<div id="loader"><img src="',h(preg_replace("~\\?.*~","",ME))."?file=loader.gif&amp;version=3.3.4",'" alt=""></div>
<div id="content">
';}if(isset($Fa)){$z=substr(preg_replace('~(username|db|ns)=[^&]*&~','',ME),0,-1);echo'<p id="breadcrumb"><a href="'.h($z?$z:".").'">'.$sb[DRIVER].'</a> &raquo; ';$z=substr(preg_replace('~(db|ns)=[^&]*&~','',ME),0,-1);$K=(SERVER!=""?h(SERVER):'Server');if($Fa===false){echo"$K\n";}else{echo"<a href='".($z?h($z):".")."' accesskey='1' title='Alt+Shift+1'>$K</a> &raquo; ";if($_GET["ns"]!=""||(DB!=""&&is_array($Fa))){echo'<a href="'.h($z."&db=".urlencode(DB).(support("scheme")?"&ns=":"")).'">'.h(DB).'</a> &raquo; ';}if(is_array($Fa)){if($_GET["ns"]!=""){echo'<a href="'.h(substr(ME,0,-1)).'">'.h($_GET["ns"]).'</a> &raquo; ';}foreach($Fa
as$w=>$W){$nb=(is_array($W)?$W[1]:$W);if($nb!=""){echo'<a href="'.h(ME."$w=").urlencode(is_array($W)?$W[0]:$W).'">'.h($nb).'</a> &raquo; ';}}}echo"$yf\n";}}echo"<h2>$_f</h2>\n";restart_session();$Tf=preg_replace('~^[^?]*~','',$_SERVER["REQUEST_URI"]);$kd=$_SESSION["messages"][$Tf];if($kd){echo"<div class='message'>".implode("</div>\n<div class='message'>",$kd)."</div>\n";unset($_SESSION["messages"][$Tf]);}$i=&get_session("dbs");if(DB!=""&&$i&&!in_array(DB,$i,true)){$i=null;}if($k){echo"<div class='error'>$k</div>\n";}define("PAGE_HEADER",1);}function
page_footer($nd=""){global$b;if(!is_ajax()){echo'</div>

<div id="menu">
';$b->navigation($nd);echo'</div>
';}}function
int32($qd){while($qd>=2147483648){$qd-=4294967296;}while($qd<=-2147483649){$qd+=4294967296;}return(int)$qd;}function
long2str($V,$bg){$Je='';foreach($V
as$W){$Je.=pack('V',$W);}if($bg){return
substr($Je,0,end($V));}return$Je;}function
str2long($Je,$bg){$V=array_values(unpack('V*',str_pad($Je,4*ceil(strlen($Je)/4),"\0")));if($bg){$V[]=strlen($Je);}return$V;}function
xxtea_mx($fg,$eg,$hf,$Jc){return
int32((($fg>>5&0x7FFFFFF)^$eg<<2)+(($eg>>3&0x1FFFFFFF)^$fg<<4))^int32(($hf^$eg)+($Jc^$fg));}function
encrypt_string($cf,$w){if($cf==""){return"";}$w=array_values(unpack("V*",pack("H*",md5($w))));$V=str2long($cf,true);$qd=count($V)-1;$fg=$V[$qd];$eg=$V[0];$re=floor(6+52/($qd+1));$hf=0;while($re-->0){$hf=int32($hf+0x9E3779B9);$xb=$hf>>2&3;for($Rd=0;$Rd<$qd;$Rd++){$eg=$V[$Rd+1];$pd=xxtea_mx($fg,$eg,$hf,$w[$Rd&3^$xb]);$fg=int32($V[$Rd]+$pd);$V[$Rd]=$fg;}$eg=$V[0];$pd=xxtea_mx($fg,$eg,$hf,$w[$Rd&3^$xb]);$fg=int32($V[$qd]+$pd);$V[$qd]=$fg;}return
long2str($V,false);}function
decrypt_string($cf,$w){if($cf==""){return"";}$w=array_values(unpack("V*",pack("H*",md5($w))));$V=str2long($cf,false);$qd=count($V)-1;$fg=$V[$qd];$eg=$V[0];$re=floor(6+52/($qd+1));$hf=int32($re*0x9E3779B9);while($hf){$xb=$hf>>2&3;for($Rd=$qd;$Rd>0;$Rd--){$fg=$V[$Rd-1];$pd=xxtea_mx($fg,$eg,$hf,$w[$Rd&3^$xb]);$eg=int32($V[$Rd]-$pd);$V[$Rd]=$eg;}$fg=$V[$qd];$pd=xxtea_mx($fg,$eg,$hf,$w[$Rd&3^$xb]);$eg=int32($V[0]-$pd);$V[0]=$eg;$hf=int32($hf-0x9E3779B9);}return
long2str($V,true);}$g='';$R=$_SESSION["token"];if(!$_SESSION["token"]){$_SESSION["token"]=rand(1,1e6);}$be=array();if($_COOKIE["adminer_permanent"]){foreach(explode(" ",$_COOKIE["adminer_permanent"])as$W){list($w)=explode(":",$W);$be[$w]=$W;}}if(isset($_POST["server"])){session_regenerate_id();$_SESSION["pwds"][$_POST["driver"]][$_POST["server"]][$_POST["username"]]=$_POST["password"];if($_POST["permanent"]){$w=base64_encode($_POST["driver"])."-".base64_encode($_POST["server"])."-".base64_encode($_POST["username"]);$le=$b->permanentLogin();$be[$w]="$w:".base64_encode($le?encrypt_string($_POST["password"],$le):"");cookie("adminer_permanent",implode(" ",$be));}if(count($_POST)==($_POST["permanent"]?5:4)||DRIVER!=$_POST["driver"]||SERVER!=$_POST["server"]||$_GET["username"]!==$_POST["username"]){redirect(auth_url($_POST["driver"],$_POST["server"],$_POST["username"]));}}elseif($_POST["logout"]){if($R&&$_POST["token"]!=$R){page_header('Logout','Invalid CSRF token. Send the form again.');page_footer("db");exit;}else{foreach(array("pwds","dbs","queries")as$w){set_session($w,null);}$w=base64_encode(DRIVER)."-".base64_encode(SERVER)."-".base64_encode($_GET["username"]);if($be[$w]){unset($be[$w]);cookie("adminer_permanent",implode(" ",$be));}redirect(substr(preg_replace('~(username|db|ns)=[^&]*&~','',ME),0,-1),'Logout successful.');}}elseif($be&&!$_SESSION["pwds"]){session_regenerate_id();$le=$b->permanentLogin();foreach($be
as$w=>$W){list(,$La)=explode(":",$W);list($rb,$K,$U)=array_map('base64_decode',explode("-",$w));$_SESSION["pwds"][$rb][$K][$U]=decrypt_string(base64_decode($La),$le);}}function
auth_error($Mb=null){global$g,$b,$R;$Ue=session_name();$k="";if(!$_COOKIE[$Ue]&&$_GET[$Ue]&&ini_bool("session.use_only_cookies")){$k='Session support must be enabled.';}elseif(isset($_GET["username"])){if(($_COOKIE[$Ue]||$_GET[$Ue])&&!$R){$k='Session expired, please login again.';}else{$D=&get_session("pwds");if(isset($D)){$k=h($Mb?$Mb->getMessage():(is_string($g)?$g:'Invalid credentials.'));$D=null;}}}page_header('Login',$k,null);echo"<form action='' method='post' onclick='eventStop(event);'>\n";$b->loginForm();echo"<div>";hidden_fields($_POST,array("driver","server","username","password","permanent"));echo"</div>\n","</form>\n";page_footer("auth");}if(isset($_GET["username"])){if(!class_exists("Min_DB")){unset($_SESSION["pwds"][DRIVER]);page_header('No extension',sprintf('None of the supported PHP extensions (%s) are available.',implode(", ",$ge)),false);page_footer("auth");exit;}$g=connect();}if(is_string($g)||!$b->login($_GET["username"],get_session("pwds"))){auth_error();exit;}$R=$_SESSION["token"];if(isset($_POST["server"])&&$_POST["token"]){$_POST["token"]=$R;}$k=($_POST?($_POST["token"]==$R?"":'Invalid CSRF token. Send the form again.'):($_SERVER["REQUEST_METHOD"]!="POST"?"":sprintf('Too big POST data. Reduce the data or increase the %s configuration directive.','"post_max_size"')));function
connect_error(){global$b,$g,$R,$k,$sb;$i=array();if(DB!=""){page_header('Database'.": ".h(DB),'Invalid database.',true);}else{if($_POST["db"]&&!$k){queries_redirect(substr(ME,0,-1),'Databases have been dropped.',drop_databases($_POST["db"]));}page_header('Select database',$k,false);echo"<p><a href='".h(ME)."database='>".'Create new database'."</a>\n";foreach(array('privileges'=>'Privileges','processlist'=>'Process list','variables'=>'Variables','status'=>'Status',)as$w=>$W){if(support($w)){echo"<a href='".h(ME)."$w='>$W</a>\n";}}echo"<p>".sprintf('%s version: %s through PHP extension %s',$sb[DRIVER],"<b>$g->server_info</b>","<b>$g->extension</b>")."\n","<p>".sprintf('Logged as: %s',"<b>".h(logged_user())."</b>")."\n";if($_GET["refresh"]){set_session("dbs",null);}$i=$b->databases();if($i){$Me=support("scheme");$Oa=collations();echo"<form action='' method='post'>\n","<table cellspacing='0' class='checkable' onclick='tableClick(event);'>\n","<thead><tr><td>&nbsp;<th>".'Database'."<td>".'Collation'."<td>".'Tables'."</thead>\n";foreach($i
as$j){$Ee=h(ME)."db=".urlencode($j);echo"<tr".odd()."><td>".checkbox("db[]",$j,in_array($j,(array)$_POST["db"])),"<th><a href='$Ee'>".h($j)."</a>","<td><a href='$Ee".($Me?"&amp;ns=":"")."&amp;database=' title='".'Alter database'."'>".nbsp(db_collation($j,$Oa))."</a>","<td align='right'><a href='$Ee&amp;schema=' id='tables-".h($j)."' title='".'Database schema'."'>?</a>","\n";}echo"</table>\n","<script type='text/javascript'>tableCheck();</script>\n","<p><input type='submit' name='drop' value='".'Drop'."'".confirm("formChecked(this, /db/)",1).">\n";echo"<input type='hidden' name='token' value='$R'>\n","<a href='".h(ME)."refresh=1' onclick='eventStop(event);'>".'Refresh'."</a>\n","</form>\n";}}page_footer("db");if($i){echo"<script type='text/javascript'>ajaxSetHtml('".js_escape(ME)."script=connect');</script>\n";}}if(isset($_GET["status"])){$_GET["variables"]=$_GET["status"];}if(!(DB!=""?$g->select_db(DB):isset($_GET["sql"])||isset($_GET["dump"])||isset($_GET["database"])||isset($_GET["processlist"])||isset($_GET["privileges"])||isset($_GET["user"])||isset($_GET["variables"])||$_GET["script"]=="connect")){if(DB!=""){set_session("dbs",null);}connect_error();exit;}if(support("scheme")&&DB!=""&&$_GET["ns"]!==""){if(!isset($_GET["ns"])){redirect(preg_replace('~ns=[^&]*&~','',ME)."ns=".get_schema());}if(!set_schema($_GET["ns"])){page_header('Schema'.": ".h($_GET["ns"]),'Invalid schema.',true);page_footer("ns");exit;}}function
select($F,$h=null,$uc=""){$Uc=array();$u=array();$f=array();$Da=array();$T=array();odd('');for($q=0;$H=$F->fetch_row();$q++){if(!$q){echo"<table cellspacing='0' class='nowrap'>\n","<thead><tr>";for($Hc=0;$Hc<count($H);$Hc++){$l=$F->fetch_field();$A=$l->name;$Kd=$l->orgtable;$Jd=$l->orgname;if($uc){$Uc[$Hc]=($A=="table"?"table=":($A=="possible_keys"?"indexes=":null));}elseif($Kd!=""){if(!isset($u[$Kd])){$u[$Kd]=array();foreach(indexes($Kd,$h)as$t){if($t["type"]=="PRIMARY"){$u[$Kd]=array_flip($t["columns"]);break;}}$f[$Kd]=$u[$Kd];}if(isset($f[$Kd][$Jd])){unset($f[$Kd][$Jd]);$u[$Kd][$Jd]=$Hc;$Uc[$Hc]=$Kd;}}if($l->charsetnr==63){$Da[$Hc]=true;}$T[$Hc]=$l->type;$A=h($A);echo"<th".($Kd!=""||$l->name!=$Jd?" title='".h(($Kd!=""?"$Kd.":"").$Jd)."'":"").">".($uc?"<a href='$uc".strtolower($A)."' target='_blank' rel='noreferrer'>$A</a>":$A);}echo"</thead>\n";}echo"<tr".odd().">";foreach($H
as$w=>$W){if(!isset($W)){$W="<i>NULL</i>";}elseif($Da[$w]&&!is_utf8($W)){$W="<i>".lang(array('%d byte','%d bytes'),strlen($W))."</i>";}elseif(!strlen($W)){$W="&nbsp;";}else{$W=h($W);if($T[$w]==254){$W="<code>$W</code>";}}if(isset($Uc[$w])&&!$f[$Uc[$w]]){if($uc){$z=$Uc[$w].urlencode($H[array_search("table=",$Uc)]);}else{$z="edit=".urlencode($Uc[$w]);foreach($u[$Uc[$w]]as$Ma=>$Hc){$z.="&where".urlencode("[".bracket_escape($Ma)."]")."=".urlencode($H[$Hc]);}}$W="<a href='".h(ME.$z)."'>$W</a>";}echo"<td>$W";}}echo($q?"</table>":"<p class='message'>".'No rows.')."\n";}function
referencable_primary($Pe){$G=array();foreach(table_status()as$lf=>$O){if($lf!=$Pe&&fk_support($O)){foreach(fields($lf)as$l){if($l["primary"]){if($G[$lf]){unset($G[$lf]);break;}$G[$lf]=$l;}}}}return$G;}function
textarea($A,$X,$I=10,$Pa=80){echo"<textarea name='$A' rows='$I' cols='$Pa' class='sqlarea' spellcheck='false' wrap='off' onkeydown='return textareaKeydown(this, event);'>";if(is_array($X)){foreach($X
as$W){echo
h($W)."\n\n\n";}}else{echo
h($X);}echo"</textarea>";}function
format_time($Ye,$Db){return" <span class='time'>(".sprintf('%.3f s',max(0,array_sum(explode(" ",$Db))-array_sum(explode(" ",$Ye)))).")</span>";}function
edit_type($w,$l,$Oa,$ec=array()){global$df,$T,$Rf,$Ad;echo'<td><select name="',$w,'[type]" class="type" onfocus="lastType = selectValue(this);" onchange="editingTypeChange(this);">',optionlist((!$l["type"]||isset($T[$l["type"]])?array():array($l["type"]))+$df+($ec?array('Foreign keys'=>$ec):array()),$l["type"]),'</select>
<td><input name="',$w,'[length]" value="',h($l["length"]),'" size="3" onfocus="editingLengthFocus(this);"><td class="options">',"<select name='$w"."[collation]'".(ereg('(char|text|enum|set)$',$l["type"])?"":" class='hidden'").'><option value="">('.'collation'.')'.optionlist($Oa,$l["collation"]).'</select>',($Rf?"<select name='$w"."[unsigned]'".(!$l["type"]||ereg('(int|float|double|decimal)$',$l["type"])?"":" class='hidden'").'><option>'.optionlist($Rf,$l["unsigned"]).'</select>':''),($ec?"<select name='$w"."[on_delete]'".(ereg("`",$l["type"])?"":" class='hidden'")."><option value=''>(".'ON DELETE'.")".optionlist(explode("|",$Ad),$l["on_delete"])."</select> ":" ");}function
process_length($x){global$Gb;return(preg_match("~^\\s*(?:$Gb)(?:\\s*,\\s*(?:$Gb))*\\s*\$~",$x)&&preg_match_all("~$Gb~",$x,$Zc)?implode(",",$Zc[0]):preg_replace('~[^0-9,+-]~','',$x));}function
process_type($l,$Na="COLLATE"){global$Rf;return" $l[type]".($l["length"]!=""?"(".process_length($l["length"]).")":"").(ereg('int|float|double|decimal',$l["type"])&&in_array($l["unsigned"],$Rf)?" $l[unsigned]":"").(ereg('char|text|enum|set',$l["type"])&&$l["collation"]?" $Na ".q($l["collation"]):"");}function
process_field($l,$Jf){return
array(idf_escape(trim($l["field"])),process_type($Jf),($l["null"]?" NULL":" NOT NULL"),(isset($l["default"])?" DEFAULT ".(($l["type"]=="timestamp"&&eregi('^CURRENT_TIMESTAMP$',$l["default"]))||($l["type"]=="bit"&&ereg("^([0-9]+|b'[0-1]+')\$",$l["default"]))?$l["default"]:q($l["default"])):""),($l["on_update"]?" ON UPDATE $l[on_update]":""),(support("comment")&&$l["comment"]!=""?" COMMENT ".q($l["comment"]):""),($l["auto_increment"]?auto_increment():null),);}function
type_class($S){foreach(array('char'=>'text','date'=>'time|year','binary'=>'blob','enum'=>'set',)as$w=>$W){if(ereg("$w|$W",$S)){return" class='$w'";}}}function
edit_fields($m,$Oa,$S="TABLE",$va=0,$ec=array(),$Ta=false){global$Bc;echo'<thead><tr class="wrap">
';if($S=="PROCEDURE"){echo'<td>&nbsp;';}echo'<th>',($S=="TABLE"?'Column name':'Parameter name'),'<td>Type<textarea id="enum-edit" rows="4" cols="12" wrap="off" style="display: none;" onblur="editingLengthBlur(this);"></textarea>
<td>Length
<td>Options
';if($S=="TABLE"){echo'<td>NULL
<td><input type="radio" name="auto_increment_col" value=""><acronym title="Auto Increment">AI</acronym>
<td',($_POST["defaults"]?"":" class='hidden'"),'>Default values
',(support("comment")?"<td".($Ta?"":" class='hidden'").">".'Comment':"");}echo'<td>',"<input type='image' name='add[".(support("move_col")?0:count($m))."]' src='".h(preg_replace("~\\?.*~","",ME))."?file=plus.gif&amp;version=3.3.4' alt='+' title='".'Add next'."'>",'<script type="text/javascript">row_count = ',count($m),';</script>
</thead>
<tbody onkeydown="return editingKeydown(event);">
';foreach($m
as$q=>$l){$q++;$Ld=$l[($_POST?"orig":"field")];$pb=(isset($_POST["add"][$q-1])||(isset($l["field"])&&!$_POST["drop_col"][$q]))&&(support("drop_col")||$Ld=="");echo'<tr',($pb?"":" style='display: none;'"),'>
',($S=="PROCEDURE"?"<td>".html_select("fields[$q][inout]",explode("|",$Bc),$l["inout"]):""),'<th>';if($pb){echo'<input name="fields[',$q,'][field]" value="',h($l["field"]),'" onchange="',($l["field"]!=""||count($m)>1?"":"editingAddRow(this, $va); "),'editingNameChange(this);" maxlength="64">';}echo'<input type="hidden" name="fields[',$q,'][orig]" value="',h($Ld),'">
';edit_type("fields[$q]",$l,$Oa,$ec);if($S=="TABLE"){echo'<td>',checkbox("fields[$q][null]",1,$l["null"]),'<td><input type="radio" name="auto_increment_col" value="',$q,'"';if($l["auto_increment"]){echo' checked';}?> onclick="var field = this.form['fields[' + this.value + '][field]']; if (!field.value) { field.value = 'id'; field.onchange(); }">
<td<?php echo($_POST["defaults"]?"":" class='hidden'"),'>',checkbox("fields[$q][has_default]",1,$l["has_default"]),'<input name="fields[',$q,'][default]" value="',h($l["default"]),'" onchange="this.previousSibling.checked = true;">
',(support("comment")?"<td".($Ta?"":" class='hidden'")."><input name='fields[$q][comment]' value='".h($l["comment"])."' maxlength='255'>":"");}echo"<td>",(support("move_col")?"<input type='image' name='add[$q]' src='".h(preg_replace("~\\?.*~","",ME))."?file=plus.gif&amp;version=3.3.4' alt='+' title='".'Add next'."' onclick='return !editingAddRow(this, $va, 1);'>&nbsp;"."<input type='image' name='up[$q]' src='".h(preg_replace("~\\?.*~","",ME))."?file=up.gif&amp;version=3.3.4' alt='^' title='".'Move up'."'>&nbsp;"."<input type='image' name='down[$q]' src='".h(preg_replace("~\\?.*~","",ME))."?file=down.gif&amp;version=3.3.4' alt='v' title='".'Move down'."'>&nbsp;":""),($Ld==""||support("drop_col")?"<input type='image' name='drop_col[$q]' src='".h(preg_replace("~\\?.*~","",ME))."?file=cross.gif&amp;version=3.3.4' alt='x' title='".'Remove'."' onclick='return !editingRemoveRow(this);'>":""),"\n";}}function
process_fields(&$m){ksort($m);$B=0;if($_POST["up"]){$Nc=0;foreach($m
as$w=>$l){if(key($_POST["up"])==$w){unset($m[$w]);array_splice($m,$Nc,0,array($l));break;}if(isset($l["field"])){$Nc=$B;}$B++;}}if($_POST["down"]){$gc=false;foreach($m
as$w=>$l){if(isset($l["field"])&&$gc){unset($m[key($_POST["down"])]);array_splice($m,$B,0,array($gc));break;}if(key($_POST["down"])==$w){$gc=$l;}$B++;}}$m=array_values($m);if($_POST["add"]){array_splice($m,key($_POST["add"]),0,array(array()));}}function
normalize_enum($_){return"'".str_replace("'","''",addcslashes(stripcslashes(str_replace($_[0][0].$_[0][0],$_[0][0],substr($_[0],1,-1))),'\\'))."'";}function
grant($p,$ne,$f,$_d){if(!$ne){return
true;}if($ne==array("ALL PRIVILEGES","GRANT OPTION")){return($p=="GRANT"?queries("$p ALL PRIVILEGES$_d WITH GRANT OPTION"):queries("$p ALL PRIVILEGES$_d")&&queries("$p GRANT OPTION$_d"));}return
queries("$p ".preg_replace('~(GRANT OPTION)\\([^)]*\\)~','\\1',implode("$f, ",$ne).$f).$_d);}function
drop_create($tb,$bb,$Vc,$jd,$hd,$id,$A){if($_POST["drop"]){return
query_redirect($tb,$Vc,$jd,true,!$_POST["dropped"]);}$ub=$A!=""&&($_POST["dropped"]||queries($tb));$db=queries($bb);if(!queries_redirect($Vc,($A!=""?$hd:$id),$db)&&$ub){redirect(null,$jd);}return$ub;}function
tar_file($Yb,$Xa){$G=pack("a100a8a8a8a12a12",$Yb,644,0,0,decoct(strlen($Xa)),decoct(time()));$Ka=8*32;for($q=0;$q<strlen($G);$q++){$Ka+=ord($G{$q});}$G.=sprintf("%06o",$Ka)."\0 ";return$G.str_repeat("\0",512-strlen($G)).$Xa.str_repeat("\0",511-(strlen($Xa)+511)%
512);}function
ini_bytes($Ac){$W=ini_get($Ac);switch(strtolower(substr($W,-1))){case'g':$W*=1024;case'm':$W*=1024;case'k':$W*=1024;}return$W;}session_cache_limiter("");if(!ini_bool("session.use_cookies")||@ini_set("session.use_cookies",false)!==false){session_write_close();}$Ad="RESTRICT|NO ACTION|CASCADE|SET NULL|SET DEFAULT";$Gb="'(?:''|[^'\\\\]|\\\\.)*+'";$Bc="IN|OUT|INOUT";if(isset($_GET["select"])&&($_POST["edit"]||$_POST["clone"])&&!$_POST["save"]){$_GET["edit"]=$_GET["select"];}if(isset($_GET["callf"])){$_GET["call"]=$_GET["callf"];}if(isset($_GET["function"])){$_GET["procedure"]=$_GET["function"];}if(isset($_GET["download"])){$a=$_GET["download"];header("Content-Type: application/octet-stream");header("Content-Disposition: attachment; filename=".friendly_url("$a-".implode("_",$_GET["where"])).".".friendly_url($_GET["field"]));echo$g->result("SELECT".limit(idf_escape($_GET["field"])." FROM ".table($a)," WHERE ".where($_GET),1));exit;}elseif(isset($_GET["table"])){$a=$_GET["table"];$m=fields($a);if(!$m){$k=error();}$P=($m?table_status($a):array());page_header(($m&&is_view($P)?'View':'Table').": ".h($a),$k);$b->selectLinks($P);$Sa=$P["Comment"];if($Sa!=""){echo"<p>".'Comment'.": ".h($Sa)."\n";}if($m){echo"<table cellspacing='0'>\n","<thead><tr><th>".'Column'."<td>".'Type'.(support("comment")?"<td>".'Comment':"")."</thead>\n";foreach($m
as$l){echo"<tr".odd()."><th>".h($l["field"]),"<td title='".h($l["collation"])."'>".h($l["full_type"]).($l["null"]?" <i>NULL</i>":"").($l["auto_increment"]?" <i>".'Auto Increment'."</i>":""),(isset($l["default"])?" [<b>".h($l["default"])."</b>]":""),(support("comment")?"<td>".nbsp($l["comment"]):""),"\n";}echo"</table>\n";if(!is_view($P)){echo"<h3>".'Indexes'."</h3>\n";$u=indexes($a);if($u){echo"<table cellspacing='0'>\n";foreach($u
as$A=>$t){ksort($t["columns"]);$ke=array();foreach($t["columns"]as$w=>$W){$ke[]="<i>".h($W)."</i>".($t["lengths"][$w]?"(".$t["lengths"][$w].")":"");}echo"<tr title='".h($A)."'><th>$t[type]<td>".implode(", ",$ke)."\n";}echo"</table>\n";}echo'<p><a href="'.h(ME).'indexes='.urlencode($a).'">'.'Alter indexes'."</a>\n";if(fk_support($P)){echo"<h3>".'Foreign keys'."</h3>\n";$ec=foreign_keys($a);if($ec){echo"<table cellspacing='0'>\n","<thead><tr><th>".'Source'."<td>".'Target'."<td>".'ON DELETE'."<td>".'ON UPDATE'.($v!="sqlite"?"<td>&nbsp;":"")."</thead>\n";foreach($ec
as$A=>$n){echo"<tr title='".h($A)."'>","<th><i>".implode("</i>, <i>",array_map('h',$n["source"]))."</i>","<td><a href='".h($n["db"]!=""?preg_replace('~db=[^&]*~',"db=".urlencode($n["db"]),ME):($n["ns"]!=""?preg_replace('~ns=[^&]*~',"ns=".urlencode($n["ns"]),ME):ME))."table=".urlencode($n["table"])."'>".($n["db"]!=""?"<b>".h($n["db"])."</b>.":"").($n["ns"]!=""?"<b>".h($n["ns"])."</b>.":"").h($n["table"])."</a>","(<i>".implode("</i>, <i>",array_map('h',$n["target"]))."</i>)","<td>".nbsp($n["on_delete"])."\n","<td>".nbsp($n["on_update"])."\n";if($v!="sqlite"){echo'<td><a href="'.h(ME.'foreign='.urlencode($a).'&name='.urlencode($A)).'">'.'Alter'.'</a>';}}echo"</table>\n";}if($v!="sqlite"){echo'<p><a href="'.h(ME).'foreign='.urlencode($a).'">'.'Add foreign key'."</a>\n";}}if(support("trigger")){echo"<h3>".'Triggers'."</h3>\n";$If=triggers($a);if($If){echo"<table cellspacing='0'>\n";foreach($If
as$w=>$W){echo"<tr valign='top'><td>$W[0]<td>$W[1]<th>".h($w)."<td><a href='".h(ME.'trigger='.urlencode($a).'&name='.urlencode($w))."'>".'Alter'."</a>\n";}echo"</table>\n";}echo'<p><a href="'.h(ME).'trigger='.urlencode($a).'">'.'Add trigger'."</a>\n";}}}}elseif(isset($_GET["schema"])){page_header('Database schema',"",array(),DB.($_GET["ns"]?".$_GET[ns]":""));$nf=array();$of=array();$A="adminer_schema";$ea=($_GET["schema"]?$_GET["schema"]:$_COOKIE[($_COOKIE["$A-".DB]?"$A-".DB:$A)]);preg_match_all('~([^:]+):([-0-9.]+)x([-0-9.]+)(_|$)~',$ea,$Zc,PREG_SET_ORDER);foreach($Zc
as$q=>$_){$nf[$_[1]]=array($_[2],$_[3]);$of[]="\n\t'".js_escape($_[1])."': [ $_[2], $_[3] ]";}$Bf=0;$Ca=-1;$Le=array();$ye=array();$Rc=array();foreach(table_status()as$P){if(!isset($P["Engine"])){continue;}$de=0;$Le[$P["Name"]]["fields"]=array();foreach(fields($P["Name"])as$A=>$l){$de+=1.25;$l["pos"]=$de;$Le[$P["Name"]]["fields"][$A]=$l;}$Le[$P["Name"]]["pos"]=($nf[$P["Name"]]?$nf[$P["Name"]]:array($Bf,0));foreach($b->foreignKeys($P["Name"])as$W){if(!$W["db"]){$Pc=$Ca;if($nf[$P["Name"]][1]||$nf[$W["table"]][1]){$Pc=min(floatval($nf[$P["Name"]][1]),floatval($nf[$W["table"]][1]))-1;}else{$Ca-=.1;}while($Rc[(string)$Pc]){$Pc-=.0001;}$Le[$P["Name"]]["references"][$W["table"]][(string)$Pc]=array($W["source"],$W["target"]);$ye[$W["table"]][$P["Name"]][(string)$Pc]=$W["target"];$Rc[(string)$Pc]=true;}}$Bf=max($Bf,$Le[$P["Name"]]["pos"][0]+2.5+$de);}echo'<div id="schema" style="height: ',$Bf,'em;" onselectstart="return false;">
<script type="text/javascript">
var tablePos = {',implode(",",$of)."\n",'};
var em = document.getElementById(\'schema\').offsetHeight / ',$Bf,';
document.onmousemove = schemaMousemove;
document.onmouseup = function (ev) {
	schemaMouseup(ev, \'',js_escape(DB),'\');
};
</script>
';foreach($Le
as$A=>$O){echo"<div class='table' style='top: ".$O["pos"][0]."em; left: ".$O["pos"][1]."em;' onmousedown='schemaMousedown(this, event);'>",'<a href="'.h(ME).'table='.urlencode($A).'"><b>'.h($A)."</b></a>";foreach($O["fields"]as$l){$W='<span'.type_class($l["type"]).' title="'.h($l["full_type"].($l["null"]?" NULL":'')).'">'.h($l["field"]).'</span>';echo"<br>".($l["primary"]?"<i>$W</i>":$W);}foreach((array)$O["references"]as$tf=>$ze){foreach($ze
as$Pc=>$ve){$Qc=$Pc-$nf[$A][1];$q=0;foreach($ve[0]as$Ve){echo"\n<div class='references' title='".h($tf)."' id='refs$Pc-".($q++)."' style='left: $Qc"."em; top: ".$O["fields"][$Ve]["pos"]."em; padding-top: .5em;'><div style='border-top: 1px solid Gray; width: ".(-$Qc)."em;'></div></div>";}}}foreach((array)$ye[$A]as$tf=>$ze){foreach($ze
as$Pc=>$f){$Qc=$Pc-$nf[$A][1];$q=0;foreach($f
as$sf){echo"\n<div class='references' title='".h($tf)."' id='refd$Pc-".($q++)."' style='left: $Qc"."em; top: ".$O["fields"][$sf]["pos"]."em; height: 1.25em; background: url(".h(preg_replace("~\\?.*~","",ME))."?file=arrow.gif) no-repeat right center;&amp;version=3.3.4'><div style='height: .5em; border-bottom: 1px solid Gray; width: ".(-$Qc)."em;'></div></div>";}}}echo"\n</div>\n";}foreach($Le
as$A=>$O){foreach((array)$O["references"]as$tf=>$ze){foreach($ze
as$Pc=>$ve){$md=$Bf;$dd=-10;foreach($ve[0]as$w=>$Ve){$ee=$O["pos"][0]+$O["fields"][$Ve]["pos"];$fe=$Le[$tf]["pos"][0]+$Le[$tf]["fields"][$ve[1][$w]]["pos"];$md=min($md,$ee,$fe);$dd=max($dd,$ee,$fe);}echo"<div class='references' id='refl$Pc' style='left: $Pc"."em; top: $md"."em; padding: .5em 0;'><div style='border-right: 1px solid Gray; margin-top: 1px; height: ".($dd-$md)."em;'></div></div>\n";}}}echo'</div>
<p><a href="',h(ME."schema=".urlencode($ea)),'" id="schema-link">Permanent link</a>
';}elseif(isset($_GET["dump"])){$a=$_GET["dump"];if($_POST){$Za="";foreach(array("output","format","db_style","routines","events","table_style","auto_increment","triggers","data_style")as$w){$Za.="&$w=".urlencode($_POST[$w]);}cookie("adminer_export",substr($Za,1));$Sb=dump_headers(($a!=""?$a:DB),(DB==""||count((array)$_POST["tables"]+(array)$_POST["data"])>1));$Fc=($_POST["format"]=="sql");if($Fc){echo"-- Adminer $ia ".$sb[DRIVER]." dump

".($v!="sql"?"":"SET NAMES utf8;
SET foreign_key_checks = 0;
SET time_zone = ".q($g->result("SELECT @@time_zone")).";
SET sql_mode = 'NO_AUTO_VALUE_ON_ZERO';

");}$N=$_POST["db_style"];$i=array(DB);if(DB==""){$i=$_POST["databases"];if(is_string($i)){$i=explode("\n",rtrim(str_replace("\r","",$i),"\n"));}}foreach((array)$i
as$j){if($g->select_db($j)){if($Fc&&ereg('CREATE',$N)&&($bb=$g->result("SHOW CREATE DATABASE ".idf_escape($j),1))){if($N=="DROP+CREATE"){echo"DROP DATABASE IF EXISTS ".idf_escape($j).";\n";}echo($N=="CREATE+ALTER"?preg_replace('~^CREATE DATABASE ~','\\0IF NOT EXISTS ',$bb):$bb).";\n";}if($Fc){if($N){echo
use_sql($j).";\n\n";}if(in_array("CREATE+ALTER",array($N,$_POST["table_style"]))){echo"SET @adminer_alter = '';\n\n";}$Pd="";if($_POST["routines"]){foreach(array("FUNCTION","PROCEDURE")as$Fe){foreach(get_rows("SHOW $Fe STATUS WHERE Db = ".q($j),null,"-- ")as$H){$Pd.=($N!='DROP+CREATE'?"DROP $Fe IF EXISTS ".idf_escape($H["Name"]).";;\n":"").$g->result("SHOW CREATE $Fe ".idf_escape($H["Name"]),2).";;\n\n";}}}if($_POST["events"]){foreach(get_rows("SHOW EVENTS",null,"-- ")as$H){$Pd.=($N!='DROP+CREATE'?"DROP EVENT IF EXISTS ".idf_escape($H["Name"]).";;\n":"").$g->result("SHOW CREATE EVENT ".idf_escape($H["Name"]),3).";;\n\n";}}if($Pd){echo"DELIMITER ;;\n\n$Pd"."DELIMITER ;\n\n";}}if($_POST["table_style"]||$_POST["data_style"]){$Y=array();foreach(table_status()as$P){$O=(DB==""||in_array($P["Name"],(array)$_POST["tables"]));$gb=(DB==""||in_array($P["Name"],(array)$_POST["data"]));if($O||$gb){if(!is_view($P)){if($Sb=="tar"){ob_start();}$b->dumpTable($P["Name"],($O?$_POST["table_style"]:""));if($gb){$b->dumpData($P["Name"],$_POST["data_style"],"SELECT * FROM ".table($P["Name"]));}if($Fc&&$_POST["triggers"]&&$O&&($If=trigger_sql($P["Name"],$_POST["table_style"]))){echo"\nDELIMITER ;;\n$If\nDELIMITER ;\n";}if($Sb=="tar"){echo
tar_file((DB!=""?"":"$j/")."$P[Name].csv",ob_get_clean());}elseif($Fc){echo"\n";}}elseif($Fc){$Y[]=$P["Name"];}}}foreach($Y
as$Zf){$b->dumpTable($Zf,$_POST["table_style"],true);}if($Sb=="tar"){echo
pack("x512");}}if($N=="CREATE+ALTER"&&$Fc){$E="SELECT TABLE_NAME, ENGINE, TABLE_COLLATION, TABLE_COMMENT FROM information_schema.TABLES WHERE TABLE_SCHEMA = DATABASE()";echo"DELIMITER ;;
CREATE PROCEDURE adminer_alter (INOUT alter_command text) BEGIN
	DECLARE _table_name, _engine, _table_collation varchar(64);
	DECLARE _table_comment varchar(64);
	DECLARE done bool DEFAULT 0;
	DECLARE tables CURSOR FOR $E;
	DECLARE CONTINUE HANDLER FOR NOT FOUND SET done = 1;
	OPEN tables;
	REPEAT
		FETCH tables INTO _table_name, _engine, _table_collation, _table_comment;
		IF NOT done THEN
			CASE _table_name";foreach(get_rows($E)as$H){$Sa=q($H["ENGINE"]=="InnoDB"?preg_replace('~(?:(.+); )?InnoDB free: .*~','\\1',$H["TABLE_COMMENT"]):$H["TABLE_COMMENT"]);echo"
				WHEN ".q($H["TABLE_NAME"])." THEN
					".(isset($H["ENGINE"])?"IF _engine != '$H[ENGINE]' OR _table_collation != '$H[TABLE_COLLATION]' OR _table_comment != $Sa THEN
						ALTER TABLE ".idf_escape($H["TABLE_NAME"])." ENGINE=$H[ENGINE] COLLATE=$H[TABLE_COLLATION] COMMENT=$Sa;
					END IF":"BEGIN END").";";}echo"
				ELSE
					SET alter_command = CONCAT(alter_command, 'DROP TABLE `', REPLACE(_table_name, '`', '``'), '`;\\n');
			END CASE;
		END IF;
	UNTIL done END REPEAT;
	CLOSE tables;
END;;
DELIMITER ;
CALL adminer_alter(@adminer_alter);
DROP PROCEDURE adminer_alter;
";}if(in_array("CREATE+ALTER",array($N,$_POST["table_style"]))&&$Fc){echo"SELECT @adminer_alter;\n";}}}if($Fc){echo"-- ".$g->result("SELECT NOW()")."\n";}exit;}page_header('Export',"",($_GET["export"]!=""?array("table"=>$_GET["export"]):array()),DB);echo'
<form action="" method="post">
<table cellspacing="0">
';$jb=array('','USE','DROP+CREATE','CREATE');$pf=array('','DROP+CREATE','CREATE');$hb=array('','TRUNCATE+INSERT','INSERT');if($v=="sql"){$jb[]='CREATE+ALTER';$pf[]='CREATE+ALTER';$hb[]='INSERT+UPDATE';}parse_str($_COOKIE["adminer_export"],$H);if(!$H){$H=array("output"=>"text","format"=>"sql","db_style"=>(DB!=""?"":"CREATE"),"table_style"=>"DROP+CREATE","data_style"=>"INSERT");}if(!isset($H["events"])){$H["routines"]=$H["events"]=($_GET["dump"]=="");$H["triggers"]=$H["table_style"];}echo"<tr><th>".'Output'."<td>".html_select("output",$b->dumpOutput(),$H["output"],0)."\n";echo"<tr><th>".'Format'."<td>".html_select("format",$b->dumpFormat(),$H["format"],0)."\n";echo($v=="sqlite"?"":"<tr><th>".'Database'."<td>".html_select('db_style',$jb,$H["db_style"]).(support("routine")?checkbox("routines",1,$H["routines"],'Routines'):"").(support("event")?checkbox("events",1,$H["events"],'Events'):"")),"<tr><th>".'Tables'."<td>".html_select('table_style',$pf,$H["table_style"]).checkbox("auto_increment",1,$H["auto_increment"],'Auto Increment').(support("trigger")?checkbox("triggers",1,$H["triggers"],'Triggers'):""),"<tr><th>".'Data'."<td>".html_select('data_style',$hb,$H["data_style"]),'</table>
<p><input type="submit" value="Export">

<table cellspacing="0">
';$ie=array();if(DB!=""){$Ja=($a!=""?"":" checked");echo"<thead><tr>","<th style='text-align: left;'><label><input type='checkbox' id='check-tables'$Ja onclick='formCheck(this, /^tables\\[/);'>".'Tables'."</label>","<th style='text-align: right;'><label>".'Data'."<input type='checkbox' id='check-data'$Ja onclick='formCheck(this, /^data\\[/);'></label>","</thead>\n";$Y="";foreach(table_status()as$P){$A=$P["Name"];$he=ereg_replace("_.*","",$A);$Ja=($a==""||$a==(substr($a,-1)=="%"?"$he%":$A));$ke="<tr><td>".checkbox("tables[]",$A,$Ja,$A,"formUncheck('check-tables');");if(is_view($P)){$Y.="$ke\n";}else{echo"$ke<td align='right'><label>".($P["Engine"]=="InnoDB"&&$P["Rows"]?"~ ":"").$P["Rows"].checkbox("data[]",$A,$Ja,"","formUncheck('check-data');")."</label>\n";}$ie[$he]++;}echo$Y;}else{echo"<thead><tr><th style='text-align: left;'><label><input type='checkbox' id='check-databases'".($a==""?" checked":"")." onclick='formCheck(this, /^databases\\[/);'>".'Database'."</label></thead>\n";$i=$b->databases();if($i){foreach($i
as$j){if(!information_schema($j)){$he=ereg_replace("_.*","",$j);echo"<tr><td>".checkbox("databases[]",$j,$a==""||$a=="$he%",$j,"formUncheck('check-databases');")."</label>\n";$ie[$he]++;}}}else{echo"<tr><td><textarea name='databases' rows='10' cols='20'></textarea>";}}echo'</table>
</form>
';$ac=true;foreach($ie
as$w=>$W){if($w!=""&&$W>1){echo($ac?"<p>":" ")."<a href='".h(ME)."dump=".urlencode("$w%")."'>".h($w)."</a>";$ac=false;}}}elseif(isset($_GET["privileges"])){page_header('Privileges');$F=$g->query("SELECT User, Host FROM mysql.".(DB==""?"user":"db WHERE ".q(DB)." LIKE Db")." ORDER BY Host, User");$p=$F;if(!$F){$F=$g->query("SELECT SUBSTRING_INDEX(CURRENT_USER, '@', 1) AS User, SUBSTRING_INDEX(CURRENT_USER, '@', -1) AS Host");}echo"<form action=''><p>\n";hidden_fields_get();echo"<input type='hidden' name='db' value='".h(DB)."'>\n",($p?"":"<input type='hidden' name='grant' value=''>\n"),"<table cellspacing='0'>\n","<thead><tr><th>".'Username'."<th>".'Server'."<th>&nbsp;</thead>\n";while($H=$F->fetch_assoc()){echo'<tr'.odd().'><td>'.h($H["User"])."<td>".h($H["Host"]).'<td><a href="'.h(ME.'user='.urlencode($H["User"]).'&host='.urlencode($H["Host"])).'">'.'Edit'."</a>\n";}if(!$p||DB!=""){echo"<tr".odd()."><td><input name='user'><td><input name='host' value='localhost'><td><input type='submit' value='".'Edit'."'>\n";}echo"</table>\n","</form>\n",'<p><a href="'.h(ME).'user=">'.'Create user'."</a>";}elseif(isset($_GET["sql"])){if(!$k&&$_POST["export"]){dump_headers("sql");$b->dumpTable("","");$b->dumpData("","table",$_POST["query"]);exit;}restart_session();$sc=&get_session("queries");$rc=&$sc[DB];if(!$k&&$_POST["clear"]){$rc=array();redirect(remove_from_uri("history"));}page_header('SQL command',$k);if(!$k&&$_POST){$ic=false;$E=$_POST["query"];if($_POST["webfile"]){$ic=@fopen((file_exists("adminer.sql")?"adminer.sql":(file_exists("adminer.sql.gz")?"compress.zlib://adminer.sql.gz":"compress.bzip2://adminer.sql.bz2")),"rb");$E=($ic?fread($ic,1e6):false);}elseif($_FILES&&$_FILES["sql_file"]["error"]!=UPLOAD_ERR_NO_FILE){$E=get_file("sql_file",true);}if(is_string($E)){if(function_exists('memory_get_usage')){@ini_set("memory_limit",max(ini_bytes("memory_limit"),2*strlen($E)+memory_get_usage()+8e6));}if($E!=""&&strlen($E)<1e6){$re=$E.(ereg(";[ \t\r\n]*\$",$E)?"":";");if(!$rc||end($rc)!=$re){$rc[]=$re;}}$We="(?:\\s|/\\*.*\\*/|(?:#|-- )[^\n]*\n|--\n)";if(!ini_bool("session.use_cookies")){session_write_close();}$mb=";";$B=0;$Cb=true;$h=connect();if(is_object($h)&&DB!=""){$h->select_db(DB);}$Ra=0;$Jb=array();$Ud='[\'"'.($v=="sql"?'`#':($v=="sqlite"?'`[':($v=="mssql"?'[':''))).']|/\\*|-- |$'.($v=="pgsql"?'|\\$[^$]*\\$':'');$Cf=microtime();parse_str($_COOKIE["adminer_export"],$pa);$wb=$b->dumpFormat();unset($wb["sql"]);while($E!=""){if(!$B&&preg_match("~^$We*DELIMITER\\s+(.+)~i",$E,$_)){$mb=$_[1];$E=substr($E,strlen($_[0]));}else{preg_match('('.preg_quote($mb)."|$Ud)",$E,$_,PREG_OFFSET_CAPTURE,$B);$gc=$_[0][0];if(!$gc&&$ic&&!feof($ic)){$E.=fread($ic,1e5);}else{$B=$_[0][1]+strlen($gc);if(!$gc&&rtrim($E)==""){break;}if($gc&&$gc!=$mb){while(preg_match('('.($gc=='/*'?'\\*/':($gc=='['?']':(ereg('^-- |^#',$gc)?"\n":preg_quote($gc)."|\\\\."))).'|$)s',$E,$_,PREG_OFFSET_CAPTURE,$B)){$Je=$_[0][0];if(!$Je&&$ic&&!feof($ic)){$E.=fread($ic,1e5);}else{$B=$_[0][1]+strlen($Je);if($Je[0]!="\\"){break;}}}}else{$Cb=false;$re=substr($E,0,$_[0][1]);$Ra++;$ke="<pre id='sql-$Ra'><code class='jush-$v'>".shorten_utf8(trim($re),1000)."</code></pre>\n";if(!$_POST["only_errors"]){echo$ke;ob_flush();flush();}$Ye=microtime();if($g->multi_query($re)&&is_object($h)&&preg_match("~^$We*USE\\b~isU",$re)){$h->query($re);}do{$F=$g->store_result();$Db=microtime();$wf=format_time($Ye,$Db).(strlen($re)<1000?" <a href='".h(ME)."sql=".urlencode(trim($re))."'>".'Edit'."</a>":"");if($g->error){echo($_POST["only_errors"]?$ke:""),"<p class='error'>".'Error in query'.": ".error()."\n";$Jb[]=" <a href='#sql-$Ra'>$Ra</a>";if($_POST["error_stops"]){break
2;}}elseif(is_object($F)){select($F,$h);if(!$_POST["only_errors"]){echo"<form action='' method='post'>\n","<p>".($F->num_rows?lang(array('%d row','%d rows'),$F->num_rows):"").$wf;$r="export-$Ra";$Rb=", <a href='#$r' onclick=\"return !toggle('$r');\">".'Export'."</a><span id='$r' class='hidden'>: ".html_select("output",$b->dumpOutput(),$pa["output"])." ".html_select("format",$wb,$pa["format"])."<input type='hidden' name='query' value='".h($re)."'>"." <input type='submit' name='export' value='".'Export'."' onclick='eventStop(event);'><input type='hidden' name='token' value='$R'></span>\n";if($h&&preg_match("~^($We|\\()*SELECT\\b~isU",$re)&&($Qb=explain($h,$re))){$r="explain-$Ra";echo", <a href='#$r' onclick=\"return !toggle('$r');\">EXPLAIN</a>$Rb","<div id='$r' class='hidden'>\n";select($Qb,$h,($v=="sql"?"http://dev.mysql.com/doc/refman/".substr($g->server_info,0,3)."/en/explain-output.html#explain_":""));echo"</div>\n";}else{echo$Rb;}echo"</form>\n";}}else{if(preg_match("~^$We*(CREATE|DROP|ALTER)$We+(DATABASE|SCHEMA)\\b~isU",$re)){restart_session();set_session("dbs",null);session_write_close();}if(!$_POST["only_errors"]){echo"<p class='message' title='".h($g->info)."'>".lang(array('Query executed OK, %d row affected.','Query executed OK, %d rows affected.'),$g->affected_rows)."$wf\n";}}$Ye=$Db;}while($g->next_result());$E=substr($E,$B);$B=0;}}}}if($Cb){echo"<p class='message'>".'No commands to execute.'."\n";}elseif($_POST["only_errors"]){echo"<p class='message'>".lang(array('%d query executed OK.','%d queries executed OK.'),$Ra-count($Jb)).format_time($Cf,microtime())."\n";}elseif($Jb&&$Ra>1){echo"<p class='error'>".'Error in query'.": ".implode("",$Jb)."\n";}}else{echo"<p class='error'>".upload_error($E)."\n";}}echo'
<form action="" method="post" enctype="multipart/form-data" id="form">
<p>';$re=$_GET["sql"];if($_POST){$re=$_POST["query"];}elseif($_GET["history"]=="all"){$re=$rc;}elseif($_GET["history"]!=""){$re=$rc[$_GET["history"]];}textarea("query",$re,20);echo($_POST?"":"<script type='text/javascript'>document.getElementsByTagName('textarea')[0].focus();</script>\n"),"<p>".(ini_bool("file_uploads")?'File upload'.': <input type="file" name="sql_file"'.($_FILES&&$_FILES["sql_file"]["error"]!=4?'':' onchange="this.form[\'only_errors\'].checked = true;"').'> (&lt; '.ini_get("upload_max_filesize").'B)':'File uploads are disabled.'),'<p>
<input type="submit" value="Execute" title="Ctrl+Enter">
<input type="hidden" name="token" value="',$R,'">
',checkbox("error_stops",1,$_POST["error_stops"],'Stop on error')."\n",checkbox("only_errors",1,$_POST["only_errors"],'Show only errors')."\n";print_fieldset("webfile",'From server',$_POST["webfile"],"document.getElementById('form')['only_errors'].checked = true; ");$Ua=array();foreach(array("gz"=>"zlib","bz2"=>"bz2")as$w=>$W){if(extension_loaded($W)){$Ua[]=".$w";}}echo
sprintf('Webserver file %s',"<code>adminer.sql".($Ua?"[".implode("|",$Ua)."]":"")."</code>"),' <input type="submit" name="webfile" value="'.'Run file'.'">',"</div></fieldset>\n";if($rc){print_fieldset("history",'History',$_GET["history"]!="");foreach($rc
as$w=>$W){echo'<a href="'.h(ME."sql=&history=$w").'">'.'Edit'."</a> <code class='jush-$v'>".shorten_utf8(ltrim(str_replace("\n"," ",str_replace("\r","",preg_replace('~^(#|-- ).*~m','',$W)))),80,"</code>")."<br>\n";}echo"<input type='submit' name='clear' value='".'Clear'."'>\n","<a href='".h(ME."sql=&history=all")."'>".'Edit all'."</a>\n","</div></fieldset>\n";}echo'
</form>
';}elseif(isset($_GET["edit"])){$a=$_GET["edit"];$Z=(isset($_GET["select"])?(count($_POST["check"])==1?where_check($_POST["check"][0]):""):where($_GET));$Sf=(isset($_GET["select"])?$_POST["edit"]:$Z);$m=fields($a);foreach($m
as$A=>$l){if(!isset($l["privileges"][$Sf?"update":"insert"])||$b->fieldName($l)==""){unset($m[$A]);}}if($_POST&&!$k&&!isset($_GET["select"])){$Vc=$_POST["referer"];if($_POST["insert"]){$Vc=($Sf?null:$_SERVER["REQUEST_URI"]);}elseif(!ereg('^.+&select=.+$',$Vc)){$Vc=ME."select=".urlencode($a);}if(isset($_POST["delete"])){query_redirect("DELETE".limit1("FROM ".table($a)," WHERE $Z"),$Vc,'Item has been deleted.');}else{$L=array();foreach($m
as$A=>$l){$W=process_input($l);if($W!==false&&$W!==null){$L[idf_escape($A)]=($Sf?"\n".idf_escape($A)." = $W":$W);}}if($Sf){if(!$L){redirect($Vc);}query_redirect("UPDATE".limit1(table($a)." SET".implode(",",$L),"\nWHERE $Z"),$Vc,'Item has been updated.');}else{$F=insert_into($a,$L);$Oc=($F?last_id():0);queries_redirect($Vc,sprintf('Item%s has been inserted.',($Oc?" $Oc":"")),$F);}}}$lf=$b->tableName(table_status($a));page_header(($Sf?'Edit':'Insert'),$k,array("select"=>array($a,$lf)),$lf);$H=null;if($_POST["save"]){$H=(array)$_POST["fields"];}elseif($Z){$J=array();foreach($m
as$A=>$l){if(isset($l["privileges"]["select"])){$J[]=($_POST["clone"]&&$l["auto_increment"]?"'' AS ":(ereg("enum|set",$l["type"])?"1*".idf_escape($A)." AS ":"")).idf_escape($A);}}$H=array();if($J){$I=get_rows("SELECT".limit(implode(", ",$J)." FROM ".table($a)," WHERE $Z",(isset($_GET["select"])?2:1)));$H=(isset($_GET["select"])&&count($I)!=1?null:reset($I));}}if($H===false){echo"<p class='error'>".'No rows.'."\n";}echo'
<form action="" method="post" enctype="multipart/form-data" id="form">
';if($m){echo"<table cellspacing='0' onkeydown='return editingKeydown(event);'>\n";foreach($m
as$A=>$l){echo"<tr><th>".$b->fieldName($l);$lb=$_GET["set"][bracket_escape($A)];$X=(isset($H)?($H[$A]!=""&&ereg("enum|set",$l["type"])?(is_array($H[$A])?array_sum($H[$A]):+$H[$A]):$H[$A]):(!$Sf&&$l["auto_increment"]?"":(isset($_GET["select"])?false:(isset($lb)?$lb:$l["default"]))));if(!$_POST["save"]&&is_string($X)){$X=$b->editVal($X,$l);}$o=($_POST["save"]?(string)$_POST["function"][$A]:($Sf&&$l["on_update"]=="CURRENT_TIMESTAMP"?"now":($X===false?null:(isset($X)?'':'NULL'))));if($l["type"]=="timestamp"&&$X=="CURRENT_TIMESTAMP"){$X="";$o="now";}input($l,$X,$o);echo"\n";}echo"</table>\n";}echo'<p>
';if($m){echo"<input type='submit' value='".'Save'."'>\n";if(!isset($_GET["select"])){echo"<input type='submit' name='insert' value='".($Sf?'Save and continue edit':'Save and insert next')."' title='Ctrl+Shift+Enter'>\n";}}echo($Sf?"<input type='submit' name='delete' value='".'Delete'."' onclick=\"return confirm('".'Are you sure?'."');\">\n":($_POST||!$m?"":"<script type='text/javascript'>document.getElementById('form').getElementsByTagName('td')[1].firstChild.focus();</script>\n"));if(isset($_GET["select"])){hidden_fields(array("check"=>(array)$_POST["check"],"clone"=>$_POST["clone"],"all"=>$_POST["all"]));}echo'<input type="hidden" name="referer" value="',h(isset($_POST["referer"])?$_POST["referer"]:$_SERVER["HTTP_REFERER"]),'">
<input type="hidden" name="save" value="1">
<input type="hidden" name="token" value="',$R,'">
</form>
';}elseif(isset($_GET["create"])){$a=$_GET["create"];$Vd=array('HASH','LINEAR HASH','KEY','LINEAR KEY','RANGE','LIST');$xe=referencable_primary($a);$ec=array();foreach($xe
as$lf=>$l){$ec[str_replace("`","``",$lf)."`".str_replace("`","``",$l["field"])]=$lf;}$Nd=array();$Od=array();if($a!=""){$Nd=fields($a);$Od=table_status($a);}if($_POST&&!$_POST["fields"]){$_POST["fields"]=array();}if($_POST&&!$k&&!$_POST["add"]&&!$_POST["drop_col"]&&!$_POST["up"]&&!$_POST["down"]){if($_POST["drop"]){query_redirect("DROP TABLE ".table($a),substr(ME,0,-1),'Table has been dropped.');}else{$m=array();$cc=array();ksort($_POST["fields"]);$Md=reset($Nd);$ta="FIRST";foreach($_POST["fields"]as$w=>$l){$n=$ec[$l["type"]];$Jf=(isset($n)?$xe[$n]:$l);if($l["field"]!=""){if(!$l["has_default"]){$l["default"]=null;}$lb=eregi_replace(" *on update CURRENT_TIMESTAMP","",$l["default"]);if($lb!=$l["default"]){$l["on_update"]="CURRENT_TIMESTAMP";$l["default"]=$lb;}if($w==$_POST["auto_increment_col"]){$l["auto_increment"]=true;}$pe=process_field($l,$Jf);if($pe!=process_field($Md,$Md)){$m[]=array($l["orig"],$pe,$ta);}if(isset($n)){$cc[idf_escape($l["field"])]=($a!=""?"ADD":" ")." FOREIGN KEY (".idf_escape($l["field"]).") REFERENCES ".table($ec[$l["type"]])." (".idf_escape($Jf["field"]).")".(ereg("^($Ad)\$",$l["on_delete"])?" ON DELETE $l[on_delete]":"");}$ta="AFTER ".idf_escape($l["field"]);}elseif($l["orig"]!=""){$m[]=array($l["orig"]);}if($l["orig"]!=""){$Md=next($Nd);}}$Xd="";if(in_array($_POST["partition_by"],$Vd)){$Yd=array();if($_POST["partition_by"]=='RANGE'||$_POST["partition_by"]=='LIST'){foreach(array_filter($_POST["partition_names"])as$w=>$W){$X=$_POST["partition_values"][$w];$Yd[]="\nPARTITION ".idf_escape($W)." VALUES ".($_POST["partition_by"]=='RANGE'?"LESS THAN":"IN").($X!=""?" ($X)":" MAXVALUE");}}$Xd.="\nPARTITION BY $_POST[partition_by]($_POST[partition])".($Yd?" (".implode(",",$Yd)."\n)":($_POST["partitions"]?" PARTITIONS ".(+$_POST["partitions"]):""));}elseif($a!=""&&support("partitioning")){$Xd.="\nREMOVE PARTITIONING";}$gd='Table has been altered.';if($a==""){cookie("adminer_engine",$_POST["Engine"]);$gd='Table has been created.';}$A=trim($_POST["name"]);queries_redirect(ME."table=".urlencode($A),$gd,alter_table($a,$A,$m,$cc,$_POST["Comment"],($_POST["Engine"]&&$_POST["Engine"]!=$Od["Engine"]?$_POST["Engine"]:""),($_POST["Collation"]&&$_POST["Collation"]!=$Od["Collation"]?$_POST["Collation"]:""),($_POST["Auto_increment"]!=""?+$_POST["Auto_increment"]:""),$Xd));}}page_header(($a!=""?'Alter table':'Create table'),$k,array("table"=>$a),$a);$H=array("Engine"=>$_COOKIE["adminer_engine"],"fields"=>array(array("field"=>"","type"=>(isset($T["int"])?"int":(isset($T["integer"])?"integer":"")))),"partition_names"=>array(""),);if($_POST){$H=$_POST;if($H["auto_increment_col"]){$H["fields"][$H["auto_increment_col"]]["auto_increment"]=true;}process_fields($H["fields"]);}elseif($a!=""){$H=$Od;$H["name"]=$a;$H["fields"]=array();if(!$_GET["auto_increment"]){$H["Auto_increment"]="";}foreach($Nd
as$l){$l["has_default"]=isset($l["default"]);if($l["on_update"]){$l["default"].=" ON UPDATE $l[on_update]";}$H["fields"][]=$l;}if(support("partitioning")){$jc="FROM information_schema.PARTITIONS WHERE TABLE_SCHEMA = ".q(DB)." AND TABLE_NAME = ".q($a);$F=$g->query("SELECT PARTITION_METHOD, PARTITION_ORDINAL_POSITION, PARTITION_EXPRESSION $jc ORDER BY PARTITION_ORDINAL_POSITION DESC LIMIT 1");list($H["partition_by"],$H["partitions"],$H["partition"])=$F->fetch_row();$H["partition_names"]=array();$H["partition_values"]=array();foreach(get_rows("SELECT PARTITION_NAME, PARTITION_DESCRIPTION $jc AND PARTITION_NAME != '' ORDER BY PARTITION_ORDINAL_POSITION")as$Ie){$H["partition_names"][]=$Ie["PARTITION_NAME"];$H["partition_values"][]=$Ie["PARTITION_DESCRIPTION"];}$H["partition_names"][]="";}}$Oa=collations();$gf=floor(extension_loaded("suhosin")?(min(ini_get("suhosin.request.max_vars"),ini_get("suhosin.post.max_vars"))-13)/10:0);if($gf&&count($H["fields"])>$gf){echo"<p class='error'>".h(sprintf('Maximum number of allowed fields exceeded. Please increase %s and %s.','suhosin.post.max_vars','suhosin.request.max_vars'))."\n";}$Fb=engines();foreach($Fb
as$Eb){if(!strcasecmp($Eb,$H["Engine"])){$H["Engine"]=$Eb;break;}}echo'
<form action="" method="post" id="form">
<p>
Table name: <input name="name" maxlength="64" value="',h($H["name"]),'">
';if($a==""&&!$_POST){?><script type='text/javascript'>document.getElementById('form')['name'].focus();</script><?php }echo($Fb?html_select("Engine",array(""=>"(".'engine'.")")+$Fb,$H["Engine"]):""),' ',($Oa&&!ereg("sqlite|mssql",$v)?html_select("Collation",array(""=>"(".'collation'.")")+$Oa,$H["Collation"]):""),' <input type="submit" value="Save">
<table cellspacing="0" id="edit-fields" class="nowrap">
';$Ta=($_POST?$_POST["comments"]:$H["Comment"]!="");if(!$_POST&&!$Ta){foreach($H["fields"]as$l){if($l["comment"]!=""){$Ta=true;break;}}}edit_fields($H["fields"],$Oa,"TABLE",$gf,$ec,$Ta);echo'</table>
<p>
Auto Increment: <input name="Auto_increment" size="6" value="',h($H["Auto_increment"]),'">
<label class="jsonly"><input type="checkbox" name="defaults" value="1"',($_POST["defaults"]?" checked":""),' onclick="columnShow(this.checked, 5);">Default values</label>
',(support("comment")?checkbox("comments",1,$Ta,'Comment',"columnShow(this.checked, 6); toggle('Comment'); if (this.checked) this.form['Comment'].focus();",true).' <input id="Comment" name="Comment" value="'.h($H["Comment"]).'" maxlength="60"'.($Ta?'':' class="hidden"').'>':''),'<p>
<input type="submit" value="Save">
';if($_GET["create"]!=""){echo'<input type="submit" name="drop" value="Drop"',confirm(),'>';}echo'<input type="hidden" name="token" value="',$R,'">
';if(support("partitioning")){$Wd=ereg('RANGE|LIST',$H["partition_by"]);print_fieldset("partition",'Partition by',$H["partition_by"]);echo'<p>
',html_select("partition_by",array(-1=>"")+$Vd,$H["partition_by"],"partitionByChange(this);"),'(<input name="partition" value="',h($H["partition"]),'">)
Partitions: <input name="partitions" size="2" value="',h($H["partitions"]),'"',($Wd||!$H["partition_by"]?" class='hidden'":""),'>
<table cellspacing="0" id="partition-table"',($Wd?"":" class='hidden'"),'>
<thead><tr><th>Partition name<th>Values</thead>
';foreach($H["partition_names"]as$w=>$W){echo'<tr>','<td><input name="partition_names[]" value="'.h($W).'"'.($w==count($H["partition_names"])-1?' onchange="partitionNameChange(this);"':'').'>','<td><input name="partition_values[]" value="'.h($H["partition_values"][$w]).'">';}echo'</table>
</div></fieldset>
';}echo'</form>
';}elseif(isset($_GET["indexes"])){$a=$_GET["indexes"];$yc=array("PRIMARY","UNIQUE","INDEX");$P=table_status($a);if(eregi("MyISAM|M?aria",$P["Engine"])){$yc[]="FULLTEXT";}$u=indexes($a);if($v=="sqlite"){unset($yc[0]);unset($u[""]);}if($_POST&&!$k&&!$_POST["add"]){$c=array();foreach($_POST["indexes"]as$t){$A=$t["name"];if(in_array($t["type"],$yc)){$f=array();$Tc=array();$L=array();ksort($t["columns"]);foreach($t["columns"]as$w=>$e){if($e!=""){$x=$t["lengths"][$w];$L[]=idf_escape($e).($x?"(".(+$x).")":"");$f[]=$e;$Tc[]=($x?$x:null);}}if($f){$Pb=$u[$A];if($Pb){ksort($Pb["columns"]);ksort($Pb["lengths"]);if($t["type"]==$Pb["type"]&&array_values($Pb["columns"])===$f&&(!$Pb["lengths"]||array_values($Pb["lengths"])===$Tc)){unset($u[$A]);continue;}}$c[]=array($t["type"],$A,"(".implode(", ",$L).")");}}}foreach($u
as$A=>$Pb){$c[]=array($Pb["type"],$A,"DROP");}if(!$c){redirect(ME."table=".urlencode($a));}queries_redirect(ME."table=".urlencode($a),'Indexes have been altered.',alter_indexes($a,$c));}page_header('Indexes',$k,array("table"=>$a),$a);$m=array_keys(fields($a));$H=array("indexes"=>$u);if($_POST){$H=$_POST;if($_POST["add"]){foreach($H["indexes"]as$w=>$t){if($t["columns"][count($t["columns"])]!=""){$H["indexes"][$w]["columns"][]="";}}$t=end($H["indexes"]);if($t["type"]||array_filter($t["columns"],'strlen')||array_filter($t["lengths"],'strlen')){$H["indexes"][]=array("columns"=>array(1=>""));}}}else{foreach($H["indexes"]as$w=>$t){$H["indexes"][$w]["name"]=$w;$H["indexes"][$w]["columns"][]="";}$H["indexes"][]=array("columns"=>array(1=>""));}echo'
<form action="" method="post">
<table cellspacing="0" class="nowrap">
<thead><tr><th>Index Type<th>Column (length)<th>Name</thead>
';$Hc=1;foreach($H["indexes"]as$t){echo"<tr><td>".html_select("indexes[$Hc][type]",array(-1=>"")+$yc,$t["type"],($Hc==count($H["indexes"])?"indexesAddRow(this);":1))."<td>";ksort($t["columns"]);$q=1;foreach($t["columns"]as$w=>$e){echo"<span>".html_select("indexes[$Hc][columns][$q]",array(-1=>"")+$m,$e,($q==count($t["columns"])?"indexesAddColumn":"indexesChangeColumn")."(this, '".js_escape($v=="sql"?"":$_GET["indexes"]."_")."');"),"<input name='indexes[$Hc][lengths][$q]' size='2' value='".h($t["lengths"][$w])."'> </span>";$q++;}echo"<td><input name='indexes[$Hc][name]' value='".h($t["name"])."'>\n";$Hc++;}echo'</table>
<p>
<input type="submit" value="Save">
<noscript><p><input type="submit" name="add" value="Add next"></noscript>
<input type="hidden" name="token" value="',$R,'">
</form>
';}elseif(isset($_GET["database"])){if($_POST&&!$k&&!isset($_POST["add_x"])){restart_session();$A=trim($_POST["name"]);if($_POST["drop"]){$_GET["db"]="";queries_redirect(remove_from_uri("db|database"),'Database has been dropped.',drop_databases(array(DB)));}elseif(DB!==$A){if(DB!=""){$_GET["db"]=$A;queries_redirect(preg_replace('~db=[^&]*&~','',ME)."db=".urlencode($A),'Database has been renamed.',rename_database($A,$_POST["collation"]));}else{$i=explode("\n",str_replace("\r","",$A));$ef=true;$Nc="";foreach($i
as$j){if(count($i)==1||$j!=""){if(!create_database($j,$_POST["collation"])){$ef=false;}$Nc=$j;}}queries_redirect(ME."db=".urlencode($Nc),'Database has been created.',$ef);}}else{if(!$_POST["collation"]){redirect(substr(ME,0,-1));}query_redirect("ALTER DATABASE ".idf_escape($A).(eregi('^[a-z0-9_]+$',$_POST["collation"])?" COLLATE $_POST[collation]":""),substr(ME,0,-1),'Database has been altered.');}}page_header(DB!=""?'Alter database':'Create database',$k,array(),DB);$Oa=collations();$A=DB;$Na=null;if($_POST){$A=$_POST["name"];$Na=$_POST["collation"];}elseif(DB!=""){$Na=db_collation(DB,$Oa);}elseif($v=="sql"){foreach(get_vals("SHOW GRANTS")as$p){if(preg_match('~ ON (`(([^\\\\`]|``|\\\\.)*)%`\\.\\*)?~',$p,$_)&&$_[1]){$A=stripcslashes(idf_unescape("`$_[2]`"));break;}}}echo'
<form action="" method="post">
<p>
',($_POST["add_x"]||strpos($A,"\n")?'<textarea id="name" name="name" rows="10" cols="40">'.h($A).'</textarea><br>':'<input id="name" name="name" value="'.h($A).'" maxlength="64">')."\n".($Oa?html_select("collation",array(""=>"(".'collation'.")")+$Oa,$Na):"");?>
<script type='text/javascript'>document.getElementById('name').focus();</script>
<input type="submit" value="Save">
<?php
if(DB!=""){echo"<input type='submit' name='drop' value='".'Drop'."'".confirm().">\n";}elseif(!$_POST["add_x"]&&$_GET["db"]==""){echo"<input type='image' name='add' src='".h(preg_replace("~\\?.*~","",ME))."?file=plus.gif&amp;version=3.3.4' alt='+' title='".'Add next'."'>\n";}echo'<input type="hidden" name="token" value="',$R,'">
</form>
';}elseif(isset($_GET["scheme"])){if($_POST&&!$k){$z=preg_replace('~ns=[^&]*&~','',ME)."ns=";if($_POST["drop"]){query_redirect("DROP SCHEMA ".idf_escape($_GET["ns"]),$z,'Schema has been dropped.');}else{$A=trim($_POST["name"]);$z.=urlencode($A);if($_GET["ns"]==""){query_redirect("CREATE SCHEMA ".idf_escape($A),$z,'Schema has been created.');}elseif($_GET["ns"]!=$A){query_redirect("ALTER SCHEMA ".idf_escape($_GET["ns"])." RENAME TO ".idf_escape($A),$z,'Schema has been altered.');}else{redirect($z);}}}page_header($_GET["ns"]!=""?'Alter schema':'Create schema',$k);$H=$_POST;if(!$H){$H=array("name"=>$_GET["ns"]);}echo'
<form action="" method="post">
<p><input id="name" name="name" value="',h($H["name"]);?>">
<script type='text/javascript'>document.getElementById('name').focus();</script>
<input type="submit" value="Save">
<?php
if($_GET["ns"]!=""){echo"<input type='submit' name='drop' value='".'Drop'."'".confirm().">\n";}echo'<input type="hidden" name="token" value="',$R,'">
</form>
';}elseif(isset($_GET["call"])){$da=$_GET["call"];page_header('Call'.": ".h($da),$k);$Fe=routine($da,(isset($_GET["callf"])?"FUNCTION":"PROCEDURE"));$xc=array();$Pd=array();foreach($Fe["fields"]as$q=>$l){if(substr($l["inout"],-3)=="OUT"){$Pd[$q]="@".idf_escape($l["field"])." AS ".idf_escape($l["field"]);}if(!$l["inout"]||substr($l["inout"],0,2)=="IN"){$xc[]=$q;}}if(!$k&&$_POST){$Ha=array();foreach($Fe["fields"]as$w=>$l){if(in_array($w,$xc)){$W=process_input($l);if($W===false){$W="''";}if(isset($Pd[$w])){$g->query("SET @".idf_escape($l["field"])." = $W");}}$Ha[]=(isset($Pd[$w])?"@".idf_escape($l["field"]):$W);}$E=(isset($_GET["callf"])?"SELECT":"CALL")." ".idf_escape($da)."(".implode(", ",$Ha).")";echo"<p><code class='jush-$v'>".h($E)."</code> <a href='".h(ME)."sql=".urlencode($E)."'>".'Edit'."</a>\n";if(!$g->multi_query($E)){echo"<p class='error'>".error()."\n";}else{$h=connect();if(is_object($h)){$h->select_db(DB);}do{$F=$g->store_result();if(is_object($F)){select($F,$h);}else{echo"<p class='message'>".lang(array('Routine has been called, %d row affected.','Routine has been called, %d rows affected.'),$g->affected_rows)."\n";}}while($g->next_result());if($Pd){select($g->query("SELECT ".implode(", ",$Pd)));}}}echo'
<form action="" method="post">
';if($xc){echo"<table cellspacing='0'>\n";foreach($xc
as$w){$l=$Fe["fields"][$w];$A=$l["field"];echo"<tr><th>".$b->fieldName($l);$X=$_POST["fields"][$A];if($X!=""){if($l["type"]=="enum"){$X=+$X;}if($l["type"]=="set"){$X=array_sum($X);}}input($l,$X,(string)$_POST["function"][$A]);echo"\n";}echo"</table>\n";}echo'<p>
<input type="submit" value="Call">
<input type="hidden" name="token" value="',$R,'">
</form>
';}elseif(isset($_GET["foreign"])){$a=$_GET["foreign"];if($_POST&&!$k&&!$_POST["add"]&&!$_POST["change"]&&!$_POST["change-js"]){if($_POST["drop"]){query_redirect("ALTER TABLE ".table($a)."\nDROP ".($v=="sql"?"FOREIGN KEY ":"CONSTRAINT ").idf_escape($_GET["name"]),ME."table=".urlencode($a),'Foreign key has been dropped.');}else{$Ve=array_filter($_POST["source"],'strlen');ksort($Ve);$sf=array();foreach($Ve
as$w=>$W){$sf[$w]=$_POST["target"][$w];}query_redirect("ALTER TABLE ".table($a).($_GET["name"]!=""?"\nDROP ".($v=="sql"?"FOREIGN KEY ":"CONSTRAINT ").idf_escape($_GET["name"]).",":"")."\nADD FOREIGN KEY (".implode(", ",array_map('idf_escape',$Ve)).") REFERENCES ".table($_POST["table"])." (".implode(", ",array_map('idf_escape',$sf)).")".(ereg("^($Ad)\$",$_POST["on_delete"])?" ON DELETE $_POST[on_delete]":"").(ereg("^($Ad)\$",$_POST["on_update"])?" ON UPDATE $_POST[on_update]":""),ME."table=".urlencode($a),($_GET["name"]!=""?'Foreign key has been altered.':'Foreign key has been created.'));$k='Source and target columns must have the same data type, there must be an index on the target columns and referenced data must exist.'."<br>$k";}}page_header('Foreign key',$k,array("table"=>$a),$a);$H=array("table"=>$a,"source"=>array(""));if($_POST){$H=$_POST;ksort($H["source"]);if($_POST["add"]){$H["source"][]="";}elseif($_POST["change"]||$_POST["change-js"]){$H["target"]=array();}}elseif($_GET["name"]!=""){$ec=foreign_keys($a);$H=$ec[$_GET["name"]];$H["source"][]="";}$Ve=array_keys(fields($a));$sf=($a===$H["table"]?$Ve:array_keys(fields($H["table"])));$we=array();foreach(table_status()as$A=>$P){if(fk_support($P)){$we[]=$A;}}echo'
<form action="" method="post">
<p>
';if($H["db"]==""&&$H["ns"]==""){echo'Target table:
',html_select("table",$we,$H["table"],"this.form['change-js'].value = '1'; if (!ajaxForm(this.form)) this.form.submit();"),'<input type="hidden" name="change-js" value="">
<noscript><p><input type="submit" name="change" value="Change"></noscript>
<table cellspacing="0">
<thead><tr><th>Source<th>Target</thead>
';$Hc=0;foreach($H["source"]as$w=>$W){echo"<tr>","<td>".html_select("source[".(+$w)."]",array(-1=>"")+$Ve,$W,($Hc==count($H["source"])-1?"foreignAddRow(this);":1)),"<td>".html_select("target[".(+$w)."]",$sf,$H["target"][$w]);$Hc++;}echo'</table>
<p>
ON DELETE: ',html_select("on_delete",array(-1=>"")+explode("|",$Ad),$H["on_delete"]),' ON UPDATE: ',html_select("on_update",array(-1=>"")+explode("|",$Ad),$H["on_update"]),'<p>
<input type="submit" value="Save">
<noscript><p><input type="submit" name="add" value="Add column"></noscript>
';}if($_GET["name"]!=""){echo'<input type="submit" name="drop" value="Drop"',confirm(),'>';}echo'<input type="hidden" name="token" value="',$R,'">
</form>
';}elseif(isset($_GET["view"])){$a=$_GET["view"];$ub=false;if($_POST&&!$k){$A=trim($_POST["name"]);$ub=drop_create("DROP VIEW ".table($a),"CREATE VIEW ".table($A)." AS\n$_POST[select]",($_POST["drop"]?substr(ME,0,-1):ME."table=".urlencode($A)),'View has been dropped.','View has been altered.','View has been created.',$a);}page_header(($a!=""?'Alter view':'Create view'),$k,array("table"=>$a),$a);$H=$_POST;if(!$H&&$a!=""){$H=view($a);$H["name"]=$a;}echo'
<form action="" method="post">
<p>Name: <input name="name" value="',h($H["name"]),'" maxlength="64">
<p>';textarea("select",$H["select"]);echo'<p>
';if($ub){echo'<input type="hidden" name="dropped" value="1">';}echo'<input type="submit" value="Save">
';if($_GET["view"]!=""){echo'<input type="submit" name="drop" value="Drop"',confirm(),'>';}echo'<input type="hidden" name="token" value="',$R,'">
</form>
';}elseif(isset($_GET["event"])){$aa=$_GET["event"];$Ec=array("YEAR","QUARTER","MONTH","DAY","HOUR","MINUTE","WEEK","SECOND","YEAR_MONTH","DAY_HOUR","DAY_MINUTE","DAY_SECOND","HOUR_MINUTE","HOUR_SECOND","MINUTE_SECOND");$af=array("ENABLED"=>"ENABLE","DISABLED"=>"DISABLE","SLAVESIDE_DISABLED"=>"DISABLE ON SLAVE");if($_POST&&!$k){if($_POST["drop"]){query_redirect("DROP EVENT ".idf_escape($aa),substr(ME,0,-1),'Event has been dropped.');}elseif(in_array($_POST["INTERVAL_FIELD"],$Ec)&&isset($af[$_POST["STATUS"]])){$Ke="\nON SCHEDULE ".($_POST["INTERVAL_VALUE"]?"EVERY ".q($_POST["INTERVAL_VALUE"])." $_POST[INTERVAL_FIELD]".($_POST["STARTS"]?" STARTS ".q($_POST["STARTS"]):"").($_POST["ENDS"]?" ENDS ".q($_POST["ENDS"]):""):"AT ".q($_POST["STARTS"]))." ON COMPLETION".($_POST["ON_COMPLETION"]?"":" NOT")." PRESERVE";queries_redirect(substr(ME,0,-1),($aa!=""?'Event has been altered.':'Event has been created.'),queries(($aa!=""?"ALTER EVENT ".idf_escape($aa).$Ke.($aa!=$_POST["EVENT_NAME"]?"\nRENAME TO ".idf_escape($_POST["EVENT_NAME"]):""):"CREATE EVENT ".idf_escape($_POST["EVENT_NAME"]).$Ke)."\n".$af[$_POST["STATUS"]]." COMMENT ".q($_POST["EVENT_COMMENT"]).rtrim(" DO\n$_POST[EVENT_DEFINITION]",";").";"));}}page_header(($aa!=""?'Alter event'.": ".h($aa):'Create event'),$k);$H=$_POST;if(!$H&&$aa!=""){$I=get_rows("SELECT * FROM information_schema.EVENTS WHERE EVENT_SCHEMA = ".q(DB)." AND EVENT_NAME = ".q($aa));$H=reset($I);}echo'
<form action="" method="post">
<table cellspacing="0">
<tr><th>Name<td><input name="EVENT_NAME" value="',h($H["EVENT_NAME"]),'" maxlength="64">
<tr><th>Start<td><input name="STARTS" value="',h("$H[EXECUTE_AT]$H[STARTS]"),'">
<tr><th>End<td><input name="ENDS" value="',h($H["ENDS"]),'">
<tr><th>Every<td><input name="INTERVAL_VALUE" value="',h($H["INTERVAL_VALUE"]),'" size="6"> ',html_select("INTERVAL_FIELD",$Ec,$H["INTERVAL_FIELD"]),'<tr><th>Status<td>',html_select("STATUS",$af,$H["STATUS"]),'<tr><th>Comment<td><input name="EVENT_COMMENT" value="',h($H["EVENT_COMMENT"]),'" maxlength="64">
<tr><th>&nbsp;<td>',checkbox("ON_COMPLETION","PRESERVE",$H["ON_COMPLETION"]=="PRESERVE",'On completion preserve'),'</table>
<p>';textarea("EVENT_DEFINITION",$H["EVENT_DEFINITION"]);echo'<p>
<input type="submit" value="Save">
';if($aa!=""){echo'<input type="submit" name="drop" value="Drop"',confirm(),'>';}echo'<input type="hidden" name="token" value="',$R,'">
</form>
';}elseif(isset($_GET["procedure"])){$da=$_GET["procedure"];$Fe=(isset($_GET["function"])?"FUNCTION":"PROCEDURE");$Ge=routine_languages();$ub=false;if($_POST&&!$k&&!$_POST["add"]&&!$_POST["drop_col"]&&!$_POST["up"]&&!$_POST["down"]){$L=array();$m=(array)$_POST["fields"];ksort($m);foreach($m
as$l){if($l["field"]!=""){$L[]=(ereg("^($Bc)\$",$l["inout"])?"$l[inout] ":"").idf_escape($l["field"]).process_type($l,"CHARACTER SET");}}$ub=drop_create("DROP $Fe ".idf_escape($da),"CREATE $Fe ".idf_escape(trim($_POST["name"]))." (".implode(", ",$L).")".(isset($_GET["function"])?" RETURNS".process_type($_POST["returns"],"CHARACTER SET"):"").(in_array($_POST["language"],$Ge)?" LANGUAGE $_POST[language]":"").rtrim("\n$_POST[definition]",";").";",substr(ME,0,-1),'Routine has been dropped.','Routine has been altered.','Routine has been created.',$da);}page_header(($da!=""?(isset($_GET["function"])?'Alter function':'Alter procedure').": ".h($da):(isset($_GET["function"])?'Create function':'Create procedure')),$k);$Oa=get_vals("SHOW CHARACTER SET");sort($Oa);$H=array("fields"=>array());if($_POST){$H=$_POST;$H["fields"]=(array)$H["fields"];process_fields($H["fields"]);}elseif($da!=""){$H=routine($da,$Fe);$H["name"]=$da;}echo'
<form action="" method="post" id="form">
<p>Name: <input name="name" value="',h($H["name"]),'" maxlength="64">
',($Ge?'Language'.": ".html_select("language",$Ge,$H["language"]):""),'<table cellspacing="0" class="nowrap">
';edit_fields($H["fields"],$Oa,$Fe);if(isset($_GET["function"])){echo"<tr><td>".'Return type';edit_type("returns",$H["returns"],$Oa);}echo'</table>
<p>';textarea("definition",$H["definition"]);echo'<p>
<input type="submit" value="Save">
';if($da!=""){echo'<input type="submit" name="drop" value="Drop"',confirm(),'>';}if($ub){echo'<input type="hidden" name="dropped" value="1">';}echo'<input type="hidden" name="token" value="',$R,'">
</form>
';}elseif(isset($_GET["sequence"])){$fa=$_GET["sequence"];if($_POST&&!$k){$z=substr(ME,0,-1);$A=trim($_POST["name"]);if($_POST["drop"]){query_redirect("DROP SEQUENCE ".idf_escape($fa),$z,'Sequence has been dropped.');}elseif($fa==""){query_redirect("CREATE SEQUENCE ".idf_escape($A),$z,'Sequence has been created.');}elseif($fa!=$A){query_redirect("ALTER SEQUENCE ".idf_escape($fa)." RENAME TO ".idf_escape($A),$z,'Sequence has been altered.');}else{redirect($z);}}page_header($fa!=""?'Alter sequence'.": ".h($fa):'Create sequence',$k);$H=$_POST;if(!$H){$H=array("name"=>$fa);}echo'
<form action="" method="post">
<p><input name="name" value="',h($H["name"]),'">
<input type="submit" value="Save">
';if($fa!=""){echo"<input type='submit' name='drop' value='".'Drop'."'".confirm().">\n";}echo'<input type="hidden" name="token" value="',$R,'">
</form>
';}elseif(isset($_GET["type"])){$ga=$_GET["type"];if($_POST&&!$k){$z=substr(ME,0,-1);if($_POST["drop"]){query_redirect("DROP TYPE ".idf_escape($ga),$z,'Type has been dropped.');}else{query_redirect("CREATE TYPE ".idf_escape(trim($_POST["name"]))." $_POST[as]",$z,'Type has been created.');}}page_header($ga!=""?'Alter type'.": ".h($ga):'Create type',$k);$H=$_POST;if(!$H){$H=array("as"=>"AS ");}echo'
<form action="" method="post">
<p>
';if($ga!=""){echo"<input type='submit' name='drop' value='".'Drop'."'".confirm().">\n";}else{echo"<input name='name' value='".h($H['name'])."'>\n";textarea("as",$H["as"]);echo"<p><input type='submit' value='".'Save'."'>\n";}echo'<input type="hidden" name="token" value="',$R,'">
</form>
';}elseif(isset($_GET["trigger"])){$a=$_GET["trigger"];$Hf=trigger_options();$Gf=array("INSERT","UPDATE","DELETE");$ub=false;if($_POST&&!$k&&in_array($_POST["Timing"],$Hf["Timing"])&&in_array($_POST["Event"],$Gf)&&in_array($_POST["Type"],$Hf["Type"])){$xf=" $_POST[Timing] $_POST[Event]";$_d=" ON ".table($a);$ub=drop_create("DROP TRIGGER ".idf_escape($_GET["name"]).($v=="pgsql"?$_d:""),"CREATE TRIGGER ".idf_escape($_POST["Trigger"]).($v=="mssql"?$_d.$xf:$xf.$_d).rtrim(" $_POST[Type]\n$_POST[Statement]",";").";",ME."table=".urlencode($a),'Trigger has been dropped.','Trigger has been altered.','Trigger has been created.',$_GET["name"]);}page_header(($_GET["name"]!=""?'Alter trigger'.": ".h($_GET["name"]):'Create trigger'),$k,array("table"=>$a));$H=$_POST;if(!$H){$H=trigger($_GET["name"])+array("Trigger"=>$a."_bi");}echo'
<form action="" method="post" id="form">
<table cellspacing="0">
<tr><th>Time<td>',html_select("Timing",$Hf["Timing"],$H["Timing"],"if (/^".preg_quote($a,"/")."_[ba][iud]$/.test(this.form['Trigger'].value)) this.form['Trigger'].value = '".js_escape($a)."_' + selectValue(this).charAt(0).toLowerCase() + selectValue(this.form['Event']).charAt(0).toLowerCase();"),'<tr><th>Event<td>',html_select("Event",$Gf,$H["Event"],"this.form['Timing'].onchange();"),'<tr><th>Type<td>',html_select("Type",$Hf["Type"],$H["Type"]),'</table>
<p>Name: <input name="Trigger" value="',h($H["Trigger"]),'" maxlength="64">
<p>';textarea("Statement",$H["Statement"]);echo'<p>
<input type="submit" value="Save">
';if($_GET["name"]!=""){echo'<input type="submit" name="drop" value="Drop"',confirm(),'>';}if($ub){echo'<input type="hidden" name="dropped" value="1">';}echo'<input type="hidden" name="token" value="',$R,'">
</form>
';}elseif(isset($_GET["user"])){$ha=$_GET["user"];$ne=array(""=>array("All privileges"=>""));foreach(get_rows("SHOW PRIVILEGES")as$H){foreach(explode(",",($H["Privilege"]=="Grant option"?"":$H["Context"]))as$Ya){$ne[$Ya][$H["Privilege"]]=$H["Comment"];}}$ne["Server Admin"]+=$ne["File access on server"];$ne["Databases"]["Create routine"]=$ne["Procedures"]["Create routine"];unset($ne["Procedures"]["Create routine"]);$ne["Columns"]=array();foreach(array("Select","Insert","Update","References")as$W){$ne["Columns"][$W]=$ne["Tables"][$W];}unset($ne["Server Admin"]["Usage"]);foreach($ne["Tables"]as$w=>$W){unset($ne["Databases"][$w]);}$sd=array();if($_POST){foreach($_POST["objects"]as$w=>$W){$sd[$W]=(array)$sd[$W]+(array)$_POST["grants"][$w];}}$mc=array();$yd="";if(isset($_GET["host"])&&($F=$g->query("SHOW GRANTS FOR ".q($ha)."@".q($_GET["host"])))){while($H=$F->fetch_row()){if(preg_match('~GRANT (.*) ON (.*) TO ~',$H[0],$_)&&preg_match_all('~ *([^(,]*[^ ,(])( *\\([^)]+\\))?~',$_[1],$Zc,PREG_SET_ORDER)){foreach($Zc
as$W){if($W[1]!="USAGE"){$mc["$_[2]$W[2]"][$W[1]]=true;}if(ereg(' WITH GRANT OPTION',$H[0])){$mc["$_[2]$W[2]"]["GRANT OPTION"]=true;}}}if(preg_match("~ IDENTIFIED BY PASSWORD '([^']+)~",$H[0],$_)){$yd=$_[1];}}}if($_POST&&!$k){$zd=(isset($_GET["host"])?q($ha)."@".q($_GET["host"]):"''");$td=q($_POST["user"])."@".q($_POST["host"]);$Zd=q($_POST["pass"]);if($_POST["drop"]){query_redirect("DROP USER $zd",ME."privileges=",'User has been dropped.');}else{$db=false;if($zd!=$td){$db=queries(($g->server_info<5?"GRANT USAGE ON *.* TO":"CREATE USER")." $td IDENTIFIED BY".($_POST["hashed"]?" PASSWORD":"")." $Zd");$k=!$db;}elseif($_POST["pass"]!=$yd||!$_POST["hashed"]){queries("SET PASSWORD FOR $td = ".($_POST["hashed"]?$Zd:"PASSWORD($Zd)"));}if(!$k){$Ce=array();foreach($sd
as$wd=>$p){if(isset($_GET["grant"])){$p=array_filter($p);}$p=array_keys($p);if(isset($_GET["grant"])){$Ce=array_diff(array_keys(array_filter($sd[$wd],'strlen')),$p);}elseif($zd==$td){$xd=array_keys((array)$mc[$wd]);$Ce=array_diff($xd,$p);$p=array_diff($p,$xd);unset($mc[$wd]);}if(preg_match('~^(.+)\\s*(\\(.*\\))?$~U',$wd,$_)&&(!grant("REVOKE",$Ce,$_[2]," ON $_[1] FROM $td")||!grant("GRANT",$p,$_[2]," ON $_[1] TO $td"))){$k=true;break;}}}if(!$k&&isset($_GET["host"])){if($zd!=$td){queries("DROP USER $zd");}elseif(!isset($_GET["grant"])){foreach($mc
as$wd=>$Ce){if(preg_match('~^(.+)(\\(.*\\))?$~U',$wd,$_)){grant("REVOKE",array_keys($Ce),$_[2]," ON $_[1] FROM $td");}}}}queries_redirect(ME."privileges=",(isset($_GET["host"])?'User has been altered.':'User has been created.'),!$k);if($db){$g->query("DROP USER $td");}}}page_header((isset($_GET["host"])?'Username'.": ".h("$ha@$_GET[host]"):'Create user'),$k,array("privileges"=>array('','Privileges')));if($_POST){$H=$_POST;$mc=$sd;}else{$H=$_GET+array("host"=>$g->result("SELECT SUBSTRING_INDEX(CURRENT_USER, '@', -1)"));$H["pass"]=$yd;if($yd!=""){$H["hashed"]=true;}$mc[(DB!=""&&!isset($_GET["host"])?idf_escape(addcslashes(DB,"%_")):"").".*"]=array();}echo'<form action="" method="post">
<table cellspacing="0">
<tr><th>Server<td><input name="host" maxlength="60" value="',h($H["host"]),'">
<tr><th>Username<td><input name="user" maxlength="16" value="',h($H["user"]),'">
<tr><th>Password<td><input id="pass" name="pass" value="',h($H["pass"]),'">
';if(!$H["hashed"]){echo'<script type="text/javascript">typePassword(document.getElementById(\'pass\'));</script>';}echo
checkbox("hashed",1,$H["hashed"],'Hashed',"typePassword(this.form['pass'], this.checked);"),'</table>

';echo"<table cellspacing='0'>\n","<thead><tr><th colspan='2'><a href='http://dev.mysql.com/doc/refman/".substr($g->server_info,0,3)."/en/grant.html#priv_level' target='_blank' rel='noreferrer'>".'Privileges'."</a>";$q=0;foreach($mc
as$wd=>$p){echo'<th>'.($wd!="*.*"?"<input name='objects[$q]' value='".h($wd)."' size='10'>":"<input type='hidden' name='objects[$q]' value='*.*' size='10'>*.*");$q++;}echo"</thead>\n";foreach(array(""=>"","Server Admin"=>'Server',"Databases"=>'Database',"Tables"=>'Table',"Columns"=>'Column',"Procedures"=>'Routine',)as$Ya=>$nb){foreach((array)$ne[$Ya]as$me=>$Sa){echo"<tr".odd()."><td".($nb?">$nb<td":" colspan='2'").' lang="en" title="'.h($Sa).'">'.h($me);$q=0;foreach($mc
as$wd=>$p){$A="'grants[$q][".h(strtoupper($me))."]'";$X=$p[strtoupper($me)];if($Ya=="Server Admin"&&$wd!=(isset($mc["*.*"])?"*.*":".*")){echo"<td>&nbsp;";}elseif(isset($_GET["grant"])){echo"<td><select name=$A><option><option value='1'".($X?" selected":"").">".'Grant'."<option value='0'".($X=="0"?" selected":"").">".'Revoke'."</select>";}else{echo"<td align='center'><input type='checkbox' name=$A value='1'".($X?" checked":"").($me=="All privileges"?" id='grants-$q-all'":($me=="Grant option"?"":" onclick=\"if (this.checked) formUncheck('grants-$q-all');\"")).">";}$q++;}}}echo"</table>\n",'<p>
<input type="submit" value="Save">
';if(isset($_GET["host"])){echo'<input type="submit" name="drop" value="Drop"',confirm(),'>';}echo'<input type="hidden" name="token" value="',$R,'">
</form>
';}elseif(isset($_GET["processlist"])){if(support("kill")&&$_POST&&!$k){$Kc=0;foreach((array)$_POST["kill"]as$W){if(queries("KILL ".(+$W))){$Kc++;}}queries_redirect(ME."processlist=",lang(array('%d process has been killed.','%d processes have been killed.'),$Kc),$Kc||!$_POST["kill"]);}page_header('Process list',$k);echo'
<form action="" method="post">
<table cellspacing="0" onclick="tableClick(event);" class="nowrap checkable">
';$q=-1;foreach(process_list()as$q=>$H){if(!$q){echo"<thead><tr lang='en'>".(support("kill")?"<th>&nbsp;":"")."<th>".implode("<th>",array_keys($H))."</thead>\n";}echo"<tr".odd().">".(support("kill")?"<td>".checkbox("kill[]",$H["Id"],0):"");foreach($H
as$w=>$W){echo"<td>".(($v=="sql"?$w=="Info"&&$W!="":$w=="current_query"&&$W!="<IDLE>")?"<code class='jush-$v'>".shorten_utf8($W,100,"</code>").' <a href="'.h(ME.($H["db"]!=""?"db=".urlencode($H["db"])."&":"")."sql=".urlencode($W)).'">'.'Edit'.'</a>':nbsp($W));}echo"\n";}echo'</table>
<script type=\'text/javascript\'>tableCheck();</script>
<p>
';if(support("kill")){echo($q+1)."/".sprintf('%d in total',$g->result("SELECT @@max_connections")),"<p><input type='submit' value='".'Kill'."'>\n";}echo'<input type="hidden" name="token" value="',$R,'">
</form>
';}elseif(isset($_GET["select"])){$a=$_GET["select"];$P=table_status($a);$u=indexes($a);$m=fields($a);$ec=column_foreign_keys($a);if($P["Oid"]=="t"){$u[]=array("type"=>"PRIMARY","columns"=>array("oid"));}parse_str($_COOKIE["adminer_import"],$qa);$De=array();$f=array();$vf=null;foreach($m
as$w=>$l){$A=$b->fieldName($l);if(isset($l["privileges"]["select"])&&$A!=""){$f[$w]=html_entity_decode(strip_tags($A));if(ereg('text|lob',$l["type"])){$vf=$b->selectLengthProcess();}}$De+=$l["privileges"];}list($J,$nc)=$b->selectColumnsProcess($f,$u);$Z=$b->selectSearchProcess($m,$u);$Id=$b->selectOrderProcess($m,$u);$y=$b->selectLimitProcess();$jc=($J?implode(", ",$J):($P["Oid"]=="t"?"oid, ":"")."*")."\nFROM ".table($a);$oc=($nc&&count($nc)<count($J)?"\nGROUP BY ".implode(", ",$nc):"").($Id?"\nORDER BY ".implode(", ",$Id):"");if($_GET["val"]&&is_ajax()){header("Content-Type: text/plain; charset=utf-8");foreach($_GET["val"]as$Of=>$H){echo$g->result("SELECT".limit(idf_escape(key($H))." FROM ".table($a)," WHERE ".where_check($Of).($Z?" AND ".implode(" AND ",$Z):"").($Id?" ORDER BY ".implode(", ",$Id):""),1));}exit;}if($_POST&&!$k){$dg="(".implode(") OR (",array_map('where_check',(array)$_POST["check"])).")";$je=$Qf=null;foreach($u
as$t){if($t["type"]=="PRIMARY"){$je=array_flip($t["columns"]);$Qf=($J?$je:array());break;}}foreach((array)$Qf
as$w=>$W){if(in_array(idf_escape($w),$J)){unset($Qf[$w]);}}if($_POST["export"]){cookie("adminer_import","output=".urlencode($_POST["output"])."&format=".urlencode($_POST["format"]));dump_headers($a);$b->dumpTable($a,"");if(!is_array($_POST["check"])||$Qf===array()){$cg=$Z;if(is_array($_POST["check"])){$cg[]="($dg)";}$E="SELECT $jc".($cg?"\nWHERE ".implode(" AND ",$cg):"").$oc;}else{$Mf=array();foreach($_POST["check"]as$W){$Mf[]="(SELECT".limit($jc,"\nWHERE ".($Z?implode(" AND ",$Z)." AND ":"").where_check($W).$oc,1).")";}$E=implode(" UNION ALL ",$Mf);}$b->dumpData($a,"table",$E);exit;}if(!$b->selectEmailProcess($Z,$ec)){if($_POST["save"]||$_POST["delete"]){$F=true;$ra=0;$E=table($a);$L=array();if(!$_POST["delete"]){foreach($f
as$A=>$W){$W=process_input($m[$A]);if($W!==null){if($_POST["clone"]){$L[idf_escape($A)]=($W!==false?$W:idf_escape($A));}elseif($W!==false){$L[]=idf_escape($A)." = $W";}}}$E.=($_POST["clone"]?" (".implode(", ",array_keys($L)).")\nSELECT ".implode(", ",$L)."\nFROM ".table($a):" SET\n".implode(",\n",$L));}if($_POST["delete"]||$L){$Qa="UPDATE";if($_POST["delete"]){$Qa="DELETE";$E="FROM $E";}if($_POST["clone"]){$Qa="INSERT";$E="INTO $E";}if($_POST["all"]||($Qf===array()&&$_POST["check"])||count($nc)<count($J)){$F=queries($Qa." $E".($_POST["all"]?($Z?"\nWHERE ".implode(" AND ",$Z):""):"\nWHERE $dg"));$ra=$g->affected_rows;}else{foreach((array)$_POST["check"]as$W){$F=queries($Qa.limit1($E,"\nWHERE ".where_check($W)));if(!$F){break;}$ra+=$g->affected_rows;}}}queries_redirect(remove_from_uri("page"),lang(array('%d item has been affected.','%d items have been affected.'),$ra),$F);}elseif(!$_POST["import"]){if(!$_POST["val"]){$k='Double click on a value to modify it.';}else{$F=true;$ra=0;foreach($_POST["val"]as$Of=>$H){$L=array();foreach($H
as$w=>$W){$w=bracket_escape($w,1);$L[]=idf_escape($w)." = ".(ereg('char|text',$m[$w]["type"])||$W!=""?$b->processInput($m[$w],$W):"NULL");}$E=table($a)." SET ".implode(", ",$L);$cg=" WHERE ".where_check($Of).($Z?" AND ".implode(" AND ",$Z):"");$F=queries("UPDATE".(count($nc)<count($J)?" $E$cg":limit1($E,$cg)));if(!$F){break;}$ra+=$g->affected_rows;}queries_redirect(remove_from_uri(),lang(array('%d item has been affected.','%d items have been affected.'),$ra),$F);}}elseif(is_string($Xb=get_file("csv_file",true))){cookie("adminer_import","output=".urlencode($qa["output"])."&format=".urlencode($_POST["separator"]));$F=true;$Pa=array_keys($m);preg_match_all('~(?>"[^"]*"|[^"\\r\\n]+)+~',$Xb,$Zc);$ra=count($Zc[0]);begin();$Qe=($_POST["separator"]=="csv"?",":($_POST["separator"]=="tsv"?"\t":";"));foreach($Zc[0]as$w=>$W){preg_match_all("~((\"[^\"]*\")+|[^$Qe]*)$Qe~",$W.$Qe,$ad);if(!$w&&!array_diff($ad[1],$Pa)){$Pa=$ad[1];$ra--;}else{$L=array();foreach($ad[1]as$q=>$Ma){$L[idf_escape($Pa[$q])]=($Ma==""&&$m[$Pa[$q]]["null"]?"NULL":q(str_replace('""','"',preg_replace('~^"|"$~','',$Ma))));}$F=insert_update($a,$L,$je);if(!$F){break;}}}if($F){queries("COMMIT");}queries_redirect(remove_from_uri("page"),lang(array('%d row has been imported.','%d rows have been imported.'),$ra),$F);queries("ROLLBACK");}else{$k=upload_error($Xb);}}}$lf=$b->tableName($P);page_header('Select'.": $lf",$k);session_write_close();$L=null;if(isset($De["insert"])){$L="";foreach((array)$_GET["where"]as$W){if(count($ec[$W["col"]])==1&&($W["op"]=="="||(!$W["op"]&&!ereg('[_%]',$W["val"])))){$L.="&set".urlencode("[".bracket_escape($W["col"])."]")."=".urlencode($W["val"]);}}}$b->selectLinks($P,$L);if(!$f){echo"<p class='error'>".'Unable to select the table'.($m?".":": ".error())."\n";}else{echo"<form action='' id='form'>\n","<div style='display: none;'>";hidden_fields_get();echo(DB!=""?'<input type="hidden" name="db" value="'.h(DB).'">'.(isset($_GET["ns"])?'<input type="hidden" name="ns" value="'.h($_GET["ns"]).'">':""):"");echo'<input type="hidden" name="select" value="'.h($a).'">',"</div>\n";$b->selectColumnsPrint($J,$f);$b->selectSearchPrint($Z,$f,$u);$b->selectOrderPrint($Id,$f,$u);$b->selectLimitPrint($y);$b->selectLengthPrint($vf);$b->selectActionPrint();echo"</form>\n";$C=$_GET["page"];if($C=="last"){$hc=$g->result("SELECT COUNT(*) FROM ".table($a).($Z?" WHERE ".implode(" AND ",$Z):""));$C=floor(max(0,$hc-1)/$y);}$E="SELECT".limit((+$y&&$nc&&count($nc)<count($J)&&$v=="sql"?"SQL_CALC_FOUND_ROWS ":"").$jc,($Z?"\nWHERE ".implode(" AND ",$Z):"").$oc,($y!=""?+$y:null),($C?$y*$C:0),"\n");echo$b->selectQuery($E);$F=$g->query($E);if(!$F){echo"<p class='error'>".error()."\n";}else{if($v=="mssql"){$F->seek($y*$C);}$Bb=array();echo"<form action='' method='post' enctype='multipart/form-data'>\n";$I=array();while($H=$F->fetch_assoc()){if($C&&$v=="oracle"){unset($H["RNUM"]);}$I[]=$H;}if($_GET["page"]!="last"){$hc=(+$y&&$nc&&count($nc)<count($J)?($v=="sql"?$g->result(" SELECT FOUND_ROWS()"):$g->result("SELECT COUNT(*) FROM ($E) x")):count($I));}if(!$I){echo"<p class='message'>".'No rows.'."\n";}else{$Ba=$b->backwardKeys($a,$lf);echo"<table cellspacing='0' class='nowrap checkable' onclick='tableClick(event);' onkeydown='return editingKeydown(event);'>\n","<thead><tr>".(!$nc&&$J?"":"<td><input type='checkbox' id='all-page' onclick='formCheck(this, /check/);'> <a href='".h($_GET["modify"]?remove_from_uri("modify"):$_SERVER["REQUEST_URI"]."&modify=1")."'>".'edit'."</a>");$rd=array();$lc=array();reset($J);$te=1;foreach($I[0]as$w=>$W){if($P["Oid"]!="t"||$w!="oid"){$W=$_GET["columns"][key($J)];$l=$m[$J?($W?$W["col"]:current($J)):$w];$A=($l?$b->fieldName($l,$te):"*");if($A!=""){$te++;$rd[$w]=$A;$e=idf_escape($w);echo'<th><a href="'.h(remove_from_uri('(order|desc)[^=]*|page').'&order%5B0%5D='.urlencode($w).($Id[0]==$e||$Id[0]==$w||(!$Id&&count($nc)<count($J)&&$nc[0]==$e)?'&desc%5B0%5D=1':'')).'">'.(!$J||$W?apply_sql_function($W["fun"],$A):h(current($J)))."</a>";}$lc[$w]=$W["fun"];next($J);}}$Tc=array();if($_GET["modify"]){foreach($I
as$H){foreach($H
as$w=>$W){$Tc[$w]=max($Tc[$w],min(40,strlen(utf8_decode($W))));}}}echo($Ba?"<th>".'Relations':"")."</thead>\n";foreach($b->rowDescriptions($I,$ec)as$qd=>$H){$Nf=unique_array($I[$qd],$u);$Of="";foreach($Nf
as$w=>$W){$Of.="&".(isset($W)?urlencode("where[".bracket_escape($w)."]")."=".urlencode($W):"null%5B%5D=".urlencode($w));}echo"<tr".odd().">".(!$nc&&$J?"":"<td>".checkbox("check[]",substr($Of,1),in_array(substr($Of,1),(array)$_POST["check"]),"","this.form['all'].checked = false; formUncheck('all-page');").(count($nc)<count($J)||information_schema(DB)?"":" <a href='".h(ME."edit=".urlencode($a).$Of)."'>".'edit'."</a>"));foreach($H
as$w=>$W){if(isset($rd[$w])){$l=$m[$w];if($W!=""&&(!isset($Bb[$w])||$Bb[$w]!="")){$Bb[$w]=(is_mail($W)?$rd[$w]:"");}$z="";$W=$b->editVal($W,$l);if(!isset($W)){$W="<i>NULL</i>";}else{if(ereg('blob|bytea|raw|file',$l["type"])&&$W!=""){$z=h(ME.'download='.urlencode($a).'&field='.urlencode($w).$Of);}if($W===""){$W="&nbsp;";}elseif($vf!=""&&ereg('text|blob',$l["type"])&&is_utf8($W)){$W=shorten_utf8($W,max(0,+$vf));}else{$W=h($W);}if(!$z){foreach((array)$ec[$w]as$n){if(count($ec[$w])==1||end($n["source"])==$w){$z="";foreach($n["source"]as$q=>$Ve){$z.=where_link($q,$n["target"][$q],$I[$qd][$Ve]);}$z=h(($n["db"]!=""?preg_replace('~([?&]db=)[^&]+~','\\1'.urlencode($n["db"]),ME):ME).'select='.urlencode($n["table"]).$z);if(count($n["source"])==1){break;}}}}if($w=="COUNT(*)"){$z=h(ME."select=".urlencode($a));$q=0;foreach((array)$_GET["where"]as$V){if(!array_key_exists($V["col"],$Nf)){$z.=h(where_link($q++,$V["col"],$V["val"],$V["op"]));}}foreach($Nf
as$Jc=>$V){$z.=h(where_link($q++,$Jc,$V));}}}if(!$z){if(is_mail($W)){$z="mailto:$W";}if($qe=is_url($H[$w])){$z=($qe=="http"&&$ba?$H[$w]:"$qe://www.adminer.org/redirect/?url=".urlencode($H[$w]));}}$r=h("val[$Of][".bracket_escape($w)."]");$X=$_POST["val"][$Of][bracket_escape($w)];$qc=h(isset($X)?$X:$H[$w]);$Xc=strpos($W,"<i>...</i>");$zb=is_utf8($W)&&$I[$qd][$w]==$H[$w]&&!$lc[$w];$uf=ereg('text|lob',$l["type"]);echo(($_GET["modify"]&&$zb)||isset($X)?"<td>".($uf?"<textarea name='$r' cols='30' rows='".(substr_count($H[$w],"\n")+1)."'>$qc</textarea>":"<input name='$r' value='$qc' size='$Tc[$w]'>"):"<td id='$r' ondblclick=\"".($zb?"selectDblClick(this, event".($Xc?", 2":($uf?", 1":"")).")":"alert('".h('Use edit link to modify this value.')."')").";\">".$b->selectVal($W,$z,$l));}}if($Ba){echo"<td>";}$b->backwardKeysPrint($Ba,$I[$qd]);echo"</tr>\n";}echo"</table>\n",(!$nc&&$J?"":"<script type='text/javascript'>tableCheck();</script>\n");}if($I||$C){$Lb=true;if($_GET["page"]!="last"&&+$y&&count($nc)>=count($J)&&($hc>=$y||$C)){$hc=found_rows($P,$Z);if($hc<max(1e4,2*($C+1)*$y)){ob_flush();flush();$hc=$g->result("SELECT COUNT(*) FROM ".table($a).($Z?" WHERE ".implode(" AND ",$Z):""));}else{$Lb=false;}}echo"<p class='pages'>";if(+$y&&$hc>$y){$cd=floor(($hc-1)/$y);echo'<a href="'.h(remove_from_uri("page"))."\" onclick=\"pageClick(this.href, +prompt('".'Page'."', '".($C+1)."'), event); return false;\">".'Page'."</a>:",pagination(0,$C).($C>5?" ...":"");for($q=max(1,$C-4);$q<min($cd,$C+5);$q++){echo
pagination($q,$C);}echo($C+5<$cd?" ...":"").($Lb?pagination($cd,$C):' <a href="'.h(remove_from_uri()."&page=last").'">'.'last'."</a>");}echo" (".($Lb?"":"~ ").lang(array('%d row','%d rows'),$hc).") ".checkbox("all",1,0,'whole result')."\n";if($b->selectCommandPrint()){echo'<fieldset><legend>Edit</legend><div>
<input type="submit" value="Save"',($_GET["modify"]?'':' title="'.'Double click on a value to modify it.'.'" class="jsonly"');?>>
<input type="submit" name="edit" value="Edit">
<input type="submit" name="clone" value="Clone">
<input type="submit" name="delete" value="Delete" onclick="return confirm('Are you sure? (' + (this.form['all'].checked ? <?php echo$hc,' : formChecked(this, /check/)) + \')\');">
</div></fieldset>
';}$fc=$b->dumpFormat();if($fc){print_fieldset("export",'Export');$Qd=$b->dumpOutput();echo($Qd?html_select("output",$Qd,$qa["output"])." ":""),html_select("format",$fc,$qa["format"])," <input type='submit' name='export' value='".'Export'."' onclick='eventStop(event);'>\n","</div></fieldset>\n";}}if($b->selectImportPrint()){print_fieldset("import",'Import',!$I);echo"<input type='file' name='csv_file'> ",html_select("separator",array("csv"=>"CSV,","csv;"=>"CSV;","tsv"=>"TSV"),$qa["format"],1);echo" <input type='submit' name='import' value='".'Import'."'>","<input type='hidden' name='token' value='$R'>\n","</div></fieldset>\n";}$b->selectEmailPrint(array_filter($Bb,'strlen'),$f);echo"</form>\n";}}}elseif(isset($_GET["variables"])){$Ze=isset($_GET["status"]);page_header($Ze?'Status':'Variables');$Xf=($Ze?show_status():show_variables());if(!$Xf){echo"<p class='message'>".'No rows.'."\n";}else{echo"<table cellspacing='0'>\n";foreach($Xf
as$w=>$W){echo"<tr>","<th><code class='jush-".$v.($Ze?"status":"set")."'>".h($w)."</code>","<td>".nbsp($W);}echo"</table>\n";}}elseif(isset($_GET["script"])){header("Content-Type: text/javascript; charset=utf-8");if($_GET["script"]=="db"){$if=array("Data_length"=>0,"Index_length"=>0,"Data_free"=>0);foreach(table_status()as$P){$r=js_escape($P["Name"]);json_row("Comment-$r",nbsp($P["Comment"]));if(!is_view($P)){foreach(array("Engine","Collation")as$w){json_row("$w-$r",nbsp($P[$w]));}foreach($if+array("Auto_increment"=>0,"Rows"=>0)as$w=>$W){if($P[$w]!=""){$W=number_format($P[$w],0,'.',',');json_row("$w-$r",($w=="Rows"&&$P["Engine"]=="InnoDB"&&$W?"~ $W":$W));if(isset($if[$w])){$if[$w]+=($P["Engine"]!="InnoDB"||$w!="Data_free"?$P[$w]:0);}}elseif(array_key_exists($w,$P)){json_row("$w-$r");}}}}foreach($if
as$w=>$W){json_row("sum-$w",number_format($W,0,'.',','));}json_row("");}else{foreach(count_tables($b->databases())as$j=>$W){json_row("tables-".js_escape($j),$W);}json_row("");}exit;}else{$rf=array_merge((array)$_POST["tables"],(array)$_POST["views"]);if($rf&&!$k&&!$_POST["search"]){$F=true;$gd="";if($v=="sql"&&count($_POST["tables"])>1&&($_POST["drop"]||$_POST["truncate"]||$_POST["copy"])){queries("SET foreign_key_checks = 0");}if($_POST["truncate"]){if($_POST["tables"]){$F=truncate_tables($_POST["tables"]);}$gd='Tables have been truncated.';}elseif($_POST["move"]){$F=move_tables((array)$_POST["tables"],(array)$_POST["views"],$_POST["target"]);$gd='Tables have been moved.';}elseif($_POST["copy"]){$F=copy_tables((array)$_POST["tables"],(array)$_POST["views"],$_POST["target"]);$gd='Tables have been copied.';}elseif($_POST["drop"]){if($_POST["views"]){$F=drop_views($_POST["views"]);}if($F&&$_POST["tables"]){$F=drop_tables($_POST["tables"]);}$gd='Tables have been dropped.';}elseif($v!="sql"){$F=($v=="sqlite"?queries("VACUUM"):apply_queries("VACUUM".($_POST["optimize"]?"":" ANALYZE"),$_POST["tables"]));$gd='Tables have been optimized.';}elseif($_POST["tables"]&&($F=queries(($_POST["optimize"]?"OPTIMIZE":($_POST["check"]?"CHECK":($_POST["repair"]?"REPAIR":"ANALYZE")))." TABLE ".implode(", ",array_map('idf_escape',$_POST["tables"]))))){while($H=$F->fetch_assoc()){$gd.="<b>".h($H["Table"])."</b>: ".h($H["Msg_text"])."<br>";}}queries_redirect(substr(ME,0,-1),$gd,$F);}page_header(($_GET["ns"]==""?'Database'.": ".h(DB):'Schema'.": ".h($_GET["ns"])),$k,true);if($b->homepage()){if($_GET["ns"]!==""){echo"<h3>".'Tables and views'."</h3>\n";$qf=tables_list();if(!$qf){echo"<p class='message'>".'No tables.'."\n";}else{echo"<form action='' method='post'>\n","<p>".'Search data in tables'.": <input name='query' value='".h($_POST["query"])."'> <input type='submit' name='search' value='".'Search'."'>\n";if($_POST["search"]&&$_POST["query"]!=""){search_tables();}echo"<table cellspacing='0' class='nowrap checkable' onclick='tableClick(event);'>\n",'<thead><tr class="wrap"><td><input id="check-all" type="checkbox" onclick="formCheck(this, /^(tables|views)\[/);">','<th>'.'Table','<td>'.'Engine','<td>'.'Collation','<td>'.'Data Length','<td>'.'Index Length','<td>'.'Data Free','<td>'.'Auto Increment','<td>'.'Rows',(support("comment")?'<td>'.'Comment':''),"</thead>\n";foreach($qf
as$A=>$S){$Zf=(isset($S)&&!eregi("table",$S));echo'<tr'.odd().'><td>'.checkbox(($Zf?"views[]":"tables[]"),$A,in_array($A,$rf,true),"","formUncheck('check-all');"),'<th><a href="'.h(ME).'table='.urlencode($A).'" title="'.'Show structure'.'">'.h($A).'</a>';if($Zf){echo'<td colspan="6"><a href="'.h(ME)."view=".urlencode($A).'" title="'.'Alter view'.'">'.'View'.'</a>','<td align="right"><a href="'.h(ME)."select=".urlencode($A).'" title="'.'Select data'.'">?</a>';}else{foreach(array("Engine"=>array(),"Collation"=>array(),"Data_length"=>array("create",'Alter table'),"Index_length"=>array("indexes",'Alter indexes'),"Data_free"=>array("edit",'New item'),"Auto_increment"=>array("auto_increment=1&create",'Alter table'),"Rows"=>array("select",'Select data'),)as$w=>$z){echo($z?"<td align='right'><a href='".h(ME."$z[0]=").urlencode($A)."' id='$w-".h($A)."' title='$z[1]'>?</a>":"<td id='$w-".h($A)."'>&nbsp;");}}echo(support("comment")?"<td id='Comment-".h($A)."'>&nbsp;":"");}echo"<tr><td>&nbsp;<th>".sprintf('%d in total',count($qf)),"<td>".nbsp($v=="sql"?$g->result("SELECT @@storage_engine"):""),"<td>".nbsp(db_collation(DB,collations()));foreach(array("Data_length","Index_length","Data_free")as$w){echo"<td align='right' id='sum-$w'>&nbsp;";}echo"</table>\n","<script type='text/javascript'>tableCheck();</script>\n";if(!information_schema(DB)){echo"<p>".(ereg('^(sql|sqlite|pgsql)$',$v)?($v!="sqlite"?"<input type='submit' value='".'Analyze'."'> ":"")."<input type='submit' name='optimize' value='".'Optimize'."'> ":"").($v=="sql"?"<input type='submit' name='check' value='".'Check'."'> <input type='submit' name='repair' value='".'Repair'."'> ":"")."<input type='submit' name='truncate' value='".'Truncate'."'".confirm("formChecked(this, /tables/)")."> <input type='submit' name='drop' value='".'Drop'."'".confirm("formChecked(this, /tables|views/)",1).">\n";$i=(support("scheme")?schemas():$b->databases());if(count($i)!=1&&$v!="sqlite"){$j=(isset($_POST["target"])?$_POST["target"]:(support("scheme")?$_GET["ns"]:DB));echo"<p>".'Move to other database'.": ",($i?html_select("target",$i,$j):'<input name="target" value="'.h($j).'">')," <input type='submit' name='move' value='".'Move'."' onclick='eventStop(event);'>",(support("copy")?" <input type='submit' name='copy' value='".'Copy'."' onclick='eventStop(event);'>":""),"\n";}echo"<input type='hidden' name='token' value='$R'>\n";}echo"</form>\n";}echo'<p><a href="'.h(ME).'create=">'.'Create table'."</a>\n";if(support("view")){echo'<a href="'.h(ME).'view=">'.'Create view'."</a>\n";}if(support("routine")){echo"<h3>".'Routines'."</h3>\n";$He=routines();if($He){echo"<table cellspacing='0'>\n",'<thead><tr><th>'.'Name'.'<td>'.'Type'.'<td>'.'Return type'."<td>&nbsp;</thead>\n";odd('');foreach($He
as$H){echo'<tr'.odd().'>','<th><a href="'.h(ME).($H["ROUTINE_TYPE"]!="PROCEDURE"?'callf=':'call=').urlencode($H["ROUTINE_NAME"]).'">'.h($H["ROUTINE_NAME"]).'</a>','<td>'.h($H["ROUTINE_TYPE"]),'<td>'.h($H["DTD_IDENTIFIER"]),'<td><a href="'.h(ME).($H["ROUTINE_TYPE"]!="PROCEDURE"?'function=':'procedure=').urlencode($H["ROUTINE_NAME"]).'">'.'Alter'."</a>";}echo"</table>\n";}echo'<p>'.(support("procedure")?'<a href="'.h(ME).'procedure=">'.'Create procedure'.'</a> ':'').'<a href="'.h(ME).'function=">'.'Create function'."</a>\n";}if(support("sequence")){echo"<h3>".'Sequences'."</h3>\n";$Re=get_vals("SELECT sequence_name FROM information_schema.sequences WHERE sequence_schema = current_schema()");if($Re){echo"<table cellspacing='0'>\n","<thead><tr><th>".'Name'."</thead>\n";odd('');foreach($Re
as$W){echo"<tr".odd()."><th><a href='".h(ME)."sequence=".urlencode($W)."'>".h($W)."</a>\n";}echo"</table>\n";}echo"<p><a href='".h(ME)."sequence='>".'Create sequence'."</a>\n";}if(support("type")){echo"<h3>".'User types'."</h3>\n";$T=types();if($T){echo"<table cellspacing='0'>\n","<thead><tr><th>".'Name'."</thead>\n";odd('');foreach($T
as$W){echo"<tr".odd()."><th><a href='".h(ME)."type=".urlencode($W)."'>".h($W)."</a>\n";}echo"</table>\n";}echo"<p><a href='".h(ME)."type='>".'Create type'."</a>\n";}if(support("event")){echo"<h3>".'Events'."</h3>\n";$I=get_rows("SHOW EVENTS");if($I){echo"<table cellspacing='0'>\n","<thead><tr><th>".'Name'."<td>".'Schedule'."<td>".'Start'."<td>".'End'."</thead>\n";foreach($I
as$H){echo"<tr>",'<th><a href="'.h(ME).'event='.urlencode($H["Name"]).'">'.h($H["Name"])."</a>","<td>".($H["Execute at"]?'At given time'."<td>".$H["Execute at"]:'Every'." ".$H["Interval value"]." ".$H["Interval field"]."<td>$H[Starts]"),"<td>$H[Ends]";}echo"</table>\n";}echo'<p><a href="'.h(ME).'event=">'.'Create event'."</a>\n";}if($qf){echo"<script type='text/javascript'>ajaxSetHtml('".js_escape(ME)."script=db');</script>\n";}}}}page_footer();