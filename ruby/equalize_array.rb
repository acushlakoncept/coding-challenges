# frozen_string_literal: true

def equalizeArray(arr)
  arr_rep = []
  arr.each { |elem| arr_rep << arr.count(elem) }
  arr.length - arr_rep.max
end
