function sortSystemOverlay() {
  const overlay = document.querySelector(".overlay");
  const dropdownCheck = document.querySelector(
    ".sort-system-custom .f-dropdown-toggle"
  );
  const dropdownMenu = document.querySelector(
    ".sort-system-custom .f-dropdown-menu"
  );
  console.log(dropdownMenu);
  return {
    init() {
      overlay.addEventListener("click", () => {
        overlay.classList.remove("active");
        overlay.classList.remove("sortSystem");
      });
      dropdownCheck.addEventListener("click", () => {
        overlay.classList.add("sortSystem");
        overlay.classList.add("active");
      });
      dropdownMenu.addEventListener("click", () => {
        console.log("click");
        overlay.classList.remove("active");
        overlay.classList.remove("sortSystem");
      });
    },
  };
}
const overlay = sortSystemOverlay().init();
