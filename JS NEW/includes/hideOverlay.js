export default function hideOverlay() {
  let overlay = document.querySelector(".overlay");
  if (overlay) {
    overlay.classList.remove("active");
  }
}
