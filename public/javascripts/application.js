$.strPad = function(i,l,s) {
    var o = i.toString();
    if (!s) {
        s = '0';
    }
    while (o.length < l) {
        o = s + o;
    }
    return o;
};

Date.prototype.getDayOfYear = function() {
    return Math.ceil((this - new Date(this.getFullYear(),0,1)) / 86400000);
} 

$(function() {
    var body = $(document.body);
    body.removeClass('no-js');

    if (Modernizr.input.placeholder) {
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
                }, promo_active_item ? 4000 : 10);

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

    var kCalendar = function (holder) {
        var calendar_data = 'test';
            
        var kCalendar = {
            datepicker : '',
            dialog : '',
            active : null,
            current_date : '',
            initialized : false,
            firstDay : 1,
            data : [],
            year : 2011,
            month : 1,
            defaultDate : null,

            onChangeMonthYear : function (year, month, inst) {
                inst.settings.year = year;
                inst.settings.month = month;
                inst.settings.datepicker.datepicker('destroy');
                inst.settings.initialized = false;
                inst.settings.defaultDate = new Date(year, month -1);
                inst.settings.loadData(year, month);
            },

            beforeShowDay : function (date) { },

            onSelect: function(dateText, inst) {
                var date = new Date(dateText);
                var tmp_key = date.getDate().toString() + date.getMonth().toString() + date.getFullYear().toString();
                var calendar = inst.settings,
                dialog = calendar.dialog,
                picker = calendar.datepicker,
                day = null,
                picker_pos = picker.offset(),
                dialog_pos = [picker_pos.left - picker.width() - 15, picker_pos.top - $(window).scrollTop()],
                body = '';
                
                if (calendar_data[tmp_key]) {
                    day = calendar_data[tmp_key];
                    dialog.html('');
                    for (i = 0; i < day.length; i++) {
                        var ev = day[i];
                        var ev_start = new Date(ev.start_at);
                        var ev_end = new Date(ev.end_at);

                        // ;( sad json format date - possible future problems
                        ev_start = new Date(ev_start.getFullYear(), ev_start.getMonth(), ev_start.getDate(), ev_start.getHours() - 2, ev_start.getMinutes());
                        ev_end = new Date(ev_end.getFullYear(), ev_end.getMonth(), ev_end.getDate(), ev_end.getHours() - 2, ev_end.getMinutes());

                        var holder = $('<div style="clear:both;">').appendTo(dialog);

                        $('<a>', {
                            'href' : '/events/' + ev.id,
                            'class' : 'float-left',
                            'text' : ev.title.length > 25 ? $.trim(ev.title.substring(0, 25)) + '..' : ev.title
                        }).appendTo(holder);

                        $('<span>', {
                            'class' : 'float-right',
                            'text' : ev_start.getHours() + ':' + $.strPad(ev_start.getMinutes(), 2, 0) + ' - ' + ev_end.getHours() + ':' + $.strPad(ev_end.getMinutes(), 2, 0)
                        }).appendTo(holder);
                    }
                }

                if (calendar.active === dateText) {
                    dialog.dialog('close');
                    calendar.active = null;
                } else {

                    dialog.dialog({
                        'id' : 2,
                        'draggable' : true,
                        'resizable' : false,
                        'position' : dialog_pos,
                        'title' : 'Program: ' + date.toDateString()
                    });
                    calendar.active = dateText;
                }
            },

            initPicker : function () {
                var that = this;

                this.datepicker.datepicker(this);
            },

            loadData : function (year, month) {
                var that = this;
                
                $.ajax({
                    url: '/events/archive/' + year + '/' + month,
                    dataType: 'json',
                    type: 'GET',
                    success: function (response) {
                        if (response) {
                            var data = {},
                            tmp_start_date = null,
                            tmp_end_date = null,
                            tmp_key = null,
                            tmp_date = null;
                            try  {
                                for (i = 0; i < response.length; i++) {
                                    tmp_start_date = new Date(response[i]['event']['start_at']);
                                    tmp_end_date = new Date(response[i]['event']['end_at']);
                                    
                                    var diff_days = tmp_end_date.getDayOfYear() - tmp_start_date.getDayOfYear();
                                    
                                    for (var j = 0; j <= diff_days;j++) {
                                        tmp_date = new Date(tmp_start_date.getFullYear(), tmp_start_date.getMonth(), tmp_start_date.getDate() + j);
                                        tmp_key = tmp_date.getDate().toString() + tmp_date.getMonth().toString() + tmp_date.getFullYear().toString();
                                        data[tmp_key] =  data[tmp_key] || [];
                                        if (data[tmp_key].indexOf(response[i]['event']) === -1) {
                                            data[tmp_key].push(response[i]['event']);
                                        }
                                    }
                                }

                                calendar_data = data;

                                if (!that.initialized) {
                                    that.initialized = true;
                                    that.initPicker();
                                }
                            } catch (err) {
                                if (!!console) {
                                    console.log(err);                                    
                                }
                            }
                        }
                    }
                });
            },
            
            

            init: function(holder) {
                var that = this;

                this.datepicker = $('<div id="jquery-ui-calendar" />').prependTo(holder);
                this.dialog = $('<div id="jquery-ui-calendar-dialog" style="display:none;text-align: left;" />').prependTo(holder);
                //
                this.datepicker.dialog = this.dialog;

                this.current_date = new Date();
                this.year = this.current_date.getFullYear();
                this.month = this.current_date.getMonth() + 1;
                this.defaultDate = this.current_date;

                this.beforeShowDay = function (date) {
                    var cls = '',
                    rt = false,
                    tmp_key = date.getDate().toString() + date.getMonth().toString() + date.getFullYear().toString();

                    if ( calendar_data[tmp_key] ) {
                        cls += ' ui-datepicker-event';
                        rt = true;
                    }

                    if (date < that.current_date) {
                        cls += ' ui-datepicker-past';
                    }

                    return [rt, $.trim(cls)];
                }

                this.loadData(this.year, this.month );
                
                return this;
            }
        }
        
        if (holder.length > 0) {
            return kCalendar.init(holder);
        }
        
        return false
    };  

    var myCalendar = kCalendar($('#jquery-ui-calendar-holder'));
});