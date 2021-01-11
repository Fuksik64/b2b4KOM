import { showOverlay } from "./helpers_categories/showOverlay.js";
import { hideOverlay } from "./helpers_categories/hideOverlay.js";
import { createOverlay } from "./helpers_categories/createOverlay.js";
import * as setters from "./helpers_categories/setters.js";
import { variables } from "./helpers_categories/variables.js";
// import * as scroll from "./helpers_categories/scrollAction.js";
import { collapse } from "./helpers_categories/collapse.js";
import { startingWidthDb } from "./headerResize";
export function newCategoryDesktopWithDb(database) {
  let v = variables();
  let db = database;
  let breadcrumbText = v.breadcrumbText;
  let nav = v.navCategory;
  let categoriesWrapper = v.categoriesWrapper;
  let ul = v.ul;
  let iconRight = '<i class="icon-chevron-right"></i>';
  let container = v.container;

  db.startingHeight = ul.clientHeight;
  db.startingWidth = startingWidthDb + 2;

  let currentHeight = db.startingHeight;
  let currentWidth = db.startingWidth;

  let breadcrumbLevel1 = "";
  let breadcrumbLevel2 = "";

  setters.setWidth(nav, db.startingWidth);
  setters.setWidth(ul, db.startingWidth);
  setters.setWidth(categoriesWrapper, db.startingWidth);

  ul.addEventListener("mouseenter", () => {
    ul.style.height = currentHeight;
  });

  if (container.classList.contains("main_page")) {
    categoriesWrapper.addEventListener("mouseenter", showOverlay);
    categoriesWrapper.addEventListener("mouseleave", hideOverlay);
    categoriesWrapper.addEventListener("mouseleave", () => {
      breadcrumbText.innerHTML = "KATEGORIE";
    });

    // categoriesWrapper.addEventListener("mouseenter", scroll.disableScroll);
    // categoriesWrapper.addEventListener("mouseleave", scroll.enableScroll);
  } else {
    categoriesWrapper.addEventListener("mouseleave", () => {
      breadcrumbText.innerHTML = "MENU";
    });
  }

  db.forEach((el) => {
    // !DEPTH1
    let nestedUl = el.item.querySelector(".nested-ul-category");
    el.item.addEventListener("mouseenter", () => {
      currentHeight = db.startingHeight;
      currentWidth = db.startingWidth;

      setters.setWidth(categoriesWrapper, db.startingWidth, 1.75);
      setters.setWidth(nav, db.startingWidth, 1.75);
      el.item.classList.add("active");

      breadcrumbText.innerHTML = el.name;
      breadcrumbLevel1 = el.name;

      currentWidth = db.startingWidth * 1.75;
      if (nestedUl == null) {
        setters.setWidth(categoriesWrapper, db.startingWidth);
        setters.setWidth(nav, db.startingWidth);
        setters.setHeight(categoriesWrapper, db.startingHeight);
        setters.setHeight(ul, db.startingHeight);

        currentWidth = db.startingWidth;
        currentHeight = db.startingHeight;
      } else {
        if (el.height > db.startingHeight) {
          setters.setHeight(categoriesWrapper, el.height, 1, 50);
          setters.setHeight(ul, el.height, 1, 50);
          currentHeight = el.height + 50;
        } else {
          setters.setHeight(categoriesWrapper, db.startingHeight, 1, 10);
          setters.setHeight(ul, db.startingHeight, 1, 10);
          currentHeight = db.startingHeight + 10;
        }
        nestedUl.classList.add("active");
        nestedUl.style.width = db.startingWidth * 0.75 + "px";
      }
    });
    el.item.addEventListener("mouseleave", () => {
      setters.setHeight(categoriesWrapper, db.startingHeight);
      setters.setHeight(ul, db.startingHeight);
      setters.setWidth(ul, db.startingWidth);
      setters.setWidth(categoriesWrapper, db.startingWidth);
      setters.setWidth(nav, db.startingWidth);
      el.item.classList.remove("active");
      if (nestedUl != null) {
        nestedUl.classList.remove("active");
      }
    });
    //!DEPTH2
    el.values.forEach((el2) => {
      let item = el2.item.querySelector(".nested-ul-category");

      el2.item.classList.remove("active");
      el2.values.forEach((el3) => {
        if (el3 != null) {
          el3.item.style.width = el2.width + "px";
        }
      });

      el2.item.addEventListener("mouseenter", () => {
        let width = db.startingWidth * 1.75 + el2.columnCount * el2.width;
        let width2 = el2.columnCount * el2.width;
        let height = el.height;
        let realHeight = el2.realHeight;
        el2.item.classList.add("active");

        breadcrumbText.innerHTML = breadcrumbLevel1 + iconRight + el2.name;
        breadcrumbLevel2 = breadcrumbLevel1 + iconRight + el2.name;

        if (height < realHeight) {
          setters.setHeight(categoriesWrapper, realHeight);
          setters.setHeight(ul, realHeight);
          currentHeight = realHeight;
        } else {
          setters.setHeight(categoriesWrapper, height + 50);
          setters.setHeight(ul, height + 50);
          currentHeight = height + 50;
        }
        setters.setWidth(categoriesWrapper, width);
        setters.setWidth(nav, width);
        if (item != null) {
          setters.setWidth(item, width2);
          item.classList.add("active");
        }
      });

      el2.item.addEventListener("mouseleave", () => {
        el2.item.classList.remove("active");
        if (item != null) {
          item.classList.remove("active");
        }
      });

      el2.values.forEach((el3) => {
        el3.item.addEventListener("mouseenter", () => {
          breadcrumbText.innerHTML = breadcrumbLevel2 + iconRight + el3.name;
        });
        el3.item.addEventListener("mouseleave", () => {
          breadcrumbText.innerHTML = breadcrumbLevel2;
        });
      });
    });
  });
}
