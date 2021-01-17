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
  variation > 0 ? (scrollValueHeader += 50) : (scrollValueHeader -= 50);

  if (scrollValueHeader < 0) {
    scrollValueHeader = 0;
  }
  v.header.setAttribute(
    "style",
    `transform:translate(0,${-scrollValueHeader}px) !important`
  );
}

function resetWheelHeader() {
  let v = variables();
  scrollValueHeader = 0;
  v.header.style.transform = `translate(0,0)`;
}
