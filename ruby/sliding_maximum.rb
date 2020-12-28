# frozen_string_literal: true

def sliding_maximum(k, array)
  new_arr = []
  new_arr << array.slice(0, k).max
  arr_mod = array.slice(1, array.length)

  while arr_mod.length >= k
    new_arr << arr_mod.slice(0, k).max
    arr_mod = arr_mod.slice(1, arr_mod.length)
  end
  new_arr
end

sliding_maximum(3, [1, 3, 5, 7, 9, 2])
# => [5, 7, 9, 9]
