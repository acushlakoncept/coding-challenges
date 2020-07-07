function chunkArrayInGroups(arr, size) {
  // Break it up.
  let twoDimArr = [];
  for (let i = 0; i < arr.length; i = i + size) {
    twoDimArr.push(arr.slice(i, i + size));
  }
  return twoDimArr;
}

console.log(chunkArrayInGroups([0, 1, 2, 3, 4, 5], 3));
