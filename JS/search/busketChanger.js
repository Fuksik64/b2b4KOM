function busketChanger() {
  this.products = Array.from(
    document.querySelectorAll(".product-custom-wrapper")
  );

  this.changeBusket = () => {
    this.products.forEach((product) => {
      let contentDiv = product.querySelector(".cutContent");
      let busket = product.querySelector(".search_buy");
      let sizesDiv = product.querySelector(".search-sizes");
      if (busket != null) {
        contentDiv.innerHTML = busket.outerHTML;
        product.addEventListener("mouseenter", () => {
          contentDiv.classList.add("active");
          sizesDiv.classList.add("active");
        });
        product.addEventListener("mouseleave", () => {
          contentDiv.classList.remove("active");
          sizesDiv.classList.remove("active");
        });
      }
    });
  };
}
const changeBusket = new busketChanger();
changeBusket.changeBusket();
