function breakingRecords(scores) {
  let min = scores[0];
  let max = scores[0];
  let lowCount = 0;
  let highCount = 0;

  for (let i = 1; i < scores.length; i++) {
      if (scores[i] < min && scores[i] !== min) {
          min = scores[i];
          lowCount++
      };

      if (scores[i] > max && scores[i] !== max) {
          max = scores[i];
          highCount++
      };
  };

  console.log(highCount, lowCount);
  return highCount + ' ' + lowCount;


}
