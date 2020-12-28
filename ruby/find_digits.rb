# frozen_string_literal: true

def findDigits(n)
  count = 0
  n.to_s.chars.each do |x|
    (count += 1 if (n % x.to_i).zero?) unless x.to_i.zero?
  end

  count
end
