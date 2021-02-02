import { HEADER_HEIGHT_DEFAULT, MOBILE_BREAKPOINT } from "../app.js";
import showOverlay from "../includes/showOverlay.js";
import hideOverlay from "../includes/hideOverlay.js";
import variables from "../includes/variables.js";
import * as scroll from "../includes/scroll.js";
import * as setters from "../includes/setters.js";
import calculateHeightOfList from "./mobileIncludes/calculations.js";
// import replaceSearchBar from "../includes/replaceSearchBar.js";
// import reverseSearchBar from "../includes/reverseSearchBar.js";

const LI_HEIGHT = 26;
let v = variables();
let currentLevel = 0;
let currentName;
let delta = 0;
let lastY;
let currentHeight = calculateHeightOfList(v.liDepthOneMobile, LI_HEIGHT);
let wrapperHeight = v.wrapperMobileDivUl.clientHeight;

let mainParentUl;
let subParentUl;

export const mobileController = mobile();
function mobile() {
  return {
    init() {
      if (
        window.innerWidth <= MOBILE_BREAKPOINT &&
        window.pageYOffset > HEADER_HEIGHT_DEFAULT
      ) {
        v.header.classList.add("stickyMobile");
        v.header.classList.remove("isSticky");
        v.body.classList.remove("isSticky");
      }

      addListeners();
      v.iconInBreadcrumbMobile.style.display = "none";
      // if (window.innerWidth < MOBILE_BREAKPOINT) replaceSearchBar();
    },
    resize() {
      if (window.innerWidth > MOBILE_BREAKPOINT) return;
      hideCategories();
      // window.innerWidth < MOBILE_BREAKPOINT
      //   ? replaceSearchBar()
      //   : reverseSearchBar();
    },
  };
}
//=======================================================================
function addListeners() {
  let v = variables();
  //= BUTTON EVENTS
  v.mobileButton.addEventListener("click", showCategories);
  // v.mobileButton.addEventListener("click", scroll.disable);
  //= OVERLAY EVENTS
  v.overlay.addEventListener("click", hideCategories);
  v.overlay.addEventListener("click", scroll.enable);

  //= BACK BUTTON EVENT
  v.mobileHideButton.addEventListener("click", hideCategories);

  //= TEXT EVENT
  v.goBackDiv.addEventListener("click", changeCategoryText);

  //=TOUCH EVENTS
  // v.wrapperMobileDivUl.addEventListener("touchmove", touchAndWheelMobile, {
  //   passive: true,
  // });
  v.wrapperMobileDivUl.addEventListener("scroll", moreItemsScroll, {
    passive: true,
  });

  //=WHEEL EVENTS
  // v.wrapperMobileDivUl.addEventListener("wheel", touchAndWheelMobile, {
  //   passive: true,
  // });

  v.liDepthOneMobile.forEach((li) => {
    //= RESET VISIBILITY
    //= DEPTH ONE
    const icon = li.querySelector("i");
    icon.addEventListener("click", levelOneClick);

    //= DEPTH TWO
    const nestedUl2 = li.querySelector("ul");
    if (nestedUl2 == null) return;
    const li2 = nestedUl2.querySelectorAll("li.li-depth-22");

    li2.forEach((li) => {
      const icon = li.querySelector("i");
      const name = li.querySelector("div a>span").innerHTML;

      if (icon == null || name == null) return;
      icon.addEventListener("click", levelTwoClick);
    });
  });
}
//=======================================================================

function levelOneClick(e) {
  e.preventDefault();

  let v = variables();
  const name = e.target.parentElement.parentElement.querySelector("div>span")
    .innerHTML;
  const li = e.target.parentElement;
  const ul = li.querySelectorAll("ul > li.li-depth-22");

  mainParentUl = ul;

  v.liDepthOneMobile.forEach((li) => {
    li.classList.remove("active");
  });
  v.iconInBreadcrumbMobile.style.display = "";
  v.iconSpan.innerHTML = name;
  currentName = name;
  currentHeight = calculateHeightOfList(ul, LI_HEIGHT);
  currentLevel = 1;

  changeScroll();

  scrollToWrapperTop();
  li.classList.add("active");
  setters.setTranslateX(v.ulMobileWrapper, -100, "%");
  checkForMoreItems();
}
function levelTwoClick(e) {
  let v = variables();
  const name = e.target.parentElement.querySelector("a>span").innerHTML;
  const li = e.target.parentElement.parentElement;
  const li2 = li.parentElement.parentElement.querySelectorAll(".li-depth-22");
  const ul = li.querySelectorAll("ul>li");
  v.iconInBreadcrumbMobile.style.display = "";
  subParentUl = ul;
  currentLevel = 2;
  currentHeight = calculateHeightOfList(ul, LI_HEIGHT);
  v.iconSpan.innerHTML = name;
  setters.setTranslateX(v.ulMobileWrapper, -200, "%");

  changeScroll();
  scrollToWrapperTop();
  // //= RESET VISIBILITY
  li2.forEach((li) => {
    li.classList.remove("active");
  });
  li.classList.add("active");
  checkForMoreItems();
}
function changeCategoryText() {
  switch (currentLevel) {
    case 0:
      currentLevel = 0;
      scrollToWrapperTop();
      v.iconInBreadcrumbMobile.style.display = "none";
      checkForMoreItems();
      break;
    case 1:
      v.iconInBreadcrumbMobile.style.display = "none";
      setters.resetTransform(v.ulMobileWrapper);
      v.iconSpan.innerHTML = "Kategorie";
      currentLevel = 0;
      currentHeight = calculateHeightOfList(v.liDepthOneMobile, LI_HEIGHT);

      changeScroll();
      scrollToWrapperTop();
      checkForMoreItems();
      break;
    case 2:
      v.iconInBreadcrumbMobile.style.display = "";
      v.iconSpan.innerHTML = currentName;
      currentHeight = calculateHeightOfList(mainParentUl, LI_HEIGHT);

      changeScroll();
      v.liDepthOneMobile.forEach((li) => {
        setters.setTranslateX(v.ulMobileWrapper, -100, "%");
      });
      currentLevel = 1;
      scrollToWrapperTop();
      checkForMoreItems();
      break;
  }
}
//=======================================================================
function showCategories() {
  let v = variables();
  showOverlay();
  scrollToWrapperTop();
  setters.setTranslateX(v.categoriesWrapperMobile, 0);
  v.body.classList.add("mobileCategoriesActive");
  wrapperHeight = v.wrapperMobileDivUl.clientHeight;
  checkForMoreItems();
}
function hideCategories() {
  let v = variables();
  currentLevel = 0;
  v.iconInBreadcrumbMobile.style.display = "none";
  setters.resetTransform(v.ulMobileWrapper);
  setters.resetTransform(v.categoriesWrapperMobile);
  v.iconSpan.innerHTML = "Kategorie";
  scroll.enable();
  setTimeout(() => {
    v.body.classList.remove("mobileCategoriesActive");
  }, 200);
  hideOverlay();
}

//=======================================================================
function moreItemsScroll(e) {
  e.target.scrollTop !== e.target.scrollHeight - e.target.clientHeight
    ? v.menuSettings2.classList.add("moreItems")
    : v.menuSettings2.classList.remove("moreItems");
}
function changeScroll() {
  currentHeight < wrapperHeight ? scroll.disable() : scroll.enable();
}

function scrollToWrapperTop() {
  v.wrapperMobileDivUl.scrollTo({ top: 0 });
}
//=======================================================================
function checkForMoreItems() {
  let v = variables();
  currentHeight > wrapperHeight
    ? v.menuSettings2.classList.add("moreItems")
    : v.menuSettings2.classList.remove("moreItems");
}
//=======================================================================
//=======================================================================
