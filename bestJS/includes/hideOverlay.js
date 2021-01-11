import { scroll } from "../app.js";
export default function hideOverlay() {
  let overlay = document.querySelector(".overlay");
  if (overlay) {
    scroll.observe(document.querySelector(".b2b-category"));
    overlay.classList.remove("active");
  }
}
