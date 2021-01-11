import { variables } from "./helpers_categories/variables.js";
import { objectDatabase } from "./helpers_categories/database.js";
import { newCategoryDesktopWithDb } from "./CategoryDesktop.js";
import { collapsedCategoriesHeader } from "./collapsedCategoriesHeader.js";
import { navHeaderClick } from "./helpers_categories/navHeaderClick.js";
import { hideOverlay } from "./helpers_categories/hideOverlay.js";
import { showOverlay } from "./helpers_categories/showOverlay.js";
import * as setters from "./helpers_categories/setters.js";
import * as scroll from "./helpers_categories/scrollAction.js";
import { collapse, removeCollapse } from "./helpers_categories/collapse.js";
import { createOverlay } from "./helpers_categories/createOverlay.js";
import {
  enableWheel,
  resetWheel,
  enterAddWheel,
  leaveRemoveWheel,
} from "./helpers_categories/scrollWheel.js";
import {
  removeLiClickHeader,
  addLiClickHeader,
} from "./helpers_categories/liClickHeader.js";
let v = variables();
let li = v.liDepth1;
let header = v.header;
let logoContainer = v.logoContainer;
let logoImg = v.logoImg;
let logoText = v.logoText;
let categoriesWrapper = v.categoriesWrapper;
let container = v.container;
let htmlEl = v.htmlEl;
let nav = v.nav;
let body = v.body;
let navContainer = v.navContainer;
let navCategory = v.navCategory;
let ul = v.ul;

export let database = objectDatabase(li, 28, li[0].clientHeight);
function remakeDb() {
  database = objectDatabase(li, 28, li[0].clientHeight);
}
export function init() {
  console.log("init -");
  let v = variables();
  let navCategory = v.navCategory;
  let categoriesWrapper = v.categoriesWrapper;
  let li = v.liDepth1;

  v.categoriesWrapper.classList.add("dimensionsGetter");
  remakeDb();
  v.categoriesWrapper.classList.remove("dimensionsGetter");
  console.log(database);

  setters.setWidth(logoImg, 132);
  setters.setHeight(logoImg, 46);
  setters.setMinWidth(logoImg, 132);
  setters.setMinHeight(logoImg, 46);

  categoriesWrapper.style.visibility = "visible";

  newCategoryDesktopWithDb(database);
  setters.setMinHeight(navContainer, nav.clientHeight);
  if (!container.classList.contains("main_page")) {
    setters.setHeight(categoriesWrapper, 0);
    setters.setPadding(categoriesWrapper, 0);
    setters.resetWidth(navCategory);
    navCategory.classList.add("collapsed");
    createOverlay();
    collapse();
  } else {
    setters.setHeight(categoriesWrapper, database.startingWidth);
  }

  categoriesWrapper.addEventListener("mouseenter", enterAddWheel);
  categoriesWrapper.addEventListener("mouseleave", leaveRemoveWheel);
}
export function headerScrollCategory(e) {
  if (window.pageYOffset > header.offsetTop + header.clientHeight) {
    if (!header.classList.contains("isSticky")) {
      htmlEl.style.transform = "";
      addLiClickHeader();
      logoImg.classList.add("active");
      logoImg.classList.remove("reverse");
      header.classList.add("isSticky");
      hideOverlay();
      setters.setWidth(categoriesWrapper, 0);
      setters.setHeight(categoriesWrapper, 0);
      setters.setPadding(categoriesWrapper, 0);
      logoContainer.parentElement.append(nav);
      logoText.style.display = "none";
      navContainer.innerHTML = "";
      nav.classList.remove("active");
      categoriesWrapper.removeEventListener("mouseenter", scroll.disableScroll);
      categoriesWrapper.removeEventListener("mouseleave", scroll.enableScroll);
      removeCollapse();
      setTimeout(() => {
        collapsedCategoriesHeader(database);
      }, 1);
    }
  } else {
    if (header.classList.contains("isSticky")) {
      removeLiClickHeader();
      setters.resetMargin(categoriesWrapper);
      setters.resetMargin(ul);
      setters.resetPadding(categoriesWrapper);
      logoImg.classList.add("reverse");
      logoImg.classList.remove("active");
      header.classList.remove("isSticky");

      hideOverlay();

      navContainer.prepend(nav);
      logoText.style.display = "flex";
      categoriesWrapper.addEventListener("mouseenter", scroll.disableScroll);
      categoriesWrapper.addEventListener("mouseleave", scroll.enableScroll);
      categoriesWrapper.style.top = "";
      setters.setWidth(categoriesWrapper, database.startingWidth);
      nav.removeEventListener("click", navHeaderClick);
      if (!container.classList.contains("main_page")) {
        setters.setHeight(categoriesWrapper, 0);
        setters.setPadding(categoriesWrapper, 0);
        navCategory.classList.add("collapsed");
        categoriesWrapper.removeEventListener(
          "mouseenter",
          scroll.disableScroll
        );
        categoriesWrapper.removeEventListener(
          "mouseleave",
          scroll.enableScroll
        );
        collapse();
      } else {
        removeCollapse();
        categoriesWrapper.addEventListener("mouseenter", showOverlay);
        categoriesWrapper.addEventListener("mouseleave", hideOverlay);
        setTimeout(() => {
          setters.setHeight(categoriesWrapper, database.startingHeight);
        }, 1);
      }
    }
  }
}
init();
window.addEventListener("scroll", headerScrollCategory);
