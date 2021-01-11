export default function backButton() {
  const button = document.querySelector("#backTop");
  if (window.scrollY > window.innerHeight) {
    button.classList.add("displayBackButton");
    button.classList.remove("hideBackButton");
  } else {
    button.classList.add("hideBackButton");
    button.classList.remove("displayBackButton");
  }
  button.addEventListener("click", () => {
    window.scrollTo({ top: 0, left: 0, behavior: "smooth" });
  });
}
