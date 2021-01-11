export function hideOverlay(e) {
  let overlay = document.querySelector(".overlay");
  if (overlay) {
    overlay.classList.remove("active");
  }
}
