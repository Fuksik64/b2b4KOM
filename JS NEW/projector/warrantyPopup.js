function warrantyPopup() {
  const button = Array.from(document.querySelectorAll(".warrantyLink"));
  const text = document.querySelector("#projector_warranty");

  let div = document.createElement("div");
  div.className = "popupBackground";
  document.body.prepend(div);
  return {
    init() {
      button.forEach((item) => {
        item.addEventListener("click", () => {
          if (div.classList.contains("active")) {
            div.classList.remove("active");
            return;
          } else {
            div.classList.add("active");
          }
        });
        div.innerHTML = text.innerHTML;
        div.addEventListener("click", this.overlayHide);
      });
    },
    overlayHide() {
      div.classList.remove("active");
    },
  };
}

const popupProjector = new warrantyPopup();
popupProjector.init();
