export default function resetDimensions(variables) {
  let v = variables;
  let elements = Array.from(v.navContainer.querySelectorAll("*"));
  elements.forEach((el) => {
    el.removeAttribute("style");
  });
}
