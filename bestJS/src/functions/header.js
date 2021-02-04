import variables from "../includes/variables.js";
import {
  MOBILE_BREAKPOINT,
  SUB_CATEGORY_MULTIPLIER,
  HEADER_HEIGHT_DEFAULT,
} from "../app.js";
import * as setters from "../includes/setters.js";
import showOverlay from "../includes/showOverlay.js";
import hideOverlay from "../includes/hideOverlay.js";
import * as scroll from "../includes/scroll.js";
import resetDimensions from "./headerIncludes/resetDimensions.js";
import disablePointer from "../includes/disablePointer.js";
import overlayClick from "./headerIncludes/overlayClick.js";
import { calculateStartHeight } from "../includes/calculationsCategories.js";
import * as headerWheel from "./headerIncludes/headerWheel.js";
import {
  calculateHeight,
  calculateOneHeight,
  calculateMaxWidth,
} from "../includes/calculationsCategories.js";

export const headerController = header();

let v = variables();
const REM = parseInt(
  window
    .getComputedStyle(document.body)
    .getPropertyValue("font-size")
    .replace(/px/, "")
);
const LI_HEIGHT = 28;

let STARTING_WIDTH = v.navContainer.clientWidth - 30;
let STARTING_HEIGHT = calculateStartHeight(v.liDepthOneHeader, LI_HEIGHT);

// =======================================================================
function header() {
  let v = variables();
  return {
    init() {
      if (
        window.innerWidth > MOBILE_BREAKPOINT &&
        window.pageYOffset > HEADER_HEIGHT_DEFAULT
      ) {
        v.header.classList.remove("stickyMobile");
        v.header.classList.add("isSticky");
        v.body.classList.add("isSticky");
      }
      STARTING_WIDTH = v.navContainer.clientWidth - 30;

      resetDimensions(v);
      addListeners(v);
      // headerEnable()
      defaultDimensions();
      wrapCategories();
    },
    resize() {
      if (window.innerWidth < MOBILE_BREAKPOINT) return;
      STARTING_WIDTH = v.navContainer.clientWidth - 30;
      resetDimensions(v);
      defaultDimensions();
      wrapCategories();
    },
  };
}
// =======================================================================

// function headerEnable() {
//   v = variables();
//   wrapCategories();
//   addListeners(v);
// }
// =======================================================================
function addListeners(variables) {
  let v = variables;

  //= CLICK AND CATEGORIES WRAPPER EVENTS
  v.navHeader.addEventListener("click", menuHeaderClick.click);
  v.categoriesWrapperHeader.addEventListener("mouseleave", defaultDimensions);

  v.liDepthOneHeader.forEach((li) => {
    //     //= DEPTH ONE
    li.addEventListener("mouseenter", enterOneHeader);
    li.addEventListener("mouseleave", leaveOneHeader);

    //     //= DEPTH TWO
    const liTwo = li.querySelectorAll(".li-depth-2-header");
    liTwo.forEach((li2) => {
      li2.addEventListener("mouseenter", enterTwoHeader);
      li2.addEventListener("mouseleave", leaveTwoHeader);
    });
  });
}

// =======================================================================
function enterOneHeader(e) {
  const li = e.target;
  const liSiblings = li.parentElement.querySelectorAll(".li-depth-1-header");
  const nestedUl = li.querySelector(".nested-ul-category-header");
  const nestedLis =
    nestedUl != null ? nestedUl.querySelectorAll("li.li-depth-2-header") : null;
  if (nestedUl == null) {
    //= SUB_CATEGORY IS EMPTY
    setters.width(v.categoriesWrapperHeader, STARTING_WIDTH);
    setters.width(v.ulHeader, STARTING_WIDTH - 2);

    setters.heightMultiple(
      [v.categoriesWrapperHeader, v.ulHeader],
      STARTING_HEIGHT
    );

    return;
  }

  const WIDTH = STARTING_WIDTH * (1 + SUB_CATEGORY_MULTIPLIER);
  const WIDTH_SUB_CATEGORY = STARTING_WIDTH * SUB_CATEGORY_MULTIPLIER;
  const HEIGHT_SUB_CATEGORY = calculateHeight(liSiblings, nestedLis, LI_HEIGHT);

  //= SET INITIAL DIMENSIONS AND ADD PINK COLOR
  li.classList.add("active");
  nestedUl.classList.add("active");

  setters.width(v.categoriesWrapperHeader, WIDTH);
  setters.heightMultiple(
    [v.categoriesWrapperHeader, v.ulHeader, nestedUl],
    HEIGHT_SUB_CATEGORY
  );

  setters.width(nestedUl, WIDTH_SUB_CATEGORY);
}
function leaveOneHeader(e) {
  const li = e.target;
  const nestedUl = li.querySelector(".nested-ul-category-header");

  //= REMOVE PURPLE COLOR AND HIDE SUB_CATEGORY
  li.classList.remove("active");

  if (nestedUl == null) return;
  nestedUl.classList.remove("active");

  setters.width(v.categoriesWrapperHeader, STARTING_WIDTH);
  setters.width(v.ulHeader, STARTING_WIDTH - 2);

  setters.heightMultiple(
    [v.categoriesWrapperHeader, v.ulHeader],
    STARTING_HEIGHT
  );
}
function enterTwoHeader(e) {
  const li2 = e.target;
  const liParent = li2.parentElement.parentElement;
  const ul2 = li2.parentElement;
  const li2Siblings = e.target.parentElement.querySelectorAll(
    ".li-depth-2-header"
  );
  const nestedUl2 = li2.querySelector(".nested-ul-category-header");
  const nestedLis2 =
    nestedUl2 != null
      ? nestedUl2.querySelectorAll("li.li-depth-3-header")
      : null;

  if (nestedUl2 == null) {
    setters.width(
      v.categoriesWrapperHeader,
      STARTING_WIDTH + STARTING_WIDTH * SUB_CATEGORY_MULTIPLIER
    );
    return;
  }

  //= SET TO VISIBLE
  li2.classList.add("active");
  nestedUl2.classList.add("active");
  let CONTAINER_WIDTH = v.container.clientWidth - 30;
  const HEIGHT_PARENT = calculateOneHeight(li2Siblings, LI_HEIGHT);
  const HEIGHT_CHILD = calculateOneHeight(nestedLis2, LI_HEIGHT);
  const SPAN_MAX_WIDTH = calculateMaxWidth(nestedLis2);
  const PARENT_CATEGORY_WIDTH = STARTING_WIDTH * SUB_CATEGORY_MULTIPLIER;

  let HEIGHT = HEIGHT_PARENT;
  let columnCount = Math.ceil(HEIGHT_CHILD / HEIGHT);

  while (columnCount > 4) {
    HEIGHT += LI_HEIGHT;
    columnCount = Math.ceil(HEIGHT_CHILD / HEIGHT);
  }

  HEIGHT = HEIGHT + 2 * REM;

  let WIDTH =
    STARTING_WIDTH + PARENT_CATEGORY_WIDTH + SPAN_MAX_WIDTH * columnCount;
  let WIDTH_SUB_CATEGORY = SPAN_MAX_WIDTH * columnCount;

  if (WIDTH_SUB_CATEGORY < PARENT_CATEGORY_WIDTH) {
    WIDTH = STARTING_WIDTH + PARENT_CATEGORY_WIDTH * 2;
    WIDTH_SUB_CATEGORY = PARENT_CATEGORY_WIDTH * 2;
  }

  while (WIDTH > CONTAINER_WIDTH) {
    WIDTH--;
    WIDTH_SUB_CATEGORY--;
  }

  setters.width(v.categoriesWrapperHeader, WIDTH);
  setters.width(nestedUl2, WIDTH_SUB_CATEGORY);
  setters.heightMultiple([v.categoriesWrapperHeader, v.ulHeader, ul2], HEIGHT);
  setters.height(nestedUl2, HEIGHT - 2 * REM);
}
function leaveTwoHeader(e) {
  const li = e.target.parentElement.parentElement;
  const liSiblings = li.parentElement.querySelectorAll(".li-depth-1-header");
  const nestedUl = li.querySelector(".nested-ul-category-header");
  const nestedLis =
    nestedUl != null ? nestedUl.querySelectorAll("li.li-depth-2-header") : null;

  const li2 = e.target;
  const nestedUl2 = li2.querySelector(".nested-ul-category-header");
  li2.classList.remove("active");

  if (nestedUl2 == null) return;
  nestedUl2.classList.remove("active");
  setters.resetWidth(nestedUl2);

  const WIDTH = STARTING_WIDTH * (1 + SUB_CATEGORY_MULTIPLIER);
  const WIDTH_SUB_CATEGORY = STARTING_WIDTH * SUB_CATEGORY_MULTIPLIER;
  const HEIGHT_SUB_CATEGORY = calculateHeight(liSiblings, nestedLis, LI_HEIGHT);

  //= SET INITIAL DIMENSIONS AND ADD PINK COLOR
  li.classList.add("active");
  nestedUl.classList.add("active");

  setters.width(v.categoriesWrapperHeader, WIDTH);
  setters.heightMultiple(
    [v.categoriesWrapperHeader, v.ulHeader, nestedUl],
    HEIGHT_SUB_CATEGORY
  );

  setters.width(nestedUl, WIDTH_SUB_CATEGORY);
}
// =======================================================================

function menuHeaderHamburgerClick() {
  let clicked = false;

  return {
    click() {
      if (clicked == false) {
        defaultDimensions();
        overlayClick().enable();
        showOverlay();

        scroll.disable();
        disablePointer(500);
        setters.width(v.categoriesWrapperHeader, STARTING_WIDTH);
        setters.width(v.ulHeader, STARTING_WIDTH - 2);

        clicked = true;
        v.categoriesWrapperHeader.addEventListener(
          "mouseenter",
          headerWheel.enable
        );
        v.categoriesWrapperHeader.addEventListener(
          "mouseleave",
          headerWheel.disable
        );
        scroll.disable();
      } else {
        v.categoriesWrapperHeader.removeEventListener(
          "mouseenter",
          headerWheel.enable
        );
        v.categoriesWrapperHeader.removeEventListener(
          "mouseleave",
          headerWheel.disable
        );
        scroll.enable();
        hideOverlay();
        wrapCategories();
        disablePointer(500);
        clicked = false;
      }
    },
    clickStatus() {
      return clicked;
    },
    statusToFalse() {
      clicked = false;
    },
  };
}
const menuHeaderClick = menuHeaderHamburgerClick();

// =======================================================================

export function wrapCategories() {
  setters.width(v.categoriesWrapperHeader, 0);
  setters.height(v.categoriesWrapperHeader, 0);
  setters.setBorderToZero(v.categoriesWrapperHeader);
  setters.setPadding(v.categoriesWrapperHeader, 0);
  hideOverlay();
  menuHeaderClick.statusToFalse();
  disablePointer(500);
  v.header.classList.remove("active-categories-header");
  headerWheel.disable();
}

function defaultDimensions() {
  v.header.classList.add("active-categories-header");
  setters.width(v.categoriesWrapperHeader, STARTING_WIDTH);
  setters.resetBorder(v.categoriesWrapperHeader);
  setters.resetPadding(v.categoriesWrapperHeader);
  headerWheel.enable();
  setters.heightMultiple(
    [v.categoriesWrapperHeader, v.ulHeader],
    STARTING_HEIGHT
  );
}

// =======================================================================
