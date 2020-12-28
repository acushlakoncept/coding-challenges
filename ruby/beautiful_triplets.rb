# frozen_string_literal: true

def beautifulTriplets(d, arr)
  first = arr.first
  arr = arr.slice(1, arr.size)
  count = 1
  res = 0
  i = 0

  while i < arr.length
    if arr[i] - first == d
      first = arr[i]
      count += 1

      if count == 3
        first = arr.first
        arr = arr.slice(1, arr.size)
        count = 1
        res += 1
        i = -1
      end
    elsif arr[i] - first > d
      first = arr.first
      arr = arr.slice(1, arr.size)
      count = 1
      i = -1
    end

    i += 1
  end
  res
end
