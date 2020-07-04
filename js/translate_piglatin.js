function translatePigLatin(str) {
  let newStr = "";
  let conStr = "";

  for (let i = 0; i < str.length; i++) {
    if (
      str[i] === "a" ||
      str[i] === "e" ||
      str[i] === "i" ||
      str[i] === "o" ||
      str[i] === "u"
    ) {
      if (i === 0) {
        newStr = str + "way";
        break;
      }
      newStr = str.slice(i) + conStr + "ay";
      break;
    } else {
      conStr += str[i];
    }
    newStr = str + "ay";
  }
  return newStr;
}
