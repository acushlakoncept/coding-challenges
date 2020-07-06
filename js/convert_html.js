function convertHTML(str) {
  // &colon;&rpar;
  let newStr = "";
  for (let i = 0; i < str.length; i++) {
    if (str.charAt(i) == "&") {
      newStr = newStr + "&amp;";
    } else if (str.charAt(i) == "<") {
      newStr += "&lt;";
    } else if (str.charAt(i) == ">") {
      newStr += "&gt;";
    } else if (str.charAt(i) == '"') {
      newStr += "&quot;";
    } else if (str.charAt(i) == "'") {
      newStr += "&apos;";
    } else {
      newStr += str.charAt(i);
    }
  }
  
  return newStr;
}

;
console.log(convertHTML("Hamburgers < Pizza < Tacos"))
