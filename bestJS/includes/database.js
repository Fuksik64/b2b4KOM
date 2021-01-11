export default function objectDatabase(li, heightOfLi) {
  let objArr = {};
  let arr = [];
  for (let i = 0; i < li.length; i++) {
    let counter = li[i].querySelectorAll(".li-depth-2");
    let spans = Array.from(li[i].querySelectorAll("span"));
    spans.forEach((span) => {
      span.textContent = span.textContent
        .replace(/[\n\r]+|[\s]{2,}/g, " ")
        .replace(/\s\s/g, " ");
    });

    let arr1 = [];
    let objArr1 = {};
    for (let j = 0; j < counter.length; j++) {
      let counter2 = li[i]
        .querySelectorAll(".li-depth-2")
        [j].querySelectorAll(".li-depth-3");

      let arr2 = [];
      let objArr2 = {};

      for (let k = 0; k < counter2.length; k++) {
        if (
          li[i]
            .querySelectorAll(".li-depth-2")
            [j].querySelectorAll(".li-depth-3 > a span")[k] != undefined
        ) {
          objArr2 = {
            name: li[i]
              .querySelectorAll(".li-depth-2")
              [j].querySelectorAll(".li-depth-3 a > span")[k].textContent,
            item: li[i]
              .querySelectorAll(".li-depth-2")
              [j].querySelectorAll(".li-depth-3")[k],
          };
          arr2.push(objArr2);
        } else {
          continue;
        }
      }
      let width = 0;
      arr2.forEach((item) => {
        if (item.item.clientWidth > width) {
          width = item.item.clientWidth;
        }
      });

      objArr1 = {
        name: li[i].querySelectorAll(".li-depth-2 > a span")[j].textContent,
        item: li[i].querySelectorAll(".li-depth-2")[j],
        length: arr2.length,
        heightChild: arr2.length * heightOfLi,
        columnCount: "",
        realHeight: "",
        width: width,
        values: arr2,
      };
      arr1.push(objArr1);
    }
    objArr = {
      name: li[i].querySelector("span").textContent,
      item: li[i],
      length: arr1.length,
      height: arr1.length * heightOfLi,
      values: arr1,
    };
    arr.push(objArr);
  }
  arr.forEach((el) => {
    let length = el.length;

    el.values.forEach((item) => {
      let columnCount = Math.ceil(item.length / length);
      let width = 0;
      let realHeight = 0;
      item.columnCountStart = columnCount;
      realHeight = heightOfLi * length;
      if (columnCount >= 4) {
        while (columnCount >= 5) {
          length += 1;
          realHeight = heightOfLi * length;

          columnCount = Math.ceil(item.length / length);
          if (columnCount <= 4) {
            break;
          }
        }
      }
      item.columnCount = columnCount;
      item.realHeight = realHeight;
      width = 200;
      if (columnCount >= 4) {
        width = 162;
      }
      // item.width = width;
    });
  });

  return arr;
}

// function getChildren(container, ...levels) {
//   const parent = container.querySelector(levels[0]);
//   const elements = container.querySelectorAll(levels[0]);

//   return [...elements].reduce((acc, cur) => {
//     const children = cur.querySelectorAll(levels[1]);
//     return [
//       ...acc,
//       {
//         item: cur.querySelector("span").innerText,
//         length: [...children].length,
//         values: getChildren(parent, levels[1], levels[2], null),
//       },
//     ];
//   }, []);
// }
