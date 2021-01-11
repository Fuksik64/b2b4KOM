function associatedProductRestartSlider() {
  associatedProductRestartSlider.prototype.section = document.querySelector(
    "#products_associated_zone2"
  );
  associatedProductRestartSlider.prototype.sectionProducts = null;

  associatedProductRestartSlider.prototype.mutationFunction = (
    mutationsList,
    observer
  ) => {
    for (const mutation of mutationsList) {
      if (mutation.type == "attributes") {
        while (this.sectionProducts == null) {
          this.sectionProducts = this.section.querySelector(".products");
        }
        if (!this.sectionProducts.classList.contains("custom-init")) {
          this.sectionProducts = this.section.querySelector(".products");
          this.init();
        }
      }
    }
  };
  associatedProductRestartSlider.prototype.observer = new MutationObserver(
    this.mutationFunction
  );

  associatedProductRestartSlider.prototype.init = () => {
    $("#products_associated_zone2 .products").slick("unslick");
    $("#products_associated_zone2 .products").slick({
      slidesToShow: 4,
      arrows: true,
      slidesToScroll: 1,
      asNavFor: ".slider-for",
      dots: false,
      infinite: true,
      focusOnSelect: true,
      draggable: true,
      centerMode: true,
      prevArrow: '<button type="button" class="slick-prev"></button>',
      nextArrow: '<button type="button" class="slick-next"></button>',
      responsive: [
        {
          breakpoint: 978,
          settings: {
            slidesToShow: 2,
          },
        },
        {
          breakpoint: 500,
          settings: {
            slidesToShow: 1,
          },
        },
      ],
    });
    if (this.sectionProducts != null) {
      this.sectionProducts.classList.add("custom-init");
      // this.observer.disconnect();
    }
  };
  this.observer.observe(this.section, {
    attributes: true,
    childList: true,
    subtree: true,
  });
}
const restartSlider = new associatedProductRestartSlider();
