$(".actual-slider").slick({
  prevArrow:
    '<button type="button" class="slick-prev slick-custom-prev"></button>',
  nextArrow:
    '<button type="button" class="slick-next  slick-custom-next"></button>',
  arrows: true,
  infinte: true,
  dots: false,
  slidesToShow: 4,
  slidesToScroll: 1,
  responsive: [
    { breakpoint: 978, settings: { slidesToShow: 3, slidesToScroll: 1 } },
    { breakpoint: 650, settings: { slidesToShow: 2, slidesToScroll: 1 } },
  ],
});

$(".producents-main-slider").slick({
  prevArrow:
    '<button type="button" class="slick-prev slick-custom-prev"></button>',
  nextArrow:
    '<button type="button" class="slick-next  slick-custom-next"></button>',
  autoplay: true,
  autoplaySpeed: 1000,
  arrows: true,
  infinte: true,
  dots: false,
  slidesToShow: 8,
  slidesToScroll: 1,
  responsive: [
    { breakpoint: 1199, settings: { slidesToShow: 6, slidesToScroll: 1 } },
    { breakpoint: 978, settings: { slidesToShow: 4, slidesToScroll: 1 } },
    { breakpoint: 650, settings: { slidesToShow: 2, slidesToScroll: 1 } },
  ],
});
