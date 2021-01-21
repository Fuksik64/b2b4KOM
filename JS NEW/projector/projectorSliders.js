function projectorSliders() {
  let count = document.querySelectorAll(".photos__figure.--nav").length;
  let howManySlides;

  return {
    init() {
      count > 5 ? (howManySlides = 5) : (howManySlides = count);
      console.log("haba");
      $(".slick-slider").not(".slick-initialized").slick({
        slidesToShow: 1,
        slidesToScroll: 1,
        asNavFor: ".slider-nav",
        dots: false,
        centerMode: false,
        focusOnSelect: true,
        dots: false,
        fade: false,
      });
      $(".slider-nav").slick({
        slidesToShow: howManySlides,
        slidesToScroll: 1,
        arrows: true,
        dots: false,
        fade: false,
        centerMode: false,
        prevArrow:
          '<button type="button" class="slick-prev slick-custom-prev"></button>',
        nextArrow:
          '<button type="button" class="slick-next slick-custom-next"></button>',
        asNavFor: ".slick-slider",
        responsive: [
          {
            breakpoint: 1199,
            settings: {
              slidesToShow: 4,
              slidesToScroll: 1,
            },
          },
          {
            breakpoint: 585,
            settings: {
              slidesToShow: 3,
              slidesToScroll: 1,
            },
          },
        ],
      });
    },
  };
}
const sliders = projectorSliders().init();
