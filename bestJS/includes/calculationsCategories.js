export function calculateHeight(parent, child, height = 0) {
  if (height == 0) throw new Error("Calculated height = 0");

  //TODO RETURN CALCULATED HEIGHT IF PARENT IS GREATER RETURN PARENT HEIGHT
  //TODO ELSE RETURN CHILD HEIGHT
  if (parent.length > child.length) return parent.length * height;
  return child.length * height;
}

export function calculateOneHeight(element, height) {
  if (element == null || element.length == 0)
    throw new Error("Element = null or Lenght = 0");
  if (Number.isNaN(height)) throw new Error("Height is not a number");
  return element.length * height;
}
export function calculateMaxWidth(arrayOfElements) {
  if (arrayOfElements == null || arrayOfElements.length == 0)
    throw new Error("Array empty or undefined");

  let WIDTH = 0;
  arrayOfElements.forEach((element) => {
    if (element.offsetWidth > WIDTH) {
      WIDTH = element.offsetWidth;
    }
  });

  return WIDTH;
}
export function calculateStartHeight(ulList, liHeight) {
  return ulList.length * liHeight;
}
