function migratoryBirds(arr) {
  let max = 0;
  arr.sort((a, b) => (a - b));

  for (let i = 0; i < arr.length; i++) {
      let filteredArr = arr.filter(num => num === arr[i]);
      if (filteredArr.length > max) {
          max = arr[i];
      }
  }

  return max;

}
