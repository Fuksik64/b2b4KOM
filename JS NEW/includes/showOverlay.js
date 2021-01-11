export default function showOverlay() {
  let overlay = document.querySelector(".overlay");
  if (overlay) {
    overlay.classList.add("active");
  }
}
