function pictureDropdown() {
  const button = document.querySelector("#category-picture-dropdown-button");
  const list = document.querySelector("#category-picture-dropdown");
  const length = list.querySelectorAll("a").length;
  const lastLi = list.querySelector("a:last-child");
  const width = button.offsetWidth;
  const heightMax = 500;
  const height = 20;

  let active = false;
  const count = Math.ceil((length * height) / heightMax);

  function setWidth() {
    Array.from(list.querySelectorAll("li")).forEach((li) => {
      li.style.width = width + "px";
    });
  }
  setWidth();
  return {
    init() {
      window.addEventListener("click", (e) => {
        if (e.target == button) {
          let current = width * count;
          if (active == false) {
            list.style.width = current + "px";
            active = true;
          } else {
            list.style.width = width + "px";
            active = false;
          }

          list.classList.toggle("active");
          return;
        }
        active = false;
        list.style.width = width + "px";
        list.classList.remove("active");
      });
    },
  };
}

const dropdown = pictureDropdown();
window.addEventListener("DOMContentLoaded", dropdown.init);
