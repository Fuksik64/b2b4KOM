window.addEventListener("scroll", backButton);

import createOverlay from "./includes/createOverlay.js";
import { headerController } from "./functions/header.js";
import { desktopController } from "./functions/desktop.js";
import { mobileController } from "./functions/mobile.js";
import variables from "./includes/variables.js";
import backButton from "./includes/backButton.js";
import "./basketDetailsHover.js";
import "./footerRotateChevron.js";

export const SUB_CATEGORY_MULTIPLIER = 0.75;
export const MOBILE_BREAKPOINT = 979;
export const LARGE_BREAKPOINT = 1199;
export const HEADER_HEIGHT_DEFAULT = 80;
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
    v.body.classList.remove("stickyMobile");
    setHeaderTop(80);

    if (window.pageYOffset > 80) {
      v.header.classList.add("isSticky");
      v.body.classList.add("isSticky");
    } else {
      v.header.classList.remove("isSticky");
      v.body.classList.remove("isSticky");
    }
  } else {
    v.header.classList.remove("isSticky");
    v.body.classList.remove("isSticky");
    setHeaderTop(100);

    if (window.scrollY > 100) {
      v.header.classList.add("stickyMobile");
    } else {
      v.header.classList.remove("stickyMobile");
    }
  }
});
resizer.observe(document.querySelector("#layout"));

export const scroll = new IntersectionObserver(
  (entries) => {
    if (!entries[0].isIntersecting) {
      if (window.innerWidth < MOBILE_BREAKPOINT) {
        v.header.classList.add("stickyMobile");
        v.body.classList.add("stickyMobile");
        v.header.classList.remove("isSticky");
        v.body.classList.remove("isSticky");
      } else {
        v.body.classList.remove("stickyMobile");
        v.header.classList.remove("stickyMobile");
        v.header.classList.add("isSticky");
        v.body.classList.add("isSticky");
      }
    } else {
      v.body.classList.remove("stickyMobile");
      v.header.classList.remove("stickyMobile");
      v.header.classList.remove("isSticky");
      v.body.classList.remove("isSticky");
      // window.scrollTo({ top: 0, left: 0, behavior: "smooth" });
    }
  },
  { rootMargin: "80px 0px 0px 0px" }
);
scroll.observe(document.querySelector(".b2b-category"));

if (iOS()) {
  document.body.classList.add("iOS");
}

function iOS() {
  return (
    [
      "iPad Simulator",
      "iPhone Simulator",
      "iPod Simulator",
      "iPad",
      "iPhone",
      "iPod",
    ].includes(navigator.platform) ||
    // iPad on iOS 13 detection
    (navigator.userAgent.includes("Mac") && "ontouchend" in document)
  );
}

const height = document.querySelector("#over_header").clientHeight;
v.header.style.top = height + "px";
function setHeaderTop(headerHeight) {
  let calc = height + headerHeight + 4;
  v.container.setAttribute("style", `padding-top:${calc}px!important`);
}

window.innerWidth > MOBILE_BREAKPOINT ? setHeaderTop(80) : setHeaderTop(100);
