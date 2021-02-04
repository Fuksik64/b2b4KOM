function rotateChevron() {
  let footerLinks = Array.from(document.querySelectorAll(".footer_links > li"));

  return {
    rotate() {
      footerLinks.forEach((link) => {
        link.addEventListener("click", (e) => {
          if (
            link.getAttribute("data-toggle") != null &&
            link.getAttribute("data-toggle") == "true"
          ) {
            link.setAttribute("data-toggle", false);
            return;
          }

          link.setAttribute("data-toggle", true);
        });
      });
    },
  };
}
rotateChevron().rotate();
