function countMinHeightProduct() {
  let products = Array.from(document.querySelectorAll(".custom-associated"));
  let height = 0;
  let timeout;
  return {
    countHeight: () => {
      if (products != null) {
        products.forEach((product) => {
          if (product.clientHeight > height) {
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

document.addEventListener("DOMContentLoaded", () => {
  setTimeout(() => {
    const countHeightCategories = countMinHeightProduct();
    countHeightCategories.countHeight();
  }, 1200);
});
