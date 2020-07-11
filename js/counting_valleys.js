function countingValleys(n, s) {
  let count = 0;
  let upHill = 0;
  for (let i = 0; i < s.length; i++) {
      let preUpHill = upHill;
      if (s.charAt(i) === 'D') { upHill-- };
      if (s.charAt(i) === 'U') { upHill++ };

      if (preUpHill < 0 && upHill >= 0) {
          count++;
      };
  }

  return count;

}
