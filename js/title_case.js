function titleCase(str) {
  let first = 0,
      newStr = '';
  for (let i = 0, len = str.length; i < len; i++) {
      if (i === first) {
          newStr += str.charAt(i).toLocaleUpperCase();

      } else {
          newStr += str.charAt(i).toLocaleLowerCase()
          if (str.charAt(i) === ' ') { first = i + 1 }
      }
  }
  console.log(newStr);
  return str;
}

titleCase("HERE IS MY HANDLE HERE IS MY SPOUT");