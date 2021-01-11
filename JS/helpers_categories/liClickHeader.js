import { hideOverlay } from "./hideOverlay.js";
import { variables } from "./variables.js";

import { navHeaderClick } from "./navHeaderClick.js";
let v = variables();
let nav = v.nav;
let categoriesWrapper = v.categoriesWrapper;
let ul = v.ul;
let body = v.body;
let li = Array.from(ul.querySelectorAll("li > a"));
export function addLiClickHeader() {
  li.forEach((el) => {
    el.addEventListener("click", liRedirect);
  });
}
function liRedirect(e) {
  nav.removeEventListener("click", navHeaderClick);
  hideOverlay();
  body.style.pointerEvents = "none";
  categoriesWrapper.style.pointerEvents = "none";
  categoriesWrapper.classList.add("pageUnload");
}
export function removeLiClickHeader() {
  li.forEach((el) => {
    el.removeEventListener("click", liRedirect);
  });
}
