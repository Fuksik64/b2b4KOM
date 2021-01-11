function breadcrumbReplace() {
  this.breadcrumb = document.querySelector(".breadcrumbs");
  this.breadcrumbContainer = document.querySelector(".breadcrumb-search");
  this.breadcrumbParent = this.breadcrumb.parentNode;

  this.replace = () => {
    this.breadcrumbContainer.innerHTML = this.breadcrumb.outerHTML;
    this.breadcrumbParent.removeChild(this.breadcrumb);
  };
}
const replace = new breadcrumbReplace();
replace.replace();
