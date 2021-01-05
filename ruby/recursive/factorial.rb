# frozen_string_literal: true

def factorial(n)
  return 1 if n == 1

  n * factorial(n - 1)
end

puts factorial(5)
