import { headerScrollCategory } from "./main.js";
import { variables } from "./helpers_categories/variables.js";
import { showOverlay } from "./helpers_categories/showOverlay.js";
import { hideOverlay } from "./helpers_categories/hideOverlay.js";
import { createOverlay } from "./helpers_categories/createOverlay.js";
import {
  disableScroll,
  enableScroll,
} from "./helpers_categories/scrollAction.js";
import { newCategoryDesktopWithDb } from "./CategoryDesktop.js";
createOverlay();
let v = variables();
let header = v.header;
let searchBar = document.querySelector("#menu_search");
let navContainer = v.navContainer;
let navCategory = v.navCategory;
let categoriesWrapper = v.categoriesWrapper;
let body = v.body;
let ul = v.ul;
let timeOut;
let mobileButton = document.querySelector(".button-mobile-categories");
let categoriesWrapperUl2 = document.querySelector(".categories-wrapper-ul2");
let menuSettings = document.querySelector("#menu_settings");
let overlay = document.querySelector(".overlay");
let iconGoBack = document.querySelector(".categoriesMobileBreadcrumb i ");
let iconSpan = document.querySelector(".categoriesMobileBreadcrumb span ");
let iconLevelTwoText;
let container = v.container;
let ulMobile = document.querySelector(".wrapper-div-ul-2");

export let startingWidthDb;

window.addEventListener("resize", initResize);
function initResize() {
  clearTimeout(timeOut);
  timeOut = setTimeout(() => {
    startingWidthDb = navContainer.clientWidth;
    let styleLeft =
      (document.body.clientWidth -
        document.querySelector("header").clientWidth) /
      2;
    categoriesWrapperUl2.style.right = -styleLeft + "px";
    let bottomHeader = document.querySelector(".bottom-header-custom");
    let div = document.createElement("div");

    if (body.clientWidth < 979) {
      header.classList.remove("isSticky");
      window.addEventListener("scroll", scrollMobile);
      window.removeEventListener("scroll", headerScrollCategory);
      container.style.marginTop = header.clientHeight + "px";
      if (bottomHeader.firstChild != searchBar) {
        bottomHeader.replaceChild(searchBar, bottomHeader.firstChild);
      }
      navContainer.style.display = "none";
      mobileButton.addEventListener("click", mobileCategories);
    } else {
      window.removeEventListener("scroll", scrollMobile);
      mobileButton.removeEventListener("click", mobileCategories);

      header
        .querySelector(".top-header-wrapper")
        .insertBefore(searchBar, menuSettings);
      navContainer.style.display = "";
      navCategory.style.width = "";
      categoriesWrapper.style.width = "";
      categoriesWrapper.style.height = "";
      navCategory.style.width = "";
      ul.style.width = "";
      ul.style.height = "";

      if (bottomHeader.childNodes.length < 2) {
        bottomHeader.prepend(div);
      }

      window.addEventListener("scroll", headerScrollCategory);
    }
  }, 10);
}

let clickedMobile = false;
function mobileCategories() {
  if (clickedMobile == false) {
    showOverlay();
    ulMobile.addEventListener("wheel", wheelMobile);
    disableScroll();
    overlay.addEventListener("click", () => {
      ulMobile.removeEventListener("wheel", wheelMobile);
      hideOverlay();
      categoriesWrapperUl2.style.transform = "";
      clickedMobile = false;
      enableScroll();
      currentLevel = 0;
      resetWheel();
      setTimeout(() => {
        iconSpan.innerHTML = "Kategorie";
        liDepth11.forEach((li) => {
          li.parentElement.style.transform = "translateX(0)";
          let liDepth22 = li.querySelectorAll(".li-depth-22");
          liDepth22.forEach((li2) => {
            li2.classList.remove("active");
            li2.parentElement.style.transform = "translateX(0)";
          });
        });
        iconGoBack.style.display = "";
      }, 200);
    });
    categoriesWrapperUl2.style.transform = "translateX(0)";
    clickedMobile = true;
  } else {
    hideOverlay();
    ulMobile.removeEventListener("wheel", wheelMobile);
    enableScroll();
    categoriesWrapperUl2.style.transform = "";
    currentLevel = 0;
    clickedMobile = false;
  }
}

let liDepth11 = Array.from(document.querySelectorAll(".li-depth-11"));
let currentLevel = 0;
liDepth11.forEach((li) => {
  if (li.querySelector("a>i")) {
    li.querySelector("a>i").addEventListener("click", () => {
      liDepth11.forEach((li) => {
        li.classList.remove("active");
      });
      currentLevel = 1;
      resetWheel();
      if (li.querySelector("div>i") != null) {
        iconSpan.innerHTML = li.querySelector("div>span").innerHTML;
        iconLevelTwoText = li.querySelector("div>  span").innerHTML;
        li.classList.add("active");
        li.parentElement.style.transform = "translateX(-100%)";
        li.querySelector(".nested-ul-category2").display = "";

        let liDepth22 = li.querySelectorAll(".li-depth-22");
        liDepth22.forEach((li2) => {
          console.log(currentLevel);
          if (li2.querySelector("div>i")) {
            li2.querySelector("div>i").addEventListener("click", () => {
              currentLevel = 2;
              console.log(currentLevel);
              resetWheel();
              liDepth22.forEach((li2) => {
                li2.classList.remove("active");
              });
              li2.classList.add("active");
              iconSpan.innerHTML = li2.querySelector("div> a span").innerHTML;

              li2.parentElement.style.transform = "translateX(-100%)";
              li2.querySelector(".nested-ul-category2").display = "";
            });
          }
        });
      }
    });
  }
});

categoriesWrapperUl2.addEventListener("click", resetWheel);
let wheelValue = 0;

function wheelMobile(e) {
  let variation = parseInt(e.deltaY);

  wheelValue += variation / 5;
  if (wheelValue < 0) {
    wheelValue = 0;
  }
  ulMobile.querySelector("ul").style.transform =
    "translate(-100%," + -wheelValue + "px)";

  return false;
}
function resetWheel() {
  wheelValue = 0;
  if (wheelValue < 0) {
    wheelValue = 0;
  }
  ulMobile.style.transform = "translateY(" + -wheelValue + "px)";
  return false;
}

iconGoBack.addEventListener("click", () => {
  switch (currentLevel) {
    case 0:
      hideOverlay();
      enableScroll();
      categoriesWrapperUl2.style.transform = "";
      currentLevel = 0;
      clickedMobile = false;
      console.log("0");
      resetWheel();
      break;
    case 1:
      console.log("1");
      liDepth11.forEach((li) => {
        li.parentElement.style.transform = "";
      });
      iconSpan.innerHTML = "Kategorie";
      iconGoBack.style.display = "";
      currentLevel = 0;
      resetWheel();
      break;
    case 2:
      console.log("2");
      iconSpan.innerHTML = iconLevelTwoText;

      liDepth11.forEach((li) => {
        li.parentElement.style.transform = "translateX(-100%)";
        let liDepth22 = li.querySelectorAll(".li-depth-22");
        liDepth22.forEach((li2) => {
          li2.classList.remove("active");
          li2.parentElement.style.transform = "translateX(0)";
        });
      });
      iconGoBack.style.display = "";
      currentLevel = 1;
      resetWheel();
      break;
    default:
      console.log("default");
      break;
  }
});
initResize();

function scrollMobile() {
  if (window.pageYOffset > header.offsetTop + header.clientHeight) {
    header.classList.add("stickyMobile");
  } else {
    header.classList.remove("stickyMobile");
  }
}
