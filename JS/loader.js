document.addEventListener("DOMContentLoaded", loader);
function loader() {
  let loader = document.querySelector(".loader");
  loader.classList.add("loaded");
  setTimeout(() => {
    loader.outerHTML = "";
  }, 1000);
}
