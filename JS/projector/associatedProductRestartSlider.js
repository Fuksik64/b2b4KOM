function associatedProductRestartSlider() {
  let section = document.querySelector("#products_associated_zone2");
  let sectionProducts = null;
  const observer = new MutationObserver(mutationFunction);

  observer.observe(section, {
    attributes: true,
    childList: false,
    subtree: false,
  });
  function mutationFunction(mutationsList, observer) {
    for (const mutation of mutationsList) {
      if (mutation.type == "attributes") {
        while (sectionProducts == null) {
          sectionProducts = section.querySelector(".products");
        }
        if (!sectionProducts.classList.contains("custom-init")) {
          sectionProducts = section.querySelector(".products");
          init();
        }
      }
    }
  }
  function init() {
    observer.disconnect();
    $("#products_associated_zone2 .products").slick({
      slidesToShow: 5,
      arrows: true,
      slidesToScroll: 1,
      asNavFor: ".slider-for",
      dots: false,
      infinite: true,
      focusOnSelect: true,
      draggable: false,
      centerMode: false,
      prevArrow: '<button type="button" class="slick-prev"></button>',
      nextArrow: '<button type="button" class="slick-next"></button>',
      responsive: [
        {
          breakpoint: 1199,
          settings: {
            slidesToShow: 4,
          },
        },
        {
          breakpoint: 585,
          settings: {
            slidesToShow: 2,
          },
        },
      ],
    });
  }
}

const restartSlider = associatedProductRestartSlider();
