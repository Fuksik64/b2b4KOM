import database from "./includes/database.js";
import variables from "./includes/variables.js";
import * as setters from "./includes/setters.js";
import hideOverlay from "./includes/hideOverlay.js";
import createOverlay from "./includes/createOverlay.js";
import showOverlay from "./includes/showOverlay.js";
import * as scroll from "./includes/scrollActions.js";

let v = variables();
let db = database(v.liDepth1, 28);
let currentHeight;
let currentWidth;
let breadcrumbLevel1;
let breadcrumbLevel2;
let iconRight = '<i class="icon-chevron-right"></i>';
let resizeTimeout;
let navHeaderClicked = false;
let scrollValue = 0;
let scrollbarWidth = window.innerWidth - document.body.clientWidth;
let scrollValueHeader = 0;
let iconLevelTwoText;
let clickedMobile = false;

let wheelValueMobile = 0;

let touchSavedValue = 0;
let currentDelta = 0;

let currentElementMobile;

let li = Array.from(v.ul.querySelectorAll("li > a"));
let liDepth11 = Array.from(document.querySelectorAll(".li-depth-11"));
let currentLevel = 0;
let overlay = document.querySelector(".overlay");
function init() {
  console.log("init");
  createOverlay();
  initResize();
  setLogo();
  window.addEventListener("resize", initResize);
  window.addEventListener("scroll", headerScrollCategory);
  v.categoriesWrapperUl2.addEventListener("click", resetWheelMobile);
}
function getDimensions() {
  v = variables();
  v.categoriesWrapper.classList.add("dimensionsGetter");
  setters.resetWidth(v.nav);
  setters.resetWidth(v.categoriesWrapper);
  setters.resetWidth(v.navCategory);
  setters.resetWidth(v.ul);
  setters.resetWidth(v.navContainer);

  setters.resetHeight(v.categoriesWrapper);
  setters.resetHeight(v.ul);

  db = database(v.liDepth1, 28);

  v.categoriesWrapper.classList.remove("dimensionsGetter");
  if (v.container.classList.contains("main_page")) {
    db.startingWidth =
      v.navContainer.clientWidth == 0
        ? v.navContainer.clientWidth
        : v.navContainer.clientWidth - 30;
  } else {
    db.startingWidth = v.navContainer.clientWidth;
  }

  db.startingHeight = v.ul.clientHeight;
}
// !HERE
window.addEventListener("touchmove", () => {
  setters.marginTop(v.container, v.header.clientHeight + 10);
});
window.addEventListener("touchstart", () => {
  setters.marginTop(v.container, v.header.clientHeight + 10);
});
window.addEventListener("touchend", () => {
  setters.marginTop(v.container, v.header.clientHeight + 10);
});
function initResize() {
  clearTimeout(resizeTimeout);
  resizeTimeout = setTimeout(() => {
    // !CHANGE
    let div = document.createElement("div");
    console.log(db);

    getDimensions();
    desktopCategories();
    setLogo();

    if (window.innerWidth < 979) {
      setTimeout(() => {
        window.addEventListener("scroll", scrollMobile);
        window.removeEventListener("scroll", headerScrollCategory);
        v.mobileButton.addEventListener("click", mobileCategories);

        v.header.classList.remove("isSticky");

        if (v.bottomHeader.firstChild != v.searchBar) {
          v.bottomHeader.replaceChild(v.searchBar, v.bottomHeader.firstChild);
        }
        v.navContainer.style.display = "none";
      }, 100);
      setters.marginTop(v.container, v.header.clientHeight + 10);
    } else {
      hideOverlay();

      window.removeEventListener("scroll", scrollMobile);
      v.header.classList.remove("stickyMobile");
      setters.marginTop(v.container, v.header.clientHeight + 10);
      headerScrollCategory();
      v.mobileButton.removeEventListener("click", mobileCategories);
      setters.marginTop(v.container, v.header.clientHeight + 13);
      v.header
        .querySelector(".top-header-wrapper")
        .insertBefore(v.searchBar, v.menuSettings);
      v.navContainer.style.display = "";

      //   v.ul.style.width = "";
      //   v.ul.style.height = "";

      if (v.bottomHeader.childNodes.length < 2) {
        v.bottomHeader.prepend(div);
      }

      window.addEventListener("scroll", headerScrollCategory);

      // getDimensions();
      desktopCategories();

      if (v.container.classList.contains("main_page") == false) {
        v.body.style.pointerEvents = "none";
        setTimeout(() => {
          v.body.style.pointerEvents = "";
        }, 500);
        scroll.enableScroll();
        hideOverlay();
        v.navCategory.classList.add("collapsed");
        setters.setHeight(v.categoriesWrapper, 0);
        setters.setPadding(v.categoriesWrapper, 0);
        v.categoriesWrapper.style.visibility = "visible";
      }
    }
  }, 50);
}
function desktopCategories() {
  if (v.container.classList.contains("main_page")) {
    v.categoriesWrapper.addEventListener("mouseenter", showOverlay);
    v.categoriesWrapper.addEventListener("mouseleave", hideOverlay);
    v.categoriesWrapper.addEventListener("mouseenter", enterAddWheel);
    v.categoriesWrapper.addEventListener("mouseleave", leaveRemoveWheel);
    v.categoriesWrapper.addEventListener("mouseleave", () => {
      v.breadcrumbText.innerHTML = "KATEGORIE";
    });
  } else {
    v.categoriesWrapper.addEventListener("mouseleave", () => {
      v.breadcrumbText.innerHTML = "MENU";
    });
    v.navCategory.addEventListener("click", collapsedCategory);
  }
  setters.setWidth(v.categoriesWrapper, db.startingWidth);
  setters.setWidth(v.ul, db.startingWidth);
  setters.setWidth(v.navCategory, db.startingWidth);
  setters.setHeight(v.categoriesWrapper, db.startingHeight);

  db.forEach((el) => {
    el.item.removeEventListener("mouseenter", enterHoverLevel1);
    el.item.addEventListener("mouseenter", enterHoverLevel1);
    el.item.removeEventListener("mouseleave", leaveHoverLevel1);
    el.item.addEventListener("mouseleave", leaveHoverLevel1);

    el.values.forEach((el2) => {
      el2.item.classList.remove("active");
      el2.item.removeEventListener("mouseenter", enterHoverLevel2);
      el2.item.addEventListener("mouseenter", enterHoverLevel2);
      el2.item.removeEventListener("mouseleave", leaveHoverLevel2);
      el2.item.addEventListener("mouseleave", leaveHoverLevel2);
      el2.values.forEach((el3) => {
        if (el3 != null) el3.item.style.width = el2.width + "px";

        el3.item.addEventListener("mouseenter", () => {
          v.breadcrumbText.innerHTML = breadcrumbLevel2 + iconRight + el3.name;
        });
        el3.item.addEventListener("mouseleave", () => {
          v.breadcrumbText.innerHTML = breadcrumbLevel2;
        });
      });
    });
  });
}

function enterHoverLevel1(e) {
  let el = getElement(e);
  let nestedUl = el.item.querySelector(".nested-ul-category");

  v.breadcrumbText.innerHTML = el.name;
  currentHeight = db.startingHeight;
  currentWidth = db.startingWidth;

  setters.setWidth(v.categoriesWrapper, db.startingWidth, 1.75);
  setters.setWidth(v.navCategory, db.startingWidth, 1.75);

  el.item.classList.add("active");

  v.breadcrumbText.innerHTML = el.name;
  breadcrumbLevel1 = el.name;

  currentWidth = db.startingWidth * 1.75;

  if (nestedUl == null) {
    setters.setWidth(v.categoriesWrapper, db.startingWidth);
    setters.setWidth(v.navCategory, db.startingWidth);

    setters.setHeight(v.categoriesWrapper, db.startingHeight);
    setters.setHeight(v.ul, db.startingHeight);

    currentWidth = db.startingWidth;
    currentHeight = db.startingHeight;
  } else {
    if (el.height > db.startingHeight) {
      setters.setHeight(v.categoriesWrapper, el.height, 1, 50);
      setters.setHeight(v.ul, el.height, 1, 50);
      currentHeight = el.height + 50;
    } else {
      setters.setHeight(v.categoriesWrapper, db.startingHeight, 1, 10);
      setters.setHeight(v.ul, db.startingHeight, 1, 10);
      currentHeight = db.startingHeight + 10;
    }
    nestedUl.classList.add("active");
    setters.setWidth(nestedUl, db.startingWidth, 0.75);
  }
}
function leaveHoverLevel1(e) {
  let el = getElement(e);
  let nestedUl = el.item.querySelector(".nested-ul-category");

  setters.setHeight(v.categoriesWrapper, db.startingHeight);
  setters.setHeight(v.ul, db.startingHeight);

  setters.setWidth(v.ul, db.startingWidth);
  setters.setWidth(v.categoriesWrapper, db.startingWidth);
  setters.setWidth(v.navCategory, db.startingWidth);

  el.item.classList.remove("active");
  if (nestedUl != null) {
    nestedUl.classList.remove("active");
  }
}
function enterHoverLevel2(e) {
  let el = getParentElementDepth2(e);
  let el2 = getElementDepth2(e);
  let item = el2.item.querySelector(".nested-ul-category");

  // let width = db.startingWidth * 1.75 + el2.columnCount * el2.item.clientWidth;
  let width = db.startingWidth * 1.75 + el2.columnCount * el2.width;

  console.log(el);
  console.log(el2);
  console.log(width);
  console.log(el2.width);
  // let width2 = el2.columnCount * el2.item.clientWidth;
  let width2 = el2.columnCount * el2.width;
  let height = el.height;
  let realHeight = el2.realHeight;
  el2.item.classList.add("active");

  v.breadcrumbText.innerHTML = breadcrumbLevel1 + iconRight + el2.name;
  breadcrumbLevel2 = breadcrumbLevel1 + iconRight + el2.name;

  if (height < realHeight) {
    setters.setHeight(v.categoriesWrapper, realHeight);
    setters.setHeight(v.ul, realHeight);
    currentHeight = realHeight;
  } else {
    setters.setHeight(v.categoriesWrapper, height + 50);
    setters.setHeight(v.ul, height + 50);
    currentHeight = height + 50;
  }
  setters.setWidth(v.categoriesWrapper, width);
  // setters.setWidth(v.nav, width);
  setters.setWidth(v.navCategory, width);
  if (item != null) {
    setters.setWidth(item, width2);
    setters.setHeight(item, realHeight);
    item.classList.add("active");
  } else {
    console.log("tero");
    setters.setHeight(v.categoriesWrapper, el.height + 30);
  }
}
function leaveHoverLevel2(e) {
  let el = getParentElementDepth2(e);
  let el2 = getElementDepth2(e);
  let item = el2.item.querySelector(".nested-ul-category");

  setters.setWidth(v.navCategory, db.startingWidth, 1.75);
  setters.setWidth(v.categoriesWrapper, db.startingWidth, 1.75);

  v.breadcrumbText.innerHTML = el.name;
  el2.item.classList.remove("active");
  if (item != null) {
    item.classList.remove("active");
  }
}
function headerScrollCategory() {
  if (window.pageYOffset > v.header.offsetTop + v.header.clientHeight) {
    if (!v.header.classList.contains("isSticky")) {
      let timeout;
      timeout = setTimeout(() => {
        clearTimeout(timeout);
        v.htmlEl.style.transform = "";
        addLiClickHeader();
        v.logoImg.classList.add("active");
        v.logoImg.classList.remove("reverse");
        v.header.classList.add("isSticky");
        hideOverlay();
        setters.setWidth(v.categoriesWrapper, 0);
        setters.setHeight(v.categoriesWrapper, 0);
        // setters.resetPadding(v.categoriesWrapper);
        setters.setPadding(v.categoriesWrapper, 0);
        v.logoContainer.parentElement.append(v.nav);
        v.logoText.style.display = "none";
        v.navContainer.innerHTML = "";
        v.nav.classList.remove("active");
        v.categoriesWrapper.removeEventListener(
          "mouseenter",
          scroll.disableScroll
        );
        v.categoriesWrapper.removeEventListener(
          "mouseleave",
          scroll.enableScroll
        );

        removeCollapse();
        desktopCategories();
        collapsedCategoriesHeader();
      }, 100);
    }
  } else {
    if (v.header.classList.contains("isSticky")) {
      removeLiClickHeader();
      setters.resetMargin(v.categoriesWrapper);
      setters.resetMargin(v.ul);
      setters.resetPadding(v.categoriesWrapper);
      v.logoImg.classList.add("reverse");
      v.logoImg.classList.remove("active");
      v.header.classList.remove("isSticky");

      hideOverlay();

      v.navContainer.prepend(v.nav);
      v.logoText.style.display = "";
      v.categoriesWrapper.addEventListener("mouseenter", scroll.disableScroll);
      v.categoriesWrapper.addEventListener("mouseleave", scroll.enableScroll);

      v.categoriesWrapper.style.top = "";
      setters.setWidth(v.categoriesWrapper, db.startingWidth);
      v.nav.removeEventListener("click", navHeaderClick);
      if (!v.container.classList.contains("main_page")) {
        setters.setHeight(v.categoriesWrapper, 0);
        setters.setPadding(v.categoriesWrapper, 0);
        v.navCategory.classList.add("collapsed");
        v.categoriesWrapper.removeEventListener(
          "mouseenter",
          scroll.disableScroll
        );
        v.categoriesWrapper.removeEventListener(
          "mouseleave",
          scroll.enableScroll
        );
        collapse();
      } else {
        removeCollapse();
        v.categoriesWrapper.addEventListener("mouseenter", showOverlay);
        v.categoriesWrapper.addEventListener("mouseleave", hideOverlay);
        setTimeout(() => {
          setters.setHeight(v.categoriesWrapper, db.startingHeight);
        }, 1);
      }
    }
  }
}
function collapsedCategoriesHeader() {
  v.categoriesWrapper.removeEventListener("mouseenter", showOverlay);
  v.categoriesWrapper.removeEventListener("mouseleave", hideOverlay);

  v.categoriesWrapper.style.top = v.header.clientHeight - 2 + "px";
  setters.setHeight(v.categoriesWrapper, 0);

  setters.setWidth(v.categoriesWrapper, 0);

  setters.setMargin(v.categoriesWrapper, 0);
  setters.setMargin(v.ul, 0);

  setters.setPadding(v.categoriesWrapper, 0);

  setters.resetWidth(v.nav);
  // let overlay = document.querySelector(".overlay");
  v.overlay.addEventListener("click", hideOverlay);
  v.overlay.addEventListener("click", navHeaderClick);

  v.nav.addEventListener("click", navHeaderClick);
}

function navHeaderClick(e) {
  v.body.style.pointerEvents = "none";
  setTimeout(() => {
    v.body.style.pointerEvents = "all";
  }, 500);
  if (navHeaderClicked == true) {
    hideOverlay();
    scroll.enableScroll();
    setters.setHeight(v.categoriesWrapper, 0);
    v.categoriesWrapper.style.width = "0";
    navHeaderClicked = false;
    v.nav.classList.remove("active");
    v.categoriesWrapper.addEventListener("mouseenter", enterAddWheel);
    v.categoriesWrapper.addEventListener("mouseleave", leaveRemoveWheel);

    headerRemoveWheel();
    return;
  }
  headerAddWheel();
  v.categoriesWrapper.removeEventListener("mouseenter", enterAddWheel);
  v.categoriesWrapper.removeEventListener("mouseleave", leaveRemoveWheel);
  scroll.disableScroll();
  showOverlay();
  v.nav.classList.add("active");
  setters.setHeight(v.categoriesWrapper, db.startingHeight);
  setters.setWidth(v.categoriesWrapper, db.startingWidth);
  setters.setPadding(v.categoriesWrapper, 0);
  navHeaderClicked = true;
}

function enableWheel(e) {
  let variation = parseInt(e.deltaY);
  scrollValue += variation / 5;
  if (scrollValue < 0) {
    scrollValue = 0;
  }
  v.htmlEl.style.transform = "translateY(" + -scrollValue + "px)";
  return false;
}

function resetWheel(e) {
  scrollValue = 0;
}
function enterAddWheel(e) {
  v.body.style.paddingRight = scrollbarWidth + "px";
  v.body.style.overflow = "hidden";
  v.body.style.height = window.innerHeight + "px";
  v.header.style.left = `calc(50% - ${scrollbarWidth / 2}px)`;
  document.addEventListener("wheel", enableWheel);
}
function leaveRemoveWheel(e) {
  v.body.style.overflow = "";
  v.body.style.height = "";
  v.body.style.paddingRight = "";
  v.header.style.left = "";

  document.removeEventListener("wheel", enableWheel);
  resetWheel();
  v.htmlEl.style.transform = "translateY(0px)";
  setTimeout(() => {
    v.htmlEl.style.transform = "";
  }, 200);
}
function enableWheelHeader(e) {
  let variation = parseInt(e.deltaY);
  scrollValueHeader += variation / 5;
  if (scrollValueHeader < 0) {
    scrollValueHeader = 0;
  }
  v.header.style.transform = "translate(-50%," + -scrollValueHeader + "px)";
  return false;
}
function headerAddWheel(e) {
  v.body.style.paddingRight = scrollbarWidth + "px";
  v.body.style.overflow = "hidden";
  v.body.style.height = window.innerHeight + "px";
  v.header.style.left = `calc( 50% - ${scrollbarWidth / 2}px)`;
  document.addEventListener("wheel", enableWheelHeader);
}
function headerRemoveWheel(e = null, scroll = true) {
  v.body.style.overflow = "";
  v.body.style.height = "";
  v.body.style.paddingRight = "";
  v.header.style.left = "";
  v.header.style.transform = "";
  if (scroll == true)
    document.documentElement.scrollTo({
      top: 0,
      left: 0,
      behavior: "smooth",
    });
  document.removeEventListener("wheel", enableWheelHeader);
  // resetWheelHeader();
  //!MAYBE
  // v.htmlEl.style.transform = "translateY(0px)";
  // throw new Error();
  setTimeout(() => {
    v.htmlEl.style.transform = "";
  }, 200);
}
function resetWheelHeader() {
  scrollValueHeader = 0;
}

function collapse() {
  v.navCategory.addEventListener("click", collapsedCategory);
}
function removeCollapse() {
  v.navCategory.removeEventListener("click", collapsedCategory);
}
function collapsedCategory() {
  if (v.navCategory.classList.contains("collapsed")) {
    console.log("click colllapsed");

    v.navCategory.classList.remove("collapsed");

    setters.setHeight(v.categoriesWrapper, db.startingHeight);

    setters.resetPadding(v.categoriesWrapper);
    // resetWheelHeader();
    setters.setWidth(v.categoriesWrapper, db.startingWidth);
    setters.setWidth(v.navCategory, db.startingWidth);
    scroll.disableScroll();
    v.overlay.removeEventListener("click", navHeaderClick);
    v.overlay.addEventListener("click", hideOverlay);
    v.overlay.addEventListener("click", () => {
      navHeaderClicked = false;
      headerRemoveWheel();
      resetWheelHeader();
      setters.setHeight(v.categoriesWrapper, 0);
      setters.setPadding(v.categoriesWrapper, 0);
      v.navCategory.classList.add("collapsed");
      hideOverlay();
      scroll.enableScroll();
      v.body.style.pointerEvents = "none";
      setTimeout(() => {
        v.body.style.pointerEvents = "";
      }, 500);
    });
    showOverlay();
    // overlay.addEventListener("click", enableScroll);
    v.body.style.pointerEvents = "none";
    setTimeout(() => {
      v.body.style.pointerEvents = "";
    }, 500);
  } else {
    if (!v.container.classList.contains("main_page")) {
      console.log("zjebane");
      v.body.style.pointerEvents = "none";
      setTimeout(() => {
        v.body.style.pointerEvents = "";
      }, 500);
      console.log("click not colllapsed");
      scroll.enableScroll();
      hideOverlay();
      v.navCategory.classList.add("collapsed");
      setters.setHeight(v.categoriesWrapper, 0);
      setters.setPadding(v.categoriesWrapper, 0);
    }
  }
}

function setLogo() {
  if (v.body.clientWidth < 500) {
    setters.setWidth(v.logoImg, 88);
    setters.setHeight(v.logoImg, 34);
    setters.setMinWidth(v.logoImg, 88);
    setters.setMinHeight(v.logoImg, 34);
    return;
  }
  setters.setWidth(v.logoImg, 132);
  setters.setHeight(v.logoImg, 46);
  setters.setMinWidth(v.logoImg, 132);
  setters.setMinHeight(v.logoImg, 46);
}
function getElement(e) {
  return db.filter((item) => {
    return item.item == e.target ? item : "";
  })[0];
}
function getParentElementDepth2(e) {
  return db.filter((item) => {
    return item.item == e.target.parentElement.parentElement ? item : "";
  })[0];
}
function getElementDepth2(e) {
  let filter = db.filter((item) => {
    return item.item == e.target.parentElement.parentElement ? item : "";
  })[0];
  return filter.values.filter((item) => {
    return item.item == e.target ? item : "";
  })[0];
}

function addLiClickHeader() {
  li.forEach((el) => {
    el.addEventListener("click", liRedirect);
  });
}
function liRedirect(e) {
  v.nav.removeEventListener("click", navHeaderClick);
  hideOverlay();
  v.body.style.pointerEvents = "none";
  v.categoriesWrapper.style.pointerEvents = "none";
  v.categoriesWrapper.classList.add("pageUnload");
}
function removeLiClickHeader() {
  li.forEach((el) => {
    el.removeEventListener("click", liRedirect);
  });
}
// !HERE
function mobileCategories() {
  if (clickedMobile == false) {
    v.body.classList.add("mobileOpen");
    showOverlay();
    scroll.disableScroll();

    v.categoriesWrapperUl2.addEventListener("wheel", wheelMobile);
    v.categoriesWrapperUl2.addEventListener("touchmove", wheelMobile);
    v.categoriesWrapperUl2.addEventListener("touchstart", wheelMobile);
    v.categoriesWrapperUl2.addEventListener("touchend", wheelMobile);

    v.overlay.addEventListener("click", () => {
      setTimeout(() => {
        v.body.classList.remove("mobileOpen");
      }, 200);
      clickedMobile = false;
      currentLevel = 0;

      v.ulMobile.removeEventListener("wheel", wheelMobile);

      setters.resetTransform(v.categoriesWrapperUl2);

      hideOverlay();
      scroll.enableScroll();
      resetWheelMobile();
      headerRemoveWheel(null, false);

      setTimeout(() => {
        v.iconSpan.innerHTML = "Kategorie";
        liDepth11.forEach((li) => {
          li.parentElement.style.transform = "translateX(0)";
          let liDepth22 = li.querySelectorAll(".li-depth-22");
          liDepth22.forEach((li2) => {
            li2.classList.remove("active");
            li2.parentElement.style.transform = "translateX(0)";
          });
        });
        v.iconGoBack.style.display = "";
      }, 200);
    });
    setters.setTranslateX(v.categoriesWrapperUl2, 0);
    clickedMobile = true;
  } else {
    // headerRemoveWheel();
    setTimeout(() => {
      v.body.classList.remove("mobileOpen");
    }, 200);
    hideOverlay();
    v.ulMobile.removeEventListener("wheel", wheelMobile);
    scroll.enableScroll();
    v.categoriesWrapperUl2.style.transform = "";
    currentLevel = 0;
    clickedMobile = false;
  }
}

liDepth11.forEach((li) => {
  if (li.querySelector("a>i")) {
    li.querySelector("a>i").addEventListener("click", (e) => {
      e.preventDefault();
      liDepth11.forEach((li) => {
        li.classList.remove("active");
      });
      currentElementMobile = li.parentElement;

      currentLevel = 1;
      resetWheelMobile();
      if (li.querySelector("div>i") != null) {
        v.iconSpan.innerHTML = li.querySelector("div>span").innerHTML;
        iconLevelTwoText = li.querySelector("div> span").innerHTML;
        li.classList.add("active");
        li.parentElement.style.transform = "translateX(-100%)";
        li.querySelector(".nested-ul-category2").display = "";

        let liDepth22 = li.querySelectorAll(".li-depth-22");
        liDepth22.forEach((li2) => {
          currentElementMobile = li2.parentElement;

          if (li2.querySelector("div>i")) {
            li2.querySelector("div>i").addEventListener("click", () => {
              currentLevel = 2;
              currentElementMobile = li2.parentElement;
              console.log(li2.parentElement);
              // console.log(currentElementMobile);
              // console.log("li1");
              resetWheelMobile();
              liDepth22.forEach((li2) => {
                li2.classList.remove("active");
              });
              li2.classList.add("active");
              v.iconSpan.innerHTML = li2.querySelector("div> a span").innerHTML;

              li2.parentElement.style.transform = "translateX(-100%)";
              li2.querySelector(".nested-ul-category2").display = "";
            });
          }
        });
      }
    });
  }
});

function wheelMobile(e) {
  let value;
  let height = currentElementMobile ? currentElementMobile.clientHeight : null;
  if (e.type == "wheel") {
    wheelValueMobile += parseInt(e.deltaY) / 5;
    if (wheelValueMobile < 0) wheelValueMobile = 0;
    value = wheelValueMobile;
  } else if (e.type == "touchmove") {
    let x = e.touches[0].pageY;

    touchSavedValue > x ? (currentDelta += 10) : (currentDelta -= 10);
    touchSavedValue = x;

    // if (height != null && currentDelta > height) {
    //   currentDelta -= v.ulMobile.clientHeight;
    // }

    if (currentDelta < 0) currentDelta = 0;

    value = currentDelta;
  }
  currentLevel == 0
    ? setters.setTranslate(v.ulMobileInnerUl, 0, -value)
    : setters.setTranslate(v.ulMobileInnerUl, -100, -value, "%");
}
function resetWheelMobile() {
  console.log("resetWheelMobile");

  wheelValueMobile = 0;
  currentDelta = 0;
  let translateX = getComputedStyle(v.ulMobileInnerUl)
    .transform.replace(/[a-z()\s\-]/g, "")
    .split(",")[4];

  // setters.setTranslate(v.ulMobileInnerUl, translateX, 0);

  // console.log(translateX.transform);
}

v.goBackDiv.addEventListener("click", () => {
  switch (currentLevel) {
    case 0:
      setTimeout(() => {
        v.body.classList.remove("mobileOpen");
      }, 200);
      hideOverlay();
      scroll.enableScroll();
      v.categoriesWrapperUl2.style.transform = "";
      currentLevel = 0;
      clickedMobile = false;
      console.log("0");
      resetWheelMobile();
      break;
    case 1:
      console.log("1");
      liDepth11.forEach((li) => {
        li.parentElement.style.transform = "";
      });
      v.iconSpan.innerHTML = "Kategorie";
      v.iconGoBack.style.display = "";
      currentLevel = 0;
      resetWheelMobile();
      break;
    case 2:
      console.log("2");
      v.iconSpan.innerHTML = iconLevelTwoText;

      liDepth11.forEach((li) => {
        li.parentElement.style.transform = "translateX(-100%)";
        let liDepth22 = li.querySelectorAll(".li-depth-22");
        liDepth22.forEach((li2) => {
          li2.classList.remove("active");
          li2.parentElement.style.transform = "translateX(0)";
        });
      });
      v.iconGoBack.style.display = "";
      currentLevel = 1;
      resetWheelMobile();
      break;
    default:
      console.log("default");
      break;
  }
});

function scrollMobile() {
  if (window.pageYOffset > v.header.clientHeight / 8) {
    v.header.classList.add("stickyMobile");
  } else {
    v.header.classList.remove("stickyMobile");
    setTimeout(() => {
      setters.marginTop(v.container, v.header.clientHeight + 10);
    }, 200);
  }
}

init();

window.addEventListener("scroll", () => {
  console.log("scrollin");
});
