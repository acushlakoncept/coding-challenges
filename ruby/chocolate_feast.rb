def chocolateFeast(n, c, m)
  bar = n / c
  wrap = bar
  while wrap >= m
    new_bar = wrap / m
    bar += new_bar
    wrap = wrap % m + new_bar
  end
  bar
end
