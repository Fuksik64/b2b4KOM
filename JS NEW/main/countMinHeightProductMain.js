function countMinHeightProduct() {
  let products;
  let height = 0;
  let imgHeight = 0;
  let textHeight = 0;
  let hotspotArray;
  let observer;

  function countMax() {
    products = Array.from(document.querySelectorAll(".product"));
    if (products != null) {
      products.forEach((item) => {
        if (item.clientHeight > height) height = item.clientHeight;
        if (item.querySelector("img").clientHeight > imgHeight)
          imgHeight = item.querySelector("img").clientHeight;
        if (item.querySelector("h3").clientHeight > textHeight)
          textHeight = item.querySelector("h3").clientHeight;
      });
    }
  }
  function setHeight() {
    if (products != null) {
      products.forEach((item) => {
        item.style.minHeight = height + "px";
        item.querySelector("img").style.minHeight = imgHeight + "px";
        item.querySelector("h3").style.minHeight = textHeight + "px";
      });
    }
  }
  return {
    init() {
      observer = new MutationObserver(this.mutationCallback);
      observer.observe(document.querySelector("#content"), {
        subtree: true,
        childList: true,
        attributes: true,
      });
    },
    mutationCallback(mutationList, observer) {
      hotspotArray = document.querySelectorAll(".hotspot.--slider");

      if (hotspotArray.length == 2) {
        observer.disconnect();

        let selector = "#" + hotspotArray[1].id + " .products";
        document.querySelector(selector).classList.add("multiple-rows-slider");
        $(selector).slick("unslick");
        $(selector).slick({
          prevArrow:
            '<button type="button" class="slick-prev slick-custom-prev"></button>',
          nextArrow:
            '<button type="button" class="slick-next  slick-custom-next"></button>',
          rows: 2,
          arrows: true,
          infinite: true,
          dots: false,
          slidesToShow: 4,
          slidesToScroll: 4,
          responsive: [
            {
              breakpoint: 978,
              settings: { slidesToShow: 3, slidesToScroll: 3 },
            },
            {
              breakpoint: 650,
              settings: { slidesToShow: 2, slidesToScroll: 2 },
            },
          ],
        });

        countMax();
        setHeight();
      }
    },
    countMax,
    setHeight,
  };
}

let countHeight = countMinHeightProduct();
document.addEventListener("DOMContentLoaded", () => {
  countHeight.init();
});

// window.addEventListener("resize", () => {
//   countHeight.countMax();
//   countHeight.setHeight();
// });
