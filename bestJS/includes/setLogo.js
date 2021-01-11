import "./variables.js";
import * as setters from "./setters.js";
import variables from "./variables.js";

export default function setLogo(small = false) {
  let v = variables();
  if (small == true) {
    setters.width(v.logoImg, 67);
    setters.height(v.logoImg, 23);
    setters.setMinWidth(v.logoImg, 67);
    setters.setMinHeight(v.logoImg, 23);
    return;
  }
  setters.width(v.logoImg, 132);
  setters.height(v.logoImg, 46);
  setters.setMinWidth(v.logoImg, 132);
  setters.setMinHeight(v.logoImg, 46);
}
