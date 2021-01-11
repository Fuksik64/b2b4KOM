function countMinHeightProduct() {
  let products = Array.from(document.querySelectorAll(".custom-associated"));
  let height = 0;
  let timeout;
  console.log(products);
  return {
    countHeight: () => {
      if (products != null) {
        products.forEach((product) => {
          if (
            product.clientHeight > height
            // product.querySelector("img").classList.contains("b-loaded")
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
// setTimeout(() => {
//   const countHeightCategories = countMinHeightProduct();
//   countHeightCategories.countHeight();
// }, 2000);
document.addEventListener("DOMContentLoaded", () => {
  setTimeout(() => {
    const countHeightCategories = countMinHeightProduct();
    countHeightCategories.countHeight();
  }, 1200);
});
// window.addEventListener("resize", countHeightCategories.countHeight);
