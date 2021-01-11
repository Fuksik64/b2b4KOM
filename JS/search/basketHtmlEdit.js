let oldXHR = window.XMLHttpRequest;

function newXHR() {
  let realXHR = new oldXHR();
  realXHR.addEventListener(
    "readystatechange",
    function () {
      if (realXHR.readyState == 4 && realXHR.status == 200) {
        if (this.responseText) {
          console.log(JSON.parse(this.responseText));
        }
        console.log(JSON.parse(this.responseText));
      }
    },
    false
  );
  return realXHR;
}
window.XMLHttpRequest = newXHR;
console.log("haba");
