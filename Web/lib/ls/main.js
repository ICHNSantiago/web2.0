(function ($) {
    "use strict";

    // Spinner
    var spinner = function () {
        setTimeout(function () {
            if ($('#spinner').length > 0) {
                $('#spinner').removeClass('show');
            }
        }, 1);
    };
    spinner(0);
    
    
    // Initiate the wowjs
    new WOW().init();
    

    // Sticky Navbar
    $(window).scroll(function () {
        if ($(this).scrollTop() > 45) {
            $('.nav-bar').addClass('sticky-top shadow-sm').css('top', '0px');
        } else {
            $('.nav-bar').removeClass('sticky-top shadow-sm').css('top', '-100px');
        }
    });


    // Header carousel
    $(".header-carousel").owlCarousel({
        animateOut: 'fadeOut',
        items: 1,
        margin: 0,
        stagePadding: 0,
        autoHeight: true,  
        autoplay: true,
        smartSpeed: 800,
        dots: true,
        loop: true,
        nav : false,
        navText: [
            '<i class="bi bi-arrow-right"></i>',
            '<i class="bi bi-arrow-left"></i>'
           
        ],
    });



    // testimonial carousel
    $(".testimonial-carousel").owlCarousel({
        animateOut: 'fadeOut',
        items: 5,
        margin: 0,
        stagePadding: 0,
        autoplay: true,
        autoHeight: true,
        smartSpeed: 100,
        dots: true,
        loop: true,
        nav: false,
        navText: [
            '<i class="bi bi-arrow-right"></i>',
            '<i class="bi bi-arrow-left"></i>'

        ],
    });

    // testimonial carousel
    $(".adultos-carousel").owlCarousel({
        animateOut: 'fadeOut',
        items: 7,
        margin: 0,
        stagePadding: 0,
        margin: 10,
        autoplay: true,
        autoHeight: true,      
        smartSpeed: 100,
        dots: true,
        loop: true,
        nav: false,
        navText: [
            '<i class="bi bi-arrow-right"></i>',
            '<i class="bi bi-arrow-left"></i>'

        ],
    });

    // testimonial carousel
    $(".american-carousel").owlCarousel({
        animateOut: 'fadeOut',
        items: 1,
        margin: 0,
        stagePadding: 0,
        autoHeight: true,
        autoplay: true,
        smartSpeed: 800,
        loop: true,         
      
    });

    // testimonial carousel
    $(".index-carousel").owlCarousel({
        items: 6,
        loop: true,
        margin: 10,
        autoplay: true,           
        autoplayHoverPause: true
    });


    // Facts counter
    $('[data-toggle="counter-up"]').counterUp({
        delay: 5,
        time: 2000
    });


   // Back to top button
   $(window).scroll(function () {
    if ($(this).scrollTop() > 300) {
        $('.back-to-top').fadeIn('slow');
    } else {
        $('.back-to-top').fadeOut('slow');
    }
    });
    $('.back-to-top').click(function () {
        $('html, body').animate({scrollTop: 0}, 10, 'easeInOutExpo');
        return false;
    });


})(jQuery);

