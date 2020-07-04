# frozen_string_literal: true

def repeated_string(s, n)
  return n if s == 'a'
  return s.count('a') if s.length == n

  a_count = s.count('a')

  f = (n - s.length) / s.length
  r = (n - s.length) % s.length

  new_val = a_count + a_count * f

  new_val + s.slice(0, r).count('a')
end

p repeated_string('aba', 10) ## expected output => 7
