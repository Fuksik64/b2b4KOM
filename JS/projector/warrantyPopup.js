function warrantyPopup() {
  this.button = Array.from(document.querySelectorAll(".warrantyLink"));
  this.text = document.querySelector("#projector_warranty");

  let div = document.createElement("div");
  div.className = "popupBackground";
  document.body.prepend(div);

  this.init = () => {
    this.button.forEach((item) => {
      item.addEventListener("click", () => {
        if (div.classList.contains("active")) {
          div.classList.remove("active");
          return;
        } else {
          div.classList.add("active");
        }
      });
      div.innerHTML = this.text.innerHTML;
      div.addEventListener("click", this.overlayHide);
    });
  };
  this.overlayHide = () => {
    div.classList.remove("active");
  };
}

const popupProjector = new warrantyPopup();
popupProjector.init();
