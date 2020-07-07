function sumPrimes(num) {
  let sum = 0;
  for (let i = 1; i <= num; i++) {
    if (isPrime(i)) {
      sum += i;
    }
  }
  console.log("Sum = ", sum);
  return sum;
}

function isPrime(digit) {
  for (let i = 2; i < digit; i++) {
    if (digit % i === 0) return false;
  }
  return digit !== 1 && digit !== 0;
}

function isPrime2(digit) {
  if (digit <= 1) return false;
  if (digit <= 3) return true;

  if (digit % 2 === 0 || digit % 3 === 0) return false;

  for (let i = 5; i * i <= digit; i = i + 6) {
    if (digit % i === 0 || digit % (i + 2) === 0) return false;
  }
  return true;
}

console.log(sumPrimes(977));
