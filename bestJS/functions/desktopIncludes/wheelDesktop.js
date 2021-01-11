import { v } from "../desktop.js";
let scrollValue = 0;
;
export function enable(e) {
  let variation = parseInt(e.deltaY);
  scrollValue += variation / 5;
  if (scrollValue < 0) {
    scrollValue = 0;
  }
  v.body.style.transform = "translateY(" + -scrollValue + "px)";
  return false;
}

export function reset(e) {
  scrollValue = 0;
}
export function enterAdd(e) {
  document.addEventListener("wheel", enable, { passive: true });
}
export function leaveRemove(e) {
  document.removeEventListener("wheel", enable, { passive: true });
  reset();
  v.body.style.transform = "translateY(0px)";
  setTimeout(() => {
    v.body.style.transform = "";
  }, 200);
}
