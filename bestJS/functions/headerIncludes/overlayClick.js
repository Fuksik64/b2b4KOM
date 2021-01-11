import variables from "../../includes/variables.js";
import hideOverlay from "../../includes/hideOverlay.js";
import { wrapCategories } from "../header.js";
import * as scroll from "../../includes/scroll.js";
export default function overlayClick() {
  let v = variables();
  let overlay = v.overlay;

  return {
    enable() {
      overlay.addEventListener("click", hideOverlay);
      overlay.addEventListener("click", wrapCategories);
      overlay.addEventListener("click", scroll.enable);
    },
    disable() {
      overlay.removeEventListener("click", hideOverlay);
      overlay.removeEventListener("click", wrapCategories);
      overlay.removeEventListener("click", scroll.enable);
      v.header.removeEventListener("wheel", removeWheel);
    },
  };
}
