function countMinHeightProduct() {
  this.products = Array.from(document.querySelectorAll(".featured-ul li a"));
  this.height = 0;
  this.imgHeight = 0;
  this.countHeight = () => {
    if (this.products != null) {
      this.products.forEach((product) => {
        if (
          product.clientHeight > this.height &&
          product.querySelector("img").classList.contains("b-loaded")
        ) {
          this.height = product.clientHeight;
        }
      });

      this.products.forEach((product) => {
        if (product.querySelector("img").clientHeight > this.imgHeight) {
          this.imgHeight = product.clientHeight;
        }
      });

      this.products.forEach((product) => {
        product.style.minHeight = this.height + "px";
      });
      // this.products.forEach((product) => {
      //   product.querySelector("img").style.minHeight = this.imgHeight + "px";
      // });
    }
  };
}
document.addEventListener("DOMContentLoaded", () => {
  const countHeight = new countMinHeightProduct();
  countHeight.countHeight();
});
