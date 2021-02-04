export default function disablePointer(time) {
  document.body.style.pointerEvents = "none";
  setTimeout(() => {
    document.body.style.pointerEvents = "";
  }, time);
}
