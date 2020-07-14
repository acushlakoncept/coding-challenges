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


// return arr.sort((a, b) =>
//     arr.filter(v => v === a).length -
//     arr.filter(v => v === b).length
// ).pop();


// function migratoryBirds(arr) {
//     arr.sort((a, b) => (a - b));
//     return arr.sort((a, b) =>
//         arr.filter(n => n === a).length -
//         arr.filter(n => n === b).length
//     ).pop();

// }
