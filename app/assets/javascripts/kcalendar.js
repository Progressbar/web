var kCalendar = function (holder) {
    var calendar_data = [];

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
                    var holder = $('<div style="clear:both;">').appendTo(dialog);

                    $('<a>', {
                        'href' : '/events/' + ev.id,
                        'class' : 'float-left',
                        'text' : ev.title.length > 25 ? $.trim(ev.title.substring(0, 25)) + '..' : ev.title
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
                        diff_days,
                        tmp_start_date,
                        tmp_end_date,
                        tmp_key,
                        tmp_date;

                        try  {
                            for (i = 0; i < response.length; i++) {
                                tmp_start_date = new Date(response[i]['event']['start_at']);
                                response[i]['event']['start_at'] = tmp_start_date;
                                tmp_end_date = new Date(response[i]['event']['end_at']);
                                response[i]['event']['end_at'] = tmp_end_date;

                                diff_days = tmp_end_date.getDayOfYear() - tmp_start_date.getDayOfYear();

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

    return holder.length > 0 ? kCalendar.init(holder) : false;
};
