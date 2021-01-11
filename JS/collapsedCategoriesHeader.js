import { showOverlay } from "./helpers_categories/showOverlay.js";
import { hideOverlay } from "./helpers_categories/hideOverlay.js";
import * as setters from "./helpers_categories/setters.js";
import { navHeaderClick } from "./helpers_categories/navHeaderClick.js";
import { variables } from "./helpers_categories/variables.js";

export function collapsedCategoriesHeader(database) {
  let v = variables();
  let header = v.header;
  let categoriesWrapper = v.categoriesWrapper;
  let nav = v.nav;
  let ul = v.ul;

  categoriesWrapper.removeEventListener("mouseenter", showOverlay);
  categoriesWrapper.removeEventListener("mouseleave", hideOverlay);

  categoriesWrapper.style.top = header.clientHeight - 2 + "px";
  setters.setHeight(categoriesWrapper, 0);
  setters.setWidth(categoriesWrapper, 0);

  setters.setMargin(categoriesWrapper, 0);
  setters.setMargin(ul, 0);
  setters.setPadding(categoriesWrapper, 0);

  let overlay = document.querySelector(".overlay");
  overlay.addEventListener("click", hideOverlay);
  overlay.addEventListener("click", navHeaderClick);

  nav.addEventListener("click", navHeaderClick);
}
