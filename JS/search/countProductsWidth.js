function countProductWidth() {
  this.form = document.querySelector(".product-form-wrapper");
  this.products = Array.from(
    document.querySelectorAll(".product-custom-wrapper")
  );
  this.productWidth = this.products[0].clientWidth;
  this.formWidth = 0;
  this.countWidth = () => {
    if (this.form != null) {
      this.formWidth = this.form.clientWidth;
      let remainingSpace = this.formWidth - this.productWidth * 3;

      this.products.forEach((product) => {
        if ((this.products.indexOf(product) + 1) % 3 != 0) {
          product.style.marginRight = remainingSpace / 2 - 1 + "px";
        }
      });
    }
  };
}
document.addEventListener("DOMContentLoaded", () => {
  const countWidth = new countProductWidth();
  countWidth.countWidth();
});
