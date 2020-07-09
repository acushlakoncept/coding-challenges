function staircase(n) {
  let str = '#';
  let space = ' ';
  let res = '';

  for (let i = 1; i < n + 1; i++) {
      res = space.repeat(n - i) + str.repeat(i);
      console.log(res);
  }

}

staircase(10)