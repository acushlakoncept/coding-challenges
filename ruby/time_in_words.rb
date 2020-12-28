# frozen_string_literal: true

def timeInWords(h, m)
  "#{word(h)}o' clock" if m.zero?

  case m
  when 0
    "#{word(h)} o' clock"
  when 30
    "half past #{word(h)}"
  when 15
    "quarter past #{word(h)}"
  when 45
    "quarter to #{word(h + 1)}"
  when 1
    "one minute past #{word(h)}"
  when 2..29
    "#{word(m)} minutes past #{word(h)}"
  when 31..59
    "#{word(60 - m)} minutes to #{word(h + 1)}"
  end
end

def word(num)
  words_hash = { 0 => 'zero',
                 1 => 'one',
                 2 => 'two', 3 => 'three',
                 4 => 'four',
                 5 => 'five',
                 6 => 'six',
                 7 => 'seven',
                 8 => 'eight',
                 9 => 'nine',
                 10 => 'ten',
                 11 => 'eleven',
                 12 => 'twelve',
                 13 => 'thirteen',
                 14 => 'fourteen',
                 15 => 'fifteen',
                 16 => 'sixteen',
                 17 => 'seventeen',
                 18 => 'eighteen',
                 19 => 'nineteen',
                 20 => 'twenty',
                 30 => 'thirty',
                 40 => 'forty',
                 50 => 'fifty' }
  if words_hash[num]
    words_hash[num]
  else
    s = num.to_s.split('')
    "#{words_hash["#{s[0]}0".to_i]} #{words_hash[s[1].to_i]}"
  end
end
