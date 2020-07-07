function getIndexToIns(arr, num) {
  // Find my place in this sorted array.
  arr.sort((a, b) => (a - b));
  let index = 0;
  for (let i = 0; i < arr.length; i++) {
      if (arr[i] >= num) {
          index = i;
          break;
      } else { index = arr.length }
  }
  console.log(index);
  return index;
}

getIndexToIns([10, 20, 30, 40, 50], 30);