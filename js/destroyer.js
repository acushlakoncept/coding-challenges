function destroyer(arr) {
  let newArr = [];
  for (let i = 0; i < arr.length; i++) {
      for (let j = 1; j < arguments.length; j++) {
          if (arguments[j] === arr[i]) {
              delete arr[i];
          }
      }
  }
  return arr.filter(el => el !== '');
}

console.log(destroyer([1, 2, 3, 1, 2, 3], 2, 3))