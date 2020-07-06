function pairElement(str) {
  let tempArr = [];
  for (let i = 0; i < str.length; i++) {
    if (str[i] === "A") {
      tempArr[i] = [];
      tempArr[i].push(str[i], "T");
    }
    if (str[i] === "T") {
      tempArr[i] = [];
      tempArr[i].push(str[i], "A");
    }
    if (str[i] === "C") {
      tempArr[i] = [];
      tempArr[i].push(str[i], "G");
    }
    if (str[i] === "G") {
      tempArr[i] = [];
      tempArr[i].push(str[i], "C");
    }
  }
  return tempArr;
}

console.log(pairElement("TTGAG"))
