function countMinHeightProduct() {
  let products;
  let height = 0;
  let imgHeight = 0;
  let textHeight = 0;
  return {
    countMax() {
      products = Array.from(document.querySelectorAll(".featured-ul li "));
      if (products != null) {
        products.forEach((item) => {
          if (item.clientHeight > height) height = item.clientHeight;
          if (item.querySelector("img").clientHeight > imgHeight)
            imgHeight = item.querySelector("img").clientHeight;
          if (item.querySelector("span.name").clientHeight > textHeight)
            textHeight = item.querySelector("span.name").clientHeight;
        });
      }
    },
    
    setHeight() {
      if (products != null) {
        products.forEach((item) => {
          item.style.minHeight = height + "px";
          item.querySelector("img").style.minHeight = imgHeight + "px";
          item.querySelector("span.name").style.minHeight = textHeight + "px";
        });
      }
    },
  };
}

let countHeight;
document.addEventListener("DOMContentLoaded", () => {
  setTimeout(() => {
    countHeight = new countMinHeightProduct();

    countHeight.countMax();
    countHeight.setHeight();
  }, 1000);
});

window.addEventListener("resize", () => {
  countHeight.countMax();
  countHeight.setHeight();
});
