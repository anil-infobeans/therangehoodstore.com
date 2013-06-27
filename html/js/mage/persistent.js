function toggleRememberMepopup(event){
    if($('remember-me-popup')){
        var viewportHeight = document.viewport.getHeight(),
            docHeight      = $$('body')[0].getHeight(),
            height         = docHeight > viewportHeight ? docHeight : viewportHeight;
        $('remember-me-popup').toggle();
        $('window-overlay').setStyle({ height: height + 'px' }).toggle();
    }
    Event.stop(event);
}

document.observe("dom:loaded", function() {
    new Insertion.Bottom($$('body')[0], $('window-overlay'));
    new Insertion.Bottom($$('body')[0], $('remember-me-popup'));

    $$('.remember-me-popup-close').each(function(element){
        Event.observe(element, 'click', toggleRememberMepopup);
    })
    $$('#remember-me-box a').each(function(element) {
        Event.observe(element, 'click', toggleRememberMepopup);
    });
});