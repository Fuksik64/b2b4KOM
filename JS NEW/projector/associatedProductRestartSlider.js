function associatedProductRestartSlider() {
  let section = document.querySelector("#products_associated_zone2");
  let sectionProducts = null;
  const observer = new MutationObserver(mutationFunction);
  let height = 0;
  let products;

  function countHeight() {
    products = Array.from(document.querySelectorAll(".custom-associated"));
    if (products != null) {
      products.forEach((product) => {
        product.style.minHeight = "";
        product.style.height = "";
        if (product.clientHeight > height) {
          height = product.clientHeight;
        }
      });
      products.forEach((product) => {
        product.style.minHeight = height + "px";
        product.style.height = height + "px";
      });
    }
  }
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
          countHeight();
        }
      }
    }
  }
  function init() {
    $("#products_associated_zone2 .products").slick({
      slidesToShow: 4,
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
          init: countHeight(),
          breakpoint: 978,
          settings: {
            slidesToShow: 3,
          },
        },
        {
          init: countHeight(),
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
