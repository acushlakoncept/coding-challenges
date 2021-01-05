# frozen_string_literal: true

def bottles(n)
  if n.zero?
    puts 'no more bottles of beer on the wall'
  else
    puts "#{n} bottles of beer on the wall"
    bottles(n - 1)
  end
end

puts bottles(5)
