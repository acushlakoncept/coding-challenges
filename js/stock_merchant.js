// Complete the sockMerchant function below.
function sockMerchant(n, ar) {
  let pair = 0,
    i = 0;
  for (i = 0; i < ar.length; i++) {
    for (let j = 0; j < ar.length; j++) {
      if (i !== j && ar[i] === ar[j]) {
        //pair found
        pair++;
        delete ar[i];
        delete ar[j];
        ar = ar.filter((el) => el !== "");
        i = 0;
        break;
      }
    }
  }

  return pair;
}
