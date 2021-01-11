export function get(db, e) {
  return db.filter((item) => {
    return item.item == e.target ? item : "";
  })[0];
}
export function getParentDepth2(db, e) {
  return db.filter((item) => {
    return item.item == e.target.parentElement.parentElement ? item : "";
  })[0];
}
export function getDepth2(db, e) {
  let filter = db.filter((item) => {
    return item.item == e.target.parentElement.parentElement ? item : "";
  })[0];
  return filter.values.filter((item) => {
    return item.item == e.target ? item : "";
  })[0];
}
