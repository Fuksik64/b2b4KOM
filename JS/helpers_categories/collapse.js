import * as setters from "./setters.js";
import { variables } from "./variables.js";
import { database } from "../main.js";
import { hideOverlay } from "./hideOverlay.js";
import { showOverlay } from "./showOverlay.js";
import { disableScroll, enableScroll } from "./scrollAction.js";
import { createOverlay } from "./createOverlay.js";
import { navHeaderClick } from "./navHeaderClick.js";
let v = variables();
let navCategory = v.navCategory;
let categoriesWrapper = v.categoriesWrapper;
let body = v.body;
let nav = v.nav;
createOverlay();
let overlay = document.querySelector(".overlay");

export function collapse() {
  navCategory.addEventListener("click", collapsedCategory);
}
export function removeCollapse() {
  navCategory.removeEventListener("click", collapsedCategory);
}
function collapsedCategory() {
  if (navCategory.classList.contains("collapsed")) {
    console.log("click colllapsed");
    navCategory.classList.remove("collapsed");
    // setters.setWidth(nav, database.startingWidth);
    setters.setHeight(categoriesWrapper, database.startingHeight);
    setters.resetPadding(categoriesWrapper);
    setters.setWidth(categoriesWrapper, database.startingWidth);
    setters.setWidth(navCategory, database.startingWidth);
    disableScroll();
    overlay.removeEventListener("click", navHeaderClick);
    overlay.addEventListener("click", hideOverlay);
    overlay.addEventListener("click", () => {
      setters.setHeight(categoriesWrapper, 0);
      setters.setPadding(categoriesWrapper, 0);
      navCategory.classList.add("collapsed");
      hideOverlay();
      enableScroll();
      body.style.pointerEvents = "none";
      setTimeout(() => {
        body.style.pointerEvents = "";
      }, 500);
    });
    showOverlay();
    // overlay.addEventListener("click", enableScroll);
    body.style.pointerEvents = "none";
    setTimeout(() => {
      body.style.pointerEvents = "";
    }, 500);
  } else {
    body.style.pointerEvents = "none";
    setTimeout(() => {
      body.style.pointerEvents = "";
    }, 500);
    console.log("click not colllapsed");
    enableScroll();
    hideOverlay();
    navCategory.classList.add("collapsed");
    setters.setHeight(categoriesWrapper, 0);
    setters.setPadding(categoriesWrapper, 0);
  }
}
