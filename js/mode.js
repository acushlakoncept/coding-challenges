const mode = (arr) =>
  [...new Set(arr)]
    .map((value) => [value, arr.filter((v) => v === value).length])
    .sort((a, b) => a[1] - b[1])
    .reverse()
    .filter((value, i, a) => a.indexOf(value) === i)
    .filter((v, i, a) => v[1] === a[0][1])
    .map((v) => v[0]);

console.log(mode([1, 2, 3, 3])); // [3]
console.log(mode([1, 1, 1, 1, 2, 2, 2, 2, 3, 3, 3])); // [1,2]
