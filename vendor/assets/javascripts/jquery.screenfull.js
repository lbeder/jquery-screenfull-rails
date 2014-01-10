//= require screenfull

(function($) {
    $.isFullScreenEnabled = function() {
        return screenfull.enabled;
    };

    $.extend($.fn, {
        fullScreen: function() {
            return this.each(function() {
                $(this).on('click', function() {
                    if ($.isFullScreenEnabled()) {
                        screenfull.toggle(this);
                    }
                }).on(screenfull.raw.fullscreenchange, function() {
                    var $el = $(this);
                    if (screenfull.isFullscreen) {
                        $el.trigger('fullscreen:enter');
                    } else {
                        $el.trigger('fullscreen:exit');
                    }
                });
            });
        },
    });
})(jQuery);
