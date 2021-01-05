# frozen_string_literal: true

def fib(n)
  case n
  when 0
    0
  when 1
    1
  else
    fib(n - 1) + fib(n - 2)
  end
end

puts fib(6)
