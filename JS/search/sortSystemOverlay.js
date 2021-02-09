function sortSystemOverlay() {
  const overlay = document.querySelector(".overlay");
  const dropdownCheck = document.querySelector(
    ".sort-system-custom .f-dropdown-toggle"
  );
  const dropdownMenu = document.querySelector(
    ".sort-system-custom .f-dropdown-menu"
  );
  return {
    init() {
      overlay.addEventListener("click", () => {
        if (window.innerWidth < 978) {
          overlay.classList.remove("active");
          overlay.classList.remove("sortSystem");
        }
      });
      dropdownCheck.addEventListener("click", () => {
        if (window.innerWidth < 978) {
          overlay.classList.add("sortSystem");
          overlay.classList.add("active");
        }
      });
      dropdownMenu.addEventListener("click", () => {
        if (window.innerWidth < 978) {
          overlay.classList.remove("active");
          overlay.classList.remove("sortSystem");
        }
      });
    },
  };
}
const overlay = sortSystemOverlay().init();
