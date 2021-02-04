import variables from "./variables.js";
export default function reverseSearchBar() {
  let v = variables();
  v.topHeader.insertBefore(v.searchBar, v.menuSettings);
}
