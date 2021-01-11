function checkInputValue() {
  this.inputs = Array.from(
    document.querySelectorAll("span.quantity input:first-child")
  );

  this.checkValue = () => {
    this.inputs.forEach((input) => {
      input.addEventListener("input", () => {
        console.log(input.value);
        let icon = input.parentNode.parentNode.parentNode.querySelector(
          ".search_buy"
        );
        console.log(icon);

        icon.addEventListener("click", () => {
          "clicked";
        });
        icon.click();
      });
    });
  };
}

const inputValue = new checkInputValue();
inputValue.checkValue();
