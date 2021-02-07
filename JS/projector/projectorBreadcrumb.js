function projectorBreadcrumb() {
  const before = document.querySelector(".bc-projector-before");
  const after = document.querySelector(".bc-projector-after");
  const bc = document.querySelector(".breadcrumb-search");
  let scrollMax;
  return {
    init() {
      bc.scrollLeft = 999999999;
      scrollMax = bc.scrollLeft;
      bc.scrollLeft = 0;
      bc.addEventListener("scroll", (e) => {
        if (bc.scrollLeft >= scrollMax) {
          bc.scrollLeft = scrollMax;
        }
        before.style.transform = `translateX(${bc.scrollLeft}px)`;
        after.style.transform = `translateX(${bc.scrollLeft}px)`;

        if (bc.scrollLeft == 0) {
          before.classList.remove("active");
          after.classList.add("active");
          return;
        } else if (bc.scrollLeft > 0 && bc.scrollLeft < scrollMax) {
          before.classList.add("active");
          after.classList.add("active");
          return;
        }
        before.classList.add("active");
        after.classList.remove("active");
      });
    },
  };
}

const pB = projectorBreadcrumb().init();
