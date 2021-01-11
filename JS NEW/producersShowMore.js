const buttonShow = document.querySelector("#showMoreProducers");
const container = document.querySelector("#producers-list_sub");



function collapseProducers() {
  let shown = false;
  let height;
  let timeout;
  return {
    collapse: () => {
      if (shown == false) {
        container.style.height = height + "px";
        shown = true;
        buttonShow.innerHTML = "Ukryj<i class='icon-chevron-right'></i>";
      } else {
        window.scrollTo({
          behavior: "smooth",
          top: 0,
        });
        shown = false;
        container.style.height = "";
        buttonShow.innerHTML = "Pokaż<i class='icon-chevron-right'></i>";
      }
    },
    getHeight() {
      clearTimeout(timeout);
      timeout = setTimeout(() => {
        container.style.height = "unset";
        height = container.parentElement.clientHeight;
        container.style.height = "";
      }, 500);
    },
  };
}
const producersCollapse = collapseProducers();
producersCollapse.getHeight();
window.addEventListener("resize", producersCollapse.getHeight);
buttonShow.addEventListener("click", producersCollapse.collapse);
