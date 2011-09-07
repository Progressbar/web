/* Modernizr 2.0.6 (Custom Build) | MIT & BSD
 * Contains: history | input | inputtypes | iepp | cssclasses | hasevent | domprefixes | load
 */
var z=null;
window.Modernizr=function(u,f,q){
    function F(){
        i.input=function(b){
            for(var a=0,d=b.length;a<d;a++)v[b[a]]=b[a]in e;
            return v
        }("autocomplete autofocus list placeholder max min multiple pattern required step".split(" "));
        i.K=function(b){
            for(var a=0,d,g,i,j=b.length;a<j;a++)e.setAttribute("type",g=b[a]),d=e.type!=="text",d&&(e.value=A,e.style.cssText="position:absolute;visibility:hidden;",/^range$/.test(g)&&e.style.WebkitAppearance!==q?(r.appendChild(e),i=f.defaultView,d=i.getComputedStyle&&i.getComputedStyle(e,z).WebkitAppearance!== "textfield"&&e.offsetHeight!==0,r.removeChild(e)):/^(search|tel)$/.test(g)||(/^(url|email)$/.test(g)?d=e.l&&e.l()===!1:/^color$/.test(g)?(r.appendChild(e),d=e.value!=A,r.removeChild(e)):d=e.value!=A)),l[b[a]]=!!d;
            return l
        }("search tel url email datetime date month week time datetime-local number range color".split(" "))
    }
    var i={},r=f.documentElement,C=f.createElement("modernizr"),C=C.style,e=f.createElement("input"),A=":)",H="Webkit Moz O ms Khtml".split(" "),D={},l={},v={},j=[],w=function(){
        var b= {
            select:"input",
            D:"input",
            submit:"form",
            reset:"form",
            error:"img",
            load:"img",
            abort:"img"
        };

        return function(a,d){
            d=d||f.createElement(b[a]||"div");
            a="on"+a;
            var g=a in d;
            g||(d.setAttribute||(d=f.createElement("div")),d.setAttribute&&d.removeAttribute&&(d.setAttribute(a,""),g=typeof d[a]==="function",typeof d[a]===q||(d[a]=q),d.removeAttribute(a)));
            return g
        }
    }(),x,m={}.hasOwnProperty,y;
    typeof m!==q&&typeof m.call!==q?y=function(b,a){
        return m.call(b,a)
    }:y=function(b,a){
        return a in b&&typeof b.constructor.prototype[a]=== q
    };

    D.history=function(){
        return!!u.history&&!!history.pushState
    };

    for(var B in D)y(D,B)&&(x=B.toLowerCase(),i[x]=D[B](),j.push((i[x]?"":"no-")+x));i.input||F();
    C.cssText="";
    C=e=z;
    u.attachEvent&&function(){
        var b=f.createElement("div");
        b.innerHTML="<elem></elem>";
        return b.childNodes.length!==1
    }()&&function(b,a){
        function d(c){
            for(var k=-1;++k<i;)c.createElement(e[k])
        }
        b.g=b.g||{};

        var g=b.g,f=g.J||"abbr|article|aside|audio|canvas|datalist|details|figcaption|figure|footer|header|hgroup|mark|meter|nav|output|progress|section|summary|time|video", e=f.split("|"),i=e.length,j=RegExp("(^|\\s)("+f+")","gi"),l=RegExp("<(/*)("+f+")","gi"),m=/^\s*[\{\}]\s*$/,o=RegExp("(^|[^\\n]*?\\s)("+f+")([^\\n]*)({[\\n\\w\\W]*?})","gi"),c=a.createDocumentFragment(),n=a.documentElement,f=n.firstChild,t=a.createElement("body"),G=a.createElement("style"),O=/print|all/,p;
        g.e=function(c,k){
            if(c+""===q)return"";
            for(var n=-1,a=c.length,f,t=[];++n<a;)f=c[n],f.disabled||(k=f.media||k,O.test(k)&&t.push(g.e(f.imports,k),f.cssText),k="all");
            return t.join("")
        };

        g.o=function(c){
            for(var n= [],a;(a=o.exec(c))!=z;)n.push(((m.exec(a[1])?"\n":a[1])+a[2]+a[3]).replace(j,"$1.iepp_$2")+a[4]);
            return n.join("\n")
        };

        g.q=function(){
            var f=-1;
            for(p=p||a.body;++f<i;)for(var k=a.getElementsByTagName(e[f]),g=k.length,b=-1;++b<g;)k[b].className.indexOf("iepp_")<0&&(k[b].className+=" iepp_"+e[f]);
            c.appendChild(p);
            n.appendChild(t);
            t.className=p.className;
            t.id=p.id;
            t.innerHTML=p.innerHTML.replace(l,"<$1font")
        };

        g.k=function(){
            G.styleSheet.cssText=g.o(g.e(a.styleSheets,"all"));
            g.q()
        };

        g.p=function(){
            t.innerHTML= "";
            n.removeChild(t);
            n.appendChild(p)
        };

        g.j=function(){
            g.p();
            G.styleSheet.cssText=""
        };

        d(a);
        d(c);
        g.F||(f.insertBefore(G,f.firstChild),G.media="print",G.className="iepp-printshim",b.attachEvent("onbeforeprint",g.k),b.attachEvent("onafterprint",g.j))
    }(u,f);
    i.u="2.0.6";
    i.t=H;
    i.I=w;
    r.className=r.className.replace(/\bno-js\b/,"")+(" js "+j.join(" "));
    return i
}(this,this.document);
(function(u,f,q){
    function F(c){
        return x.call(c)=="[object Function]"
    }
    function i(c){
        return typeof c=="string"
    }
    function r(){
        var c=o;
        c.n={
            load:C,
            f:0
        };

        return c
    }
    function C(c,a,f){
        var b=a=="c"?N:J;
        y=0;
        a=a||"j";
        i(c)?e(b,c,a,this.f++,f):(m.splice(this.f++,0,c),m.length==1&&A());
        return this
    }
    function e(c,n,g,d,e){
        function p(){
            !k&&(!h.readyState||h.readyState=="loaded"||h.readyState=="complete")&&(E.c=k=1,!y&&l(),h.onload=h.onreadystatechange=z,j(function(){
                a.removeChild(h)
            },0))
        }
        var h=f.createElement(c),k=0, E={
            i:g,
            d:n,
            a:e
        };

        h.src=h.data=n;
        !b&&(h.style.display="none");
        h.width=h.height="0";
        c!="object"&&(h.type=g);
        h.onload=h.onreadystatechange=p;
        c=="img"?h.onerror=p:c=="script"&&(h.onerror=function(){
            E.a=E.c=1;
            A()
        });
        m.splice(d,0,E);
        a.insertBefore(h,b?z:w);
        j(function(){
            k||(a.removeChild(h),E.c=E.a=k=1,l())
        },o.b)
    }
    function A(){
        var c=m.shift();
        y=1;
        c?c.i?j(function(){
            c.i=="c"?H(c):D(c)
        },0):(c(),l()):y=0
    }
    function H(c){
        var a=f.createElement("link"),b;
        a.href=c.d;
        a.rel="stylesheet";
        a.type="text/css";
        if(!c.a&&(g|| B)){
            var d=function(a){
                j(function(){
                    if(!b)try{
                        a.sheet.cssRules.length?(b=1,l()):d(a)
                    }catch(c){
                        c.code==1E3||c.message=="security"||c.message=="denied"?(b=1,j(function(){
                            l()
                        },0)):d(a)
                    }
                },0)
            };

            d(a)
        }else a.onload=function(){
            b||(b=1,j(function(){
                l()
            },0))
        },c.a&&a.onload();
        j(function(){
            b||(b=1,l())
        },o.b);
        !c.a&&w.parentNode.insertBefore(a,w)
    }
    function D(a){
        var b=f.createElement("script"),g;
        b.src=a.d;
        b.onreadystatechange=b.onload=function(){
            !g&&(!b.readyState||b.readyState=="loaded"||b.readyState=="complete")&& (g=1,l(),b.onload=b.onreadystatechange=z)
        };

        j(function(){
            g||(g=1,l())
        },o.b);
        a.a?b.onload():w.parentNode.insertBefore(b,w)
    }
    function l(){
        for(var a=1,b=-1;m.length-++b;)if(m[b].d&&!(a=m[b].c))break;a&&A()
    }
    var v=f.documentElement,j=u.setTimeout,w=f.getElementsByTagName("script")[0],x={}.toString,m=[],y=0,B="MozAppearance"in v.style,b=B&&!!f.createRange().compareNode,a=b?v:w.parentNode,d=u.opera&&x.call(u.opera)=="[object Opera]",g="webkitAppearance"in v.style,v=g&&"async"in f.createElement("script"),J= B?"object":d||v?"img":"script",N=g?"img":J,K=Array.isArray||function(a){
        return x.call(a)=="[object Array]"
    },I=[],L={},M,o;
    o=function(a){
        function b(a,c){
            function g(a){
                if(i(a))f(a,h,c,0,d);
                else if(Object(a)===a)for(j in a)a.hasOwnProperty(j)&&f(a[j],h,c,j,d)
            }
            var d=!!a.test,e=a.load||a.A,h=a.C,j;
            g(d?a.O:a.M);
            g(e);
            a.complete&&c.load(a.complete)
        }
        function f(a,b,c,d,e){
            var h=g(a),i=h.z;
            h.B||(b&&(b=F(b)?b:b[a]||b[d]||b[a.split("/").pop().split("?")[0]]),h.m?h.m(a,b,c,d,e):(c.load(h.url,h.G||!h.H&&/css$/.test(h.url)? "c":q,h.L),(F(b)||F(i))&&c.load(function(){
                r();
                b&&b(h.h,e,d);
                i&&i(h.h,e,d)
            })))
        }
        function g(a){
            var a=a.split("!"),b=I.length,c=a.pop(),f=a.length,c={
                url:c,
                h:c,
                N:a
            },d,e;
            for(e=0;e<f;e++)d=L[a[e]],d&&(c=d(c));
            for(e=0;e<b;e++)c=I[e](c);
            return c
        }
        var d,e,h=this.r.n;
        if(i(a))f(a,0,h,0);
        else if(K(a))for(d=0;d<a.length;d++)e=a[d],i(e)?f(e,0,h,0):K(e)?o(e):Object(e)===e&&b(e,h);else Object(a)===a&&b(a,h)
    };

    o.w=function(a,b){
        L[a]=b
    };

    o.v=function(a){
        I.push(a)
    };

    o.b=1E4;
    f.readyState==z&&f.addEventListener&&(f.readyState= "loading",f.addEventListener("DOMContentLoaded",M=function(){
        f.removeEventListener("DOMContentLoaded",M,0);
        f.readyState="complete"
    },0));
    u.r=r()
})(this,this.document);
Modernizr.load=function(){
    yepnope.apply(window,[].slice.call(arguments,0))
};

$(function() {
    var body = $(document.body);
    body.removeClass('no-js');

    if (typeof (Modernizr) !== 'undefined'
        && typeof (Modernizr.input) !== 'undefined'
        && Modernizr.input.placeholder)
        {
        body.addClass('placeholder');
    }

    if ($('#promo').length > 0) {
        var promo = $('#promo'),
        promo_cnt = $('#promo-content'),
        promo_nav = $('#promo-nav'),
        promo_items = promo.find('.promo-item'),
        promo_active_item = null,
        promo_auto_animate = true,
        promo_timer = null,
        loc_hash = document.location.hash;

        if (promo.find(loc_hash).length === 0) {
            function promoAnimate() {
                promo_items.each(function () {
                    var elm = $(this),
                    elm_anchor = promo_nav.find('a[href|="#' + this.id + '"]');

                    if (this.id != promo_active_item.id) {
                        elm.removeClass('active');
                        elm_anchor.removeClass('active');
                        elm.fadeTo('normal', 0.3);
                    } else {
                        elm.addClass('active');
                        elm_anchor.addClass('active');
                        elm.fadeTo('normal', 1);
                    }
                });
            }

            promo_nav.delegate('a', 'mouseover', function () {
                clearTimeout(promo_timer);
                promo_auto_animate = false;
                promo_active_item = $($(this).attr('href')).get(0);
                promoAnimate();
            });

            function promoAnimateTimer () {
                promo_timer = setTimeout(function () {
                    if (promo_auto_animate && promo_active_item !== promo_items.last()) {
                        var active_index = promo_active_item ? promo_items.index(promo_active_item) : -1;
                        promo_active_item = promo_items.get(active_index + 1);

                        if (promo_active_item) {
                            promoAnimate();
                            promoAnimateTimer();
                        } else {
                            clearTimeout(promo_timer);
                            promo_auto_animate = false;
                        }
                    } else {
                        clearTimeout(promo_timer);
                        promo_auto_animate = false;
                    }
                }, promo_active_item ? 4000 : 100);

                return false;
            }

            promoAnimateTimer();
        }
    }

    $('a.scroll').bind('click', function () {
        var a = $(this),
        scroll_to = $(a.attr('href'));
        if (scroll_to.length > 0) {
            $.scrollTo(scroll_to, 1000);
        }

        return false;
    });


    var tabs = $('.tabs');
    if(tabs.length > 0) {
        tabs.tabs({
            cache: true,

            ajaxOptions: {
                data : {
                    'ajax_tab' : 1
                },
                error: function( xhr, status, index, anchor ) {
                    $( anchor.hash ).html(
                        "Couldn't load this tab. We'll try to fix this as soon as possible."
                        );
                }
            }
        });
    }

    $('a.lightbox').fancybox({
        'titlePosition': 'inside'
    });

    $("#feedback-btn").bind('click', function () {
        $.fancybox(
            '<iframe src="https://spreadsheets.google.com/spreadsheet/embeddedform?formkey=dHBPbTMwOHBvMzZVLVEzM09wanh0WEE6MQ" width="640" height="570" frameborder="0" marginheight="0" marginwidth="0">Loading...</iframe>'
            );
        return false;
    });

    var evil_libs_loaded = false;

    $("#share-btn").bind('click', function () {
        if ($('#share').length == 0) {
            $('<div style="display:none;"><div id="share">' +
                '<span class="share-btn"><g:plusone size="tall"></g:plusone></span>' +
                '<span class="share-btn"><a href="http://twitter.com/share" class="twitter-share-button" data-count="vertical" data-via="progressbarsk">Tweet</a></span>' +
                '<span class="share-btn"><script type="IN/Share" data-counter="top"></script></span>' +
                '<span class="share-btn"><fb:like href="" send="false" layout="box_count" width="60" height="64" show_faces="false" action="like" font="arial"></fb:like></span>' +
                '<p style="padding-left: 8px; padding-top: 8px;">Ďakujeme, že o nás dávate vedieť. <br />Thank you gave to know about us.</p>' +
                '</div></div>').appendTo(body);
        }
        $.fancybox(
            $('#share').html(),
            {
                'autoDimensions' : false,
                'width'          : 350,
                'height'         : 150
            }
            );

        if (!evil_libs_loaded) {
            var p = this.parentNode,
            s = null;
            var libs = [
            'http://platform.twitter.com/widgets.js',
            'http://platform.linkedin.com/in.js',
            'http://connect.facebook.net/en_US/all.js#xfbml=1',
            'https://apis.google.com/js/plusone.js'
            ];

            while (libs.length) {
                s = document.createElement('script');
                s.type = 'text/javascript';
                s.async = true;
                s.src = libs.shift();

                p.appendChild(s);
            }
            evil_libs_loaded = true;
        }

        return false;
    });


    $('a.todo').bind('click',
        function () {
            $.fancybox(
                '<h2>TODO</h2><p>Obsah tejto stránky čaká na teba. ;-)<br />' +
                '<a href="https://github.com/Progressbar/web">Prejsť na Github</a><br />' +
                '<span class="note">Content for this section is not currently available.</span>' +
                '</p>',
                {
                    'autoDimensions' : false,
                    'width'          : 350,
                    'height'         : 'auto'
                }
                );
            return false;
        });

    $('#order a').not('.todo').fancybox();

    var kCalendar = function () {
        var kCalendar = {
            datepicker : '',
            dialog : '',
            current_date : '',
            initialized : false,
            firstDay : 1,
            data : [],

            year : 0,

            onChangeMonthYear : function (year, month, inst) {
                if (year != inst.settings.year) {
                    inst.settings.year = year;
                    inst.settings.loadData();
                }
            },

            beforeShowDay : function (date) { },

            onSelect: function(dateText, inst) {
                var date = new Date(dateText);
                var tmp_key = date.getDate().toString() + date.getMonth().toString() + date.getFullYear().toString();
                var dialog = inst.settings.dialog;
                var picker = inst.settings.datepicker;
                var body = '';

                var picker_pos = picker.offset();
                var dialog_pos = [picker_pos.left - picker.width() - 15, picker_pos.top - $(window).scrollTop()];
                if (inst.settings.data[tmp_key]) {
                    var tmp_arr = inst.settings.data[tmp_key];
                    // @todo sanitize for xss
                    for (i = 0; i < tmp_arr.length; i++) {
                        var ev = tmp_arr[i];
                        body += '<a href="/events/' + ev.id + '">' + ev.title + '</a><br />';
                    }
                }
                
                dialog.html(body);
                
                dialog.dialog(
                {
                    'draggable' : true,
                    'resizable' : false,
                    'position' : dialog_pos,
                    'title' : 'Program: ' + dateText
                }
                );
            },

            initPicker : function () {
                var that = this;
                
                this.datepicker.datepicker(this);
            },

            loadData : function () {
                var that = this;

                $.ajax({
                    url: '/events/archive/2011/9',
                    dataType: 'json',
                    type: 'GET',
                    success: function (response) {
                        if (response) {
                            var data = {},
                            tmp_key = null,
                            tmp_date = null;
                            try  {

                                for (i = 0; i < response.length; i++) {
                                    tmp_date = new Date(response[i]['event']['start_at']);
                                    tmp_key = tmp_date.getDate().toString() + tmp_date.getMonth().toString() + tmp_date.getFullYear().toString();
                                    data[tmp_key] =  data[tmp_key] || [];
                                    data[tmp_key].push(response[i]['event']);
                                    tmp_date = new Date(response[i]['event']['end_at']);
                                    tmp_key = tmp_date.getDate().toString() + tmp_date.getMonth().toString() + tmp_date.getFullYear().toString();
                                    data[tmp_key] =  data[tmp_key] || [];
                                    if (data[tmp_key].indexOf(response[i]['event']) === -1) {
                                        data[tmp_key].push(response[i]['event']);
                                    }
                                }
                            
                            } catch (err) {
                                console.log(err);
                            }
                            
                            that.data = data;
                                                        
                            that.initPicker();
                        }
                        return false;
                    }
                });
            },

            init: function() {
                var holder = $('.sidebar_module').parent();
                var that = this;
                
                this.datepicker = $('<div id="jquery-ui-calendar" />').prependTo(holder);
                this.dialog = $('<div id="jquery-ui-calendar-dialog" style="display:none;text-align: left;" />').prependTo(holder);

                this.datepicker.dialog = this.dialog;
                
                this.current_date = new Date();
                this.year = this.current_date.getFullYear();

                this.beforeShowDay = function (date) {
                    var cls = '',
                        rt = true,
                        tmp_key = date.getDate().toString() + date.getMonth().toString() + date.getFullYear().toString();

                    if ( that.data[tmp_key] ) {
                        cls += ' ui-datepicker-event';
                    }

                    if (date < that.current_date) {
                        cls += ' ui-datepicker-past';
                    }
                    
                    return [rt, $.trim(cls)];
                }
                
                this.loadData();
                return this;
            }
        }

        return kCalendar.init();
    };

    var myCalendar = kCalendar();
});