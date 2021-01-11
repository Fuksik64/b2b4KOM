import { showOverlay } from "./helpers_categories/showOverlay.js";
import { hideOverlay } from "./helpers_categories/hideOverlay.js";
// import * as scroll from "./helpers_categories/scrollAction.js";

// function basketDetails() {
//   basketDetails.prototype.header = document.querySelector(
//     "header #menu_basket_wrapper"
//   );

//   basketDetails.prototype.basket = "";
//   basketDetails.prototype.button = "";
//   basketDetails.prototype.productList = "";
//   basketDetails.prototype.heightInfo = 0;
//   basketDetails.prototype.height = 0;

//   basketDetails.prototype.mutationFunction = (mutationsList, observer) => {
//     for (const mutation of mutationsList) {
//       if (mutation.type === "childList") {
//         this.init();
//       }
//     }
//   };
//   basketDetails.prototype.list = "";

//   basketDetails.prototype.showBasket = () => {
//     showOverlay();
//     scroll.disableScroll();
//     document.querySelector(".custom-nav").classList.add("hiddenByBasket");
//     this.basket.style.visibility = "visible";
//     this.basket.style.overflow = "hidden";
//     this.basket.style.display = "flex";
//     this.basket.style.height = this.height + "px";
//     this.basket.style.width = "100%";
//     this.basket.style.padding = "";
//     this.basket.style.border = "";
//   };

//   basketDetails.prototype.hideBasket = () => {
//     hideOverlay();
//     scroll.enableScroll();
//     document.querySelector(".custom-nav").classList.remove("hiddenByBasket");
//     this.basket.style.height = 0;
//     this.basket.style.padding = 0;
//     this.basket.style.height = 0;
//     this.basket.style.width = 0;
//     this.basket.style.border = 0;
//     this.basket.style.overflow = "hidden";
//   };

//   basketDetails.prototype.observer = new MutationObserver(
//     this.mutationFunction
//   );

//   basketDetails.prototype.init = () => {
//     console.log("init");
//     console.log(this.height);
//     this.basket = document.querySelector("#menu_basket_details");
//     this.button = document.querySelector("#menu_basket_wrapper");
//     this.list = document.querySelector(".menu_basket_list");
//     this.menuInfo = document.querySelector("#menu_basket_extrainfo");
//     this.button.removeEventListener("mouseenter", this.showBasket);
//     this.basket.removeEventListener("mouseleave", this.hideBasket);

//     this.basket.style.border = 0;

//     this.basket.style.overflow = "visible";
//     if (this.list.classList.contains("empty")) {
//       return;
//     }
//     this.basket.style.visibility = "hidden";
//     this.basket.style.height = "";
//     this.basket.style.width = "";
//     this.basket.style.display = "flex";
//     if (this.menuInfo.clientHeight > this.basket.clientHeight) {
//       this.height = this.menuInfo.clientHeight + 30;
//     } else {
//       this.height = this.basket.clientHeight + 30;
//     }
//     console.log(this.height);
//     // throw new Error();
//     this.basket.style.display = "none";
//     this.basket.style.padding = 0;
//     this.basket.style.right = 0;
//     this.basket.style.width = 0;
//     this.basket.style.height = 0;
//     this.basket.style.display = "flex";
//     this.basket.style.transition = "height .5s ease,width .5s ease";
//     // setTimeout(() => {
//     // }, 1);
//     this.button.addEventListener("mouseenter", this.showBasket);
//     this.basket.addEventListener("mouseleave", this.hideBasket);
//     // this.basket.style.overflow = "hidden";
//   };
//   this.observer.observe(this.header, {
//     attributes: true,
//     childList: true,
//     subtree: true,
//   });
//   this.init();
// }
// const basketDetailsHover = new basketDetails();

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
