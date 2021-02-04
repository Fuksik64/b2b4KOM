export function resetHeight(element, value = "") {
  element.style.height = value;
}
export function resetWidth(element) {
  element.style.width = "";
}
export function resetMultipleWidth(arrayOfElements) {
  if (arrayOfElements == null || arrayOfElements.length == 0)
    throw new Error("Array empty or undefined/null");

  arrayOfElements.forEach((element) => {
    element.style.width = "";
  });
}
export function resetPadding(element) {
  element.style.padding = "";
}
export function height(element, height, mulitplayer = 1, add = 0) {
  element.style.height = height * mulitplayer + add + "px";
}
export function setMinHeight(element, height, mulitplayer = 1, add = 0) {
  element.style.minHeight = height * mulitplayer + add + "px";
}
export function setMargin(element, margin, mulitplayer = 1, add = 0) {
  element.style.margin = margin * mulitplayer + add + "px";
}
export function resetMargin(element) {
  element.style.margin = "";
}
export function marginTop(element, marginTop, mulitplayer = 1, add = 0) {
  element.style.marginTop = marginTop * mulitplayer + add + "px";
}
export function width(element, width, mulitplayer = 1, add = 0) {
  element.style.width = width * mulitplayer + add + "px";
}
export function widthMultiple(
  arrayOfElements,
  width,
  mulitplayer = 1,
  add = 0
) {
  if (Number.isNaN(width))
    throw new Error("Width is not a number! - width multiple");
  arrayOfElements.forEach((element) => {
    element.style.width = width * mulitplayer + add + "px";
  });
}
export function heightMultiple(
  arrayOfElements,
  height,
  mulitplayer = 1,
  add = 0
) {
  if (Number.isNaN(height))
    throw new Error("Height is not a number! - height multiple");

  arrayOfElements.forEach((element) => {
    element.style.height = height * mulitplayer + add + "px";
  });
}
export function setMinWidth(element, width, mulitplayer = 1, add = 0) {
  element.style.minWidth = width * mulitplayer + add + "px";
}
export function setPadding(element, padding, mulitplayer = 1) {
  element.style.padding = padding * mulitplayer + "px";
}
export function setTranslateY(element, value, variant = "px") {
  element.style.transform = "translateY(" + value + variant + ")";
}
export function setTranslateX(element, value, variant = "px") {
  element.style.transform = "translateX(" + value + variant + ")";
}
export function setTranslate(
  element,
  valueX,
  valueY,
  variantX = "px",
  variantY = "px"
) {
  element.style.transform = `translate(${valueX + variantX},${
    valueY + variantY
  })`;
}
export function resetTransform(element) {
  element.style.transform = "";
}
export function setBorderToZero(element) {
  element.style.border = 0;
}
export function resetBorder(element) {
  element.style.border = "";
}
