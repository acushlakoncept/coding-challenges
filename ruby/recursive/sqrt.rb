# frozen_string_literal: true

def sqrt(number)
  # sqrt_recursive(number, 0, number)
  sqrt_recursive(number)
end

# def sqrt_recursive(number, min_interval, max_interval)
def sqrt_recursive(number, odd_val = 1, interval = 0)
  # Your code here
  return interval if (number - odd_val).negative?

  sqrt_recursive(number - odd_val, odd_val + 2, interval + 1)
end

puts sqrt(25)
puts sqrt(7056)
