function countMinHeightProduct() {
  let products = Array.from(document.querySelectorAll(".product-icon-custom"));
  let height = 0;

  return {
    countHeight: () => {
      if (products != null) {
        products.forEach((product) => {
          if (
            product.clientHeight > height &&
            product.querySelector("img").classList.contains("b-loaded")
          ) {
            height = product.clientHeight;
          }
        });
        products.forEach((product) => {
          product.style.minHeight = height + "px";
          product.style.height = height + "px";
        });
      }
    },
  };
}
const countHeightCategories = countMinHeightProduct();
document.addEventListener("DOMContentLoaded", () => {
  setTimeout(() => {
    countHeightCategories.countHeight();
  }, 450);
});
// window.addEventListener("resize", countHeightCategories.countHeight);
