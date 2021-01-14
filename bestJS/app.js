let link = document.createElement("link");
link.setAttribute("href", "/data/include/cms/b2b4kom/JS/custom.css");
link.setAttribute("rel", "stylesheet");
link.setAttribute("type", "text/css");

document.head.appendChild(link);
window.addEventListener("scroll", backButton);

import createOverlay from "./includes/createOverlay.js";
import { headerController } from "./functions/header.js";
import { desktopController } from "./functions/desktop.js";
import { mobileController } from "./functions/mobile.js";
import variables from "./includes/variables.js";
import backButton from "./includes/backButton.js";

export const SUB_CATEGORY_MULTIPLIER = 0.75;
export const MOBILE_BREAKPOINT = 979;
export const LARGE_BREAKPOINT = 1199;
export const HEADER_HEIGHT_DEFAULT = 60;
export const REM = parseInt(
  window
    .getComputedStyle(document.body)
    .getPropertyValue("font-size")
    .replace(/px/, "")
);
let v = variables();
createOverlay();

document.addEventListener("DOMContentLoaded", headerController.init);
document.addEventListener("DOMContentLoaded", desktopController.init);
document.addEventListener("DOMContentLoaded", mobileController.init);

const resizer = new ResizeObserver(() => {
  headerController.resize();
  desktopController.resize();
  mobileController.resize();

  if (window.innerWidth > MOBILE_BREAKPOINT) {
    v.header.classList.remove("stickyMobile");
    if (window.pageYOffset > HEADER_HEIGHT_DEFAULT) {
      v.header.classList.add("isSticky");
      v.body.classList.add("isSticky");
    } else {
      v.header.classList.remove("isSticky");
      v.body.classList.remove("isSticky");
    }
  } else {
    v.header.classList.remove("isSticky");
    v.body.classList.remove("isSticky");
    if (window.scrollY > HEADER_HEIGHT_DEFAULT) {
      v.header.classList.add("stickyMobile");
    } else {
      v.header.classList.remove("stickyMobile");
    }
  }
});
resizer.observe(document.body);

export const scroll = new IntersectionObserver(
  (entries) => {
    if (!entries[0].isIntersecting) {
      if (window.innerWidth < MOBILE_BREAKPOINT) {
        v.header.classList.add("stickyMobile");
        v.header.classList.remove("isSticky");
        v.body.classList.remove("isSticky");
      } else {
        v.header.classList.remove("stickyMobile");
        v.header.classList.add("isSticky");
        v.body.classList.add("isSticky");
      }
    } else {
      v.header.classList.remove("stickyMobile");
      v.header.classList.remove("isSticky");
      v.body.classList.remove("isSticky");
      document.body.scrollTo({ top: 0, left: 0, behavior: "smooth" });
    }
  },
  { rootMargin: "-30px 0px 0px 0px", threshold: 0.3 }
);
scroll.observe(document.querySelector(".b2b-category"));
