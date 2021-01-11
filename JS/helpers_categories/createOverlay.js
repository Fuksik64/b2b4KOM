export function createOverlay() {
  if (!document.querySelector(".overlay")) {
    let body = document.body,
      html = document.documentElement;
    let height = Math.max(
      body.scrollHeight,
      body.offsetHeight,
      html.clientHeight,
      html.scrollHeight,
      html.offsetHeight
    );
    let div = document.createElement("div");
    div.className = "overlay";
    div.style.height = height + "px";
    document.getElementsByTagName("body")[0].prepend(div);
  }
}
