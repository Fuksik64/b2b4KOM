import variables from "../../includes/variables.js";

let scrollValueHeader = 0;
export function enable() {
  document.addEventListener("wheel", enableWheelHeader, { passive: true });
}
export function disable() {
  document.removeEventListener("wheel", enableWheelHeader, { passive: true });
  resetWheelHeader();
}
function enableWheelHeader(e) {
  let v = variables();
  let variation = parseInt(e.deltaY);
  scrollValueHeader += variation / 5;
  if (scrollValueHeader < 0) {
    scrollValueHeader = 0;
  }
  v.header.setAttribute(
    "style",
    `transform:translate(-50%,${-scrollValueHeader / 2}px) !important`
  );
}

function resetWheelHeader() {
  let v = variables();
  scrollValueHeader = 0;
  v.header.style.transform = `translateY(0)`;
}
