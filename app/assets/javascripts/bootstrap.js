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
   if (!Modernizr.input.placeholder) {
        $('html').addClass('no-placeholder');
    }

    $('a.scroll').bind('click', function () {
        var a = $(this),
        scroll_to = $(a.attr('href'));
        if (scroll_to.length > 0) {
            $.scrollTo(scroll_to, 1000);
        }

        return false;
    });

    $('a.lightbox').fancybox({
        'titlePosition': 'inside'
    });

    var myCalendar = kCalendar($('#jquery-ui-calendar-holder'));
});