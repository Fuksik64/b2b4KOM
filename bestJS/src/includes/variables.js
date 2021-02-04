export default function variables() {
  return {
    htmlEl: document.documentElement,
    body: document.body,
    overlay: document.querySelector(".overlay"),
    bottomHeader: document.querySelector(".bottom-header-custom"),
    topHeader: document.querySelector(".top-header-wrapper"),
    header: document.querySelector("header"),
    nav: document.querySelector(".custom-nav"),
    navHeader: document.querySelector(".custom-nav-header"),
    navCategory: document.querySelector(".nav-category"),
    navContainer: document.querySelector(".col-3-height"),
    breadcrumbText: document.querySelector(".nav-category p"),
    logoText: document.querySelector("#logo .logo-text"),
    logoImg: document.querySelector("#logo > a > img"),
    logoA: document.querySelector("#logo > a"),
    logoContainer: document.querySelector("#logo a "),
    container: document.querySelector("#container"),
    categoriesWrapperDesktop: document.querySelector(".categories-wrapper-ul"),
    categoriesWrapperHeader: document.querySelector(
      ".categories-wrapper-ul-header"
    ),
    ulDesktop: document.querySelector(".ul-category"),
    ulHeader: document.querySelector(".ul-category-header"),
    liDepthOneHeader: Array.from(
      document.querySelectorAll(".li-depth-1-header")
    ),
    liDepthOneDesktop: Array.from(document.querySelectorAll(".li-depth-1")),
    liDepthOneMobile: document.querySelectorAll(".li-depth-11"),
    ulMobileWrapper: document.querySelector(".ul-category2"),
    liDepthOneMobileIcon: document.querySelectorAll(".li-depth-11 > i"),
    collapseClick: true,
    wrapperMobileDivUl: document.querySelector(".wrapper-div-ul-2"),
    searchBar: document.querySelector("#menu_search"),
    mobileButton: document.querySelector(".button-mobile-categories"),
    categoriesWrapperMobile: document.querySelector(".categories-wrapper-ul2"),
    menuSettings: document.querySelector("#menu_settings"),
    menuSettings2: document.querySelector("#menu_settings2"),
    goBackDiv: document.querySelector(".categoriesMobileBreadcrumb"),
    iconGoBack: document.querySelector(".categoriesMobileBreadcrumb i "),
    iconInBreadcrumbMobile: document.querySelector(
      ".categoriesMobileBreadcrumb i"
    ),
    iconSpan: document.querySelector(".categoriesMobileBreadcrumb span "),
    ulMobile: document.querySelector(".wrapper-div-ul-2"),
    bottomHeader: document.querySelector(".bottom-header-custom"),
    ulMobileInnerUl: document.querySelector(".wrapper-div-ul-2 ul"),
    iconRight: '<i class="icon-chevron-right"></i>',
    mobileHideButton: document.querySelector(".backButtonContainer"),
  };
}
