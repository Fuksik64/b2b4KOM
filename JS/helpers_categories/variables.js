export function variables() {
  return {
    htmlEl: document.documentElement,
    body: document.body,
    header: document.querySelector("header"),
    nav: document.querySelector(".custom-nav"),
    navCategory: document.querySelector(".nav-category"),
    navContainer: document.querySelector(".col-3-height"),
    breadcrumbText: document.querySelector(".nav-category p"),
    logoText: document.querySelector("#logo .logo-text"),
    logoImg: document.querySelector("#logo > a > img"),
    logoContainer: document.querySelector("#logo a "),
    container: document.querySelector("#container"),
    categoriesWrapper: document.querySelector(".categories-wrapper-ul"),
    ul: document.querySelector(".ul-category"),
    liDepth1: Array.from(document.querySelectorAll(".li-depth-1")),
    collapseClick: true,
  };
}
