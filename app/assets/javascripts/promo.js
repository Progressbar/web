$(function() {
    var promo = $('#promo'),
        promo_cnt = $('#promo-content'),
        promo_nav = $('#promo-nav'),
        promo_items = [], promo_active_item = null, promo_auto_animate = true, promo_timer = null;

    if (promo.length > 0) {
        promo_items = promo.find('.promo-item');

        promo_nav.delegate('a', 'click', function () {
            clearTimeout(promo_timer);
            promo_auto_animate = false;
            promo_active_item = $($(this).attr('href')).get(0);
            promoAnimate();
            return false;
        });

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
                    elm.fadeTo('fast', 1);
                }
            });
        }

        function promoAnimateTimer () {
            var last_item = promo_items.last();
            promo_timer = setTimeout(function () {
                if (promo_auto_animate && promo_active_item !== last_item) {
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

});