import variables from "../includes/variables.js";
import * as setters from "../includes/setters.js";
import showOverlay from "../includes/showOverlay.js";
import hideOverlay from "../includes/hideOverlay.js";
import * as scroll from "../includes/scroll.js";
import resetDimensions from "./desktopIncludes/resetDimensions.js";
import {
  calculateHeight,
  calculateOneHeight,
  calculateMaxWidth,
} from "../includes/calculationsCategories.js";
import disablePointer from "../includes/disablePointer.js";
import * as wheelDesktop from "./desktopIncludes/wheelDesktop.js";
import { MOBILE_BREAKPOINT, SUB_CATEGORY_MULTIPLIER } from "../app.js";
import { calculateStartHeight } from "../includes/calculationsCategories.js";
export let v = variables();
export const desktopController = desktop();

const LI_HEIGHT = 27;

let STARTING_WIDTH;
let STARTING_HEIGHT;

const REM = parseInt(
  window
    .getComputedStyle(document.body)
    .getPropertyValue("font-size")
    .replace(/px/, "")
);

const CONTAINER_WIDTH = v.container.clientWidth - 45;

//===========================================
function desktop() {
  let v = variables();
  let timeout;
  return {
    init() {
      v.container.classList.contains("main_page")
        ? (STARTING_WIDTH = v.navContainer.clientWidth - 15)
        : (STARTING_WIDTH = v.navContainer.clientWidth);

      STARTING_HEIGHT =
        calculateStartHeight(v.liDepthOneDesktop, LI_HEIGHT) + 3 * REM;

      setters.widthMultiple(
        [v.categoriesWrapperDesktop, v.navCategory, v.ulDesktop],
        STARTING_WIDTH
      );
      setters.heightMultiple(
        [v.categoriesWrapperDesktop, v.ulDesktop],
        STARTING_HEIGHT
      );

      addEvents(v);

      if (!v.container.classList.contains("main_page")) {
        collapse.setToTrue();
        collapse.collapse();
      }
    },
    resize() {
      if (window.innerWidth < MOBILE_BREAKPOINT) return;
      v.container.classList.contains("main_page")
        ? (STARTING_WIDTH = v.navContainer.clientWidth - 15)
        : (STARTING_WIDTH = v.navContainer.clientWidth);

      setters.widthMultiple(
        [v.categoriesWrapperDesktop, v.navCategory],
        STARTING_WIDTH
      );
      setters.width(v.ulDesktop, STARTING_WIDTH - 2);
      hideOverlay();

      if (!v.container.classList.contains("main_page")) collapseFunction();
    },
  };
}
//===========================================
function addEvents(variables) {
  let v = variables;
  //= CATEGORIES WRAPPER EVENTS
  v.categoriesWrapperDesktop.addEventListener("mouseleave", defaultDimensions);
  v.categoriesWrapperDesktop.addEventListener("mouseenter", showOverlay);
  v.categoriesWrapperDesktop.addEventListener("mouseleave", hideOverlay);
  v.categoriesWrapperDesktop.addEventListener("mouseenter", scroll.disable);
  v.categoriesWrapperDesktop.addEventListener("mouseleave", scroll.enable);
  v.categoriesWrapperDesktop.addEventListener(
    "mouseenter",
    wheelDesktop.enterAdd
  );
  v.categoriesWrapperDesktop.addEventListener(
    "mouseleave",
    wheelDesktop.leaveRemove
  );

  v.categoriesWrapperDesktop.addEventListener("mouseenter", (e) => {
    v.categoriesWrapperDesktop.classList.remove("init");
    window.scrollTo({ top: 0, behavior: "smooth" });
  });
  v.categoriesWrapperDesktop.addEventListener("mouseleave", (e) => {
    v.categoriesWrapperDesktop.classList.add("init");
  });

  //=BREADCRUMB EVENTS
  v.categoriesWrapperDesktop.addEventListener("mouseleave", () => {
    v.container.classList.contains("main_page")
      ? (v.breadcrumbText.innerHTML = "KATEGORIE")
      : (v.breadcrumbText.innerHTML = "MENU");
  });

  //=COLLAPSE EVENT
  if (!v.container.classList.contains("main_page"))
    v.navCategory.addEventListener("click", collapse.collapse);

  v.liDepthOneDesktop.forEach((li) => {
    //= DEPTH ONE
    li.addEventListener("mouseenter", enterOne);
    li.addEventListener("mouseleave", leaveOne);

    // //= DEPTH TWO
    const liTwo = li.querySelectorAll(".li-depth-2");
    liTwo.forEach((li2) => {
      li2.addEventListener("mouseenter", enterTwo);
      li2.addEventListener("mouseleave", leaveTwo);

      const liThree = li2.querySelectorAll(".li-depth-3");
      liThree.forEach((li3) => {
        li3.addEventListener("mouseenter", enterThree);
        li3.addEventListener("mouseleave", leaveThree);
      });
    });
  });
}
//===========================================
function enterOne(e) {
  const li = e.target;
  const liSiblings = e.target.parentElement.querySelectorAll(".li-depth-1");
  const nestedUl = li.querySelector(".nested-ul-category");
  const nestedLis =
    nestedUl != null ? nestedUl.querySelectorAll("li.li-depth-2") : null;

  v.breadcrumbText.innerHTML = li.querySelector("a > span").innerHTML;

  if (nestedUl == null) {
    //= SUB_CATEGORY IS EMPTY
    setters.widthMultiple(
      [v.categoriesWrapperDesktop, v.navCategory],
      STARTING_WIDTH
    );
    setters.width(v.ulDesktop, STARTING_WIDTH - 2);
    setters.heightMultiple(
      [v.categoriesWrapperDesktop, v.ulDesktop],
      STARTING_HEIGHT
    );

    return;
  }
  const WIDTH = STARTING_WIDTH * (1 + SUB_CATEGORY_MULTIPLIER);
  const WIDTH_SUB_CATEGORY = STARTING_WIDTH * SUB_CATEGORY_MULTIPLIER;
  const HEIGHT_SUB_CATEGORY =
    calculateHeight(liSiblings, nestedLis, LI_HEIGHT) + 3 * REM;

  //= SET INITIAL DIMENSIONS AND ADD PINK COLOR
  li.classList.add("active");
  nestedUl.classList.add("active");

  setters.widthMultiple([v.categoriesWrapperDesktop, v.navCategory], WIDTH);
  setters.heightMultiple(
    [v.categoriesWrapperDesktop, v.ulDesktop, nestedUl],
    HEIGHT_SUB_CATEGORY
  );

  setters.width(nestedUl, WIDTH_SUB_CATEGORY);
}
function leaveOne(e) {
  const li = e.target;
  const nestedUl = li.querySelector(".nested-ul-category");

  //= REMOVE PURPLE COLOR AND HIDE SUB_CATEGORY
  li.classList.remove("active");

  if (nestedUl == null) return;
  nestedUl.classList.remove("active");

  setters.widthMultiple(
    [v.categoriesWrapperDesktop, v.navCategory],
    STARTING_WIDTH
  );
  setters.width(v.ulDesktop, STARTING_WIDTH - 2);

  setters.heightMultiple(
    [v.categoriesWrapperDesktop, v.ulDesktop],
    STARTING_HEIGHT
  );
}
function enterTwo(e) {
  const li2 = e.target;
  const liParent = li2.parentElement.parentElement;
  const ul2 = li2.parentElement;
  const li2Siblings = e.target.parentElement.querySelectorAll(".li-depth-2");
  const nestedUl2 = li2.querySelector(".nested-ul-category");
  const nestedLis2 =
    nestedUl2 != null ? nestedUl2.querySelectorAll("li.li-depth-3") : null;

  v.breadcrumbText.innerHTML = `${
    liParent.querySelector("a > span").innerHTML
  } ${v.iconRight} ${li2.querySelector("a>span").innerHTML}`;

  if (nestedUl2 == null) {
    setters.widthMultiple(
      [v.categoriesWrapperDesktop, v.navCategory],
      STARTING_WIDTH + STARTING_WIDTH * SUB_CATEGORY_MULTIPLIER
    );
    return;
  }

  //= SET TO VISIBLE
  li2.classList.add("active");
  nestedUl2.classList.add("active");

  const HEIGHT_PARENT = calculateOneHeight(li2Siblings, LI_HEIGHT);
  const HEIGHT_CHILD = calculateOneHeight(nestedLis2, LI_HEIGHT) + 4 * REM;
  const SPAN_MAX_WIDTH = calculateMaxWidth(nestedLis2);
  const PARENT_CATEGORY_WIDTH = STARTING_WIDTH * SUB_CATEGORY_MULTIPLIER;

  let HEIGHT = HEIGHT_PARENT;
  let columnCount = Math.ceil(HEIGHT_CHILD / HEIGHT);

  while (columnCount > 4) {
    HEIGHT += LI_HEIGHT;
    columnCount = Math.ceil(HEIGHT_CHILD / HEIGHT);
  }

  HEIGHT = HEIGHT + 4 * REM;

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

  setters.widthMultiple([v.categoriesWrapperDesktop, v.navCategory], WIDTH);
  setters.width(nestedUl2, WIDTH_SUB_CATEGORY);
  setters.heightMultiple(
    [v.categoriesWrapperDesktop, v.ulDesktop, nestedUl2, ul2],
    HEIGHT
  );
}
function leaveTwo(e) {
  const li2 = e.target;
  const li = e.target.parentElement.parentElement;
  const nestedUl = li.querySelector(".nested-ul-category");
  const liSiblings = e.target.parentElement.parentElement.parentElement.querySelectorAll(
    ".li-depth-1"
  );
  const liParent = li2.parentElement.parentElement;
  const nestedUl2 = li2.querySelector(".nested-ul-category");

  const nestedLis =
    nestedUl != null ? nestedUl.querySelectorAll("li.li-depth-2") : null;

  li2.classList.remove("active");

  v.breadcrumbText.innerHTML = `${
    liParent.querySelector("a > span").innerHTML
  }`;

  if (nestedUl2 == null) return;
  nestedUl2.classList.remove("active");
  setters.resetWidth(nestedUl2);

  const WIDTH = STARTING_WIDTH * (1 + SUB_CATEGORY_MULTIPLIER);
  const WIDTH_SUB_CATEGORY = STARTING_WIDTH * SUB_CATEGORY_MULTIPLIER;
  const HEIGHT_SUB_CATEGORY =
    calculateHeight(liSiblings, nestedLis, LI_HEIGHT) + 3 * REM;

  //= SET INITIAL DIMENSIONS AND ADD PINK COLOR
  li.classList.add("active");
  nestedUl.classList.add("active");

  setters.widthMultiple([v.categoriesWrapperDesktop, v.navCategory], WIDTH);
  setters.heightMultiple(
    [v.categoriesWrapperDesktop, v.ulDesktop, nestedUl],
    HEIGHT_SUB_CATEGORY
  );

  setters.width(nestedUl, WIDTH_SUB_CATEGORY);
}
function enterThree(e) {
  const li3 = e.target;
  const li2 = li3.parentElement.parentElement;
  const li = li2.parentElement.parentElement;
  v.breadcrumbText.innerHTML = `${li.querySelector("a > span").innerHTML} ${
    v.iconRight
  } ${li2.querySelector("a>span").innerHTML} ${v.iconRight} ${
    li3.querySelector("a>span").innerHTML
  }`;
}
function leaveThree(e) {
  const li3 = e.target;
  const li2 = li3.parentElement.parentElement;
  const li = li2.parentElement.parentElement;
  v.breadcrumbText.innerHTML = `${li.querySelector("a > span").innerHTML} ${
    v.iconRight
  } ${li2.querySelector("a>span").innerHTML}`;
}
//===========================================
function defaultDimensions() {
  //= SET INITIAL DIMENSIONS - RESET TO DEFAULT
  setters.heightMultiple(
    [v.categoriesWrapperDesktop, v.ulDesktop],
    STARTING_HEIGHT
  );
  setters.widthMultiple(
    [v.categoriesWrapperDesktop, v.navCategory],
    STARTING_WIDTH
  );
  setters.width(v.ulDesktop, STARTING_WIDTH - 2);
}
//===========================================
const collapse = collapseCategories();
function collapseCategories() {
  let collapsed = false;
  return {
    collapse() {
      if (collapsed == true) {
        collapsed = false;
        collapseFunction();

        return;
      }

      collapsed = true;
      unCollapseFunction();
    },
    setToFalse() {
      collapsed = false;
    },
    setToTrue() {
      collapsed = true;
    },
  };
}

function collapseFunction() {
  let v = variables();
  disablePointer(500);
  hideOverlay();
  scroll.enable();

  setters.heightMultiple([v.categoriesWrapperDesktop, v.ulDesktop], 0);
  setters.setPadding(v.categoriesWrapperDesktop, 0);
  setters.setBorderToZero(v.categoriesWrapperDesktop);

  v.categoriesWrapperDesktop.addEventListener("mouseenter", showOverlay);
  v.categoriesWrapperDesktop.addEventListener("mouseleave", hideOverlay);
  v.categoriesWrapperDesktop.addEventListener("mouseenter", scroll.disable);
  v.categoriesWrapperDesktop.addEventListener("mouseleave", scroll.enable);

  v.overlay.addEventListener("click", hideOverlay);
  collapse.setToFalse();
}

function unCollapseFunction() {
  let v = variables();
  disablePointer(500);
  showOverlay();
  scroll.disable();

  setters.resetBorder(v.categoriesWrapperDesktop);
  setters.heightMultiple(
    [v.categoriesWrapperDesktop, v.ulDesktop],
    STARTING_HEIGHT
  );
  setters.resetPadding(v.categoriesWrapperDesktop);

  v.categoriesWrapperDesktop.removeEventListener("mouseenter", showOverlay);
  v.categoriesWrapperDesktop.removeEventListener("mouseleave", hideOverlay);
  v.categoriesWrapperDesktop.removeEventListener("mouseenter", scroll.disable);
  v.categoriesWrapperDesktop.removeEventListener("mouseleave", scroll.enable);

  v.overlay.addEventListener("click", collapseFunction);

  collapse.setToTrue();
}

//===========================================
