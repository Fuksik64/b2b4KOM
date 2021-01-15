import { showOverlay } from "./helpers_categories/showOverlay.js";
import { hideOverlay } from "./helpers_categories/hideOverlay.js";

function basketHover() {
  const basket = document.querySelector("#menu_basket > .menu_basket_list");
  const basketDetails = document.querySelector("#menu_basket_details");

  let timeout;
  return {
    init() {
      if (window.innerWidth < 978) return;

      basket.addEventListener("mouseenter", showBasket);
      basketDetails.addEventListener("mouseleave", hideBasket);
    },
    resize() {
      clearTimeout(timeout);
      timeout = setTimeout(() => {
        if (window.innerWidth < 978) {
          basket.removeEventListener("mouseenter", showBasket);
          basketDetails.removeEventListener("mouseleave", hideBasket);
          return;
        }

        basket.addEventListener("mouseenter", showBasket);
        basketDetails.addEventListener("mouseleave", hideBasket);
      }, 100);
    },
  };
}
function showBasket(e) {
  let counter = parseInt(
    document.querySelector("#container header #menu_settings a span.counter")
      .innerHTML
  );
  if (counter == 0) return;

  document.querySelector(".overlay").classList.add("hideCategories");
  this.classList.add("active");
  showOverlay();
}
function hideBasket(e) {
  document.querySelector(".overlay").classList.remove("hideCategories");
  document
    .querySelector("#menu_basket > .menu_basket_list")
    .classList.remove("active");
  hideOverlay();
}
const basketHoverAction = basketHover();

document.addEventListener("DOMContentLoaded", basketHoverAction.init);
window.addEventListener("resize", basketHoverAction.resize);
