import { scroll } from "../app.js";
export default function showOverlay() {
  let overlay = document.querySelector(".overlay");
  if (overlay) {
    scroll.unobserve(document.querySelector(".b2b-category"));
    overlay.classList.add("active");
  }
}
