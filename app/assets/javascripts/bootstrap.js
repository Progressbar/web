$(function() {
    if (!Modernizr.input.placeholder) {
        $('html').addClass('no-placeholder');
    }

    if (typeof $.scrollTo === 'function') {
        $('a.scroll').bind('click', function () {
            var a = $(this),
            scroll_to = $(a.attr('href'));
            if (scroll_to.length > 0) {
                $.scrollTo(scroll_to, 1000);
            }

            return false;
        });
    }

    if (typeof $.fancybox === 'function') {
        $('a.lightbox').fancybox({
            'titlePosition': 'inside'
        });
    }

});