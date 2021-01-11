export function resetHeight(element, value = "") {
  element.style.height = value;
}
export function resetWidth(element) {
  element.style.width = "";
}
export function resetPadding(element) {
  element.style.padding = "";
}
export function setHeight(element, height, mulitplayer = 1, add = 0) {
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
export function setWidth(element, width, mulitplayer = 1, add = 0) {
  element.style.width = width * mulitplayer + add + "px";
}
export function setMinWidth(element, width, mulitplayer = 1, add = 0) {
  element.style.minWidth = width * mulitplayer + add + "px";
}
export function setPadding(element, padding, mulitplayer = 1) {
  element.style.padding = padding * mulitplayer + "px";
}
