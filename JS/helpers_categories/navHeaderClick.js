import { showOverlay } from "./showOverlay.js";
import { hideOverlay } from "./hideOverlay.js";
import { variables } from "./variables.js";
import * as setters from "./setters.js";
import { database } from "../main.js";
import * as scroll from "./scrollAction.js";
import {
  enableWheel,
  leaveRemoveWheel,
  enterAddWheel,
  enableWheelHeader,
  headerAddWheel,
  headerRemoveWheel,
} from "./scrollWheel.js";
let v = variables();
let clicked = false;
let body = v.body;
let nav = v.nav;
let categoriesWrapper = v.categoriesWrapper;

export function navHeaderClick(e) {
  // e.preventDefault();
  body.style.pointerEvents = "none";
  setTimeout(() => {
    body.style.pointerEvents = "all";
  }, 500);
  if (clicked == true) {
    hideOverlay();
    scroll.enableScroll();
    setters.setHeight(categoriesWrapper, 0);
    categoriesWrapper.style.width = "0";
    clicked = false;
    nav.classList.remove("active");
    categoriesWrapper.addEventListener("mouseenter", enterAddWheel);
    categoriesWrapper.addEventListener("mouseleave", leaveRemoveWheel);
    headerRemoveWheel();
    return;
  }
  headerAddWheel();
  categoriesWrapper.removeEventListener("mouseenter", enterAddWheel);
  categoriesWrapper.removeEventListener("mouseleave", leaveRemoveWheel);
  scroll.disableScroll();
  showOverlay();
  nav.classList.add("active");
  setters.setHeight(categoriesWrapper, database.startingHeight);
  setters.setWidth(categoriesWrapper, database.startingWidth);
  setters.setPadding(categoriesWrapper, 0);
  clicked = true;
}
