function categoriesFiltersWrapper() {
  this.filterBlocks = Array.from(document.querySelectorAll(".filters__block"));

  this.init = () => {
    this.filterBlocks.forEach((filter) => {
      let toggler = filter.querySelector(".--show-hidden");
      let ul = filter.querySelector("ul.filters__content");
      let li = Array.from(ul.querySelectorAll("li"));
      let ulStargingHeight = ul.clientHeight;
      let filterExpands = filter.querySelector(".filters__expand");
      let filterExpandsStartingHeight = filterExpands.clientHeight;

      ul.style.height = ulStargingHeight + "px";
      filterExpands.style.height = filterExpandsStartingHeight + "px";
      li.forEach((item) => {
        item.style.display = "block";
      });
      if (toggler != null) {
        toggler.addEventListener("click", () => {
          let height;

          if (ul.classList.contains("collapsed")) {
            height = ulStargingHeight;
            ul.classList.remove("collapsed");
            filterExpands.style.height = filterExpandsStartingHeight + "px";
          } else {
            height = (li[0].clientHeight + 10) * li.length;
            ul.classList.add("collapsed");
            filterExpands.style.height = height + toggler.clientHeight + "px";
          }
          ul.style.height = height + "px";
        });
      }

      let toggler2 = filter.querySelector(".filters__toggler");
      toggler2.classList.add("expanded");

      toggler2.addEventListener("click", () => {
        if (!toggler2.classList.contains("expanded")) {
          toggler2.classList.add("expanded");
          filterExpands.classList.remove("importantHeight0");
        } else {
          toggler2.classList.remove("expanded");
          filterExpands.classList.add("importantHeight0");
        }
      });
    });
  };
}
const categoriesFiltersWrapperVar = new categoriesFiltersWrapper();

categoriesFiltersWrapperVar.init();
