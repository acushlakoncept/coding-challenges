function frankenSplice(arr1, arr2, n) {
  // It's alive. It's alive!
  let res = Array.from(arr1);
  let count = 0;
  arr2.forEach(el => {
      if (count < n) {
          res.splice(count, 0, el);
          count++;
      } else {
          res.splice(res.length, 0, el);
          count++;
      }
  })
  console.log(res);
  return res;
}

frankenSplice(["claw", "tentacle"], ["head", "shoulders", "knees", "toes"], 2);
