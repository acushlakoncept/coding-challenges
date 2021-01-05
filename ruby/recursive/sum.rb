# frozen_string_literal: true

def sum(number)
  return 0 if number.zero?

  number + sum(number - 1)
end

puts sum(4)
puts sum(10)
