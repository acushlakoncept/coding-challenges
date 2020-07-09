function birthdayCakeCandles(ar) {
  let n = 0;
  let maxVal = Math.max(...ar);
  for (let i = 0; i < ar.length; i++) {
      if (ar[i] === maxVal) {
          n++
      }
  }
  return n;
}

console.log(birthdayCakeCandles([3,4,5]))