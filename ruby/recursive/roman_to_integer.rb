# frozen_string_literal: true

roman_mapping = {
  'M' => 1000,
  'CM' => 900,
  'D' => 500,
  'CD' => 400,
  'C' => 100,
  'XC' => 90,
  'L' => 50,
  'XL' => 40,
  'X' => 10,
  'IX' => 9,
  'V' => 5,
  'IV' => 4,
  'I' => 1
}

def roman_to_integer(roman_mapping, str, result = 0)
  return result if str.empty?

  roman_mapping.each_key do |roman|
    next unless str.start_with?(roman)

    result += roman_mapping[roman]
    str = str.slice(roman.length, str.length)
    return roman_to_integer(roman_mapping, str, result)
  end
end

puts roman_to_integer(roman_mapping, 'CCCLXXX')
