# frozen_string_literal: true
def getMoneySpent(keyboards, drives, b)
  ksize = keyboards.length
  dsize = drives.length
  return keyboards[0] + drives[0] < b ? keyboards[0] + drives[0] : -1 if ksize.eql?(1) && dsize.eql?(1)

  add_val = []
  keyboards.each do |k|
    drives.each do |d|
      add_val << k + d if k + d <= b
    end
  end

  add_val.empty? ? -1 : add_val.max
end
