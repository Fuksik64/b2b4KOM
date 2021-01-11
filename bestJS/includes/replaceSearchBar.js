import variables from "./variables.js";
export default function replaceSearchBar() {
  let v = variables();
  v.bottomHeader.insertBefore(v.searchBar, v.bottomHeader.lastChild);
}
