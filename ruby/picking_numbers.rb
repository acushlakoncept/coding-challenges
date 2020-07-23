# frozen_string_literal: true

def picking_numbers(a)
  sorted = a.sort

  max_count = 1
  counter = 0
  max_arr = []
  first = sorted[0]
  sorted = sorted.slice(1, sorted.length)

  loop do
    if (first.to_i - sorted[counter].to_i).abs <= 1
      max_count += 1
      counter += 1
    else
      max_arr << max_count if max_count >= 1
      max_count = 1
      counter = 0
      break if sorted.length.eql?(1)

      first = sorted[0]
      sorted = sorted.slice(1, sorted.length)
    end
    break if counter.eql?(sorted.length)
  end

  max_arr.empty? ? max_count : max_arr.max
end
