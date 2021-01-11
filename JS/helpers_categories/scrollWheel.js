import { variables } from "./variables.js";
let v = variables();
let htmlEl = v.htmlEl;
let scrollValue = 0;
let body = v.body;
let header = v.header;
let scrollbarWidth = window.innerWidth - document.body.clientWidth;
let scrollValueHeader = 0;
export function enableWheel(e) {
  let variation = parseInt(e.deltaY);
  scrollValue += variation / 5;
  if (scrollValue < 0) {
    scrollValue = 0;
  }
  htmlEl.style.transform = "translateY(" + -scrollValue + "px)";
  return false;
}

export function resetWheel(e) {
  scrollValue = 0;
}
export function enterAddWheel(e) {
  body.style.paddingRight = scrollbarWidth + "px";
  body.style.overflow = "hidden";
  body.style.height = window.innerHeight + "px";
  header.style.left = `calc(50% - ${scrollbarWidth / 2}px)`;
  document.addEventListener("wheel", enableWheel);
}
export function leaveRemoveWheel(e) {
  body.style.overflow = "";
  body.style.height = "";
  body.style.paddingRight = "";
  header.style.left = "";

  document.removeEventListener("wheel", enableWheel);
  resetWheel();
  htmlEl.style.transform = "translateY(0px)";
  setTimeout(() => {
    htmlEl.style.transform = "";
  }, 200);
}
export function enableWheelHeader(e) {
  let variation = parseInt(e.deltaY);
  scrollValueHeader += variation / 5;
  if (scrollValueHeader < 0) {
    scrollValueHeader = 0;
  }
  header.style.transform = "translate(-50%," + -scrollValueHeader + "px)";
  return false;
}
export function headerAddWheel(e) {
  body.style.paddingRight = scrollbarWidth + "px";
  body.style.overflow = "hidden";
  body.style.height = window.innerHeight + "px";
  header.style.left = `calc( 50% - ${scrollbarWidth / 2}px)`;
  document.addEventListener("wheel", enableWheelHeader);
}

export function headerRemoveWheel(e) {
  body.style.overflow = "";
  body.style.height = "";
  body.style.paddingRight = "";
  header.style.left = "";
  header.style.transform = "";
  document.documentElement.scrollTo({
    top: 0,
    left: 0,
    behavior: "smooth",
  });
  document.removeEventListener("wheel", enableWheelHeader);
  resetWheelHeader();
  htmlEl.style.transform = "translateY(0px)";
  setTimeout(() => {
    htmlEl.style.transform = "";
  }, 200);
}
export function resetWheelHeader() {
  scrollValueHeader = 0;
}
