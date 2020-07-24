# frozen_string_literal: true

def picking_numbers(a)
  sorted = a.sort

  max_count = 1
  counter = 0
  max_counter = 0
  first = sorted[0]
  sorted = sorted.slice(1, sorted.length)

  loop do
    if (first.to_i - sorted[counter].to_i).abs <= 1
      max_count += 1
      counter += 1
    else
      max_count > max_counter ? max_counter = max_count : max_counter
      max_count = 1
      counter = 0
      break if sorted.length.eql?(1)

      first = sorted[0]
      sorted = sorted.slice(1, sorted.length)
    end
    break if counter.eql?(sorted.length)
  end

  max_counter.zero? ? max_count : max_counter
end
