def anagram(s)
  return -1 if s.length.odd?

  a = s[0..s.size / 2 - 1].chars.sort
  b = s[s.size / 2..s.size - 1].chars.sort

  a.each do |i|
    b.each_with_index do |j, indx|
      if i == j
        b.delete_at(indx)
        break
        end
    end
  end

  b.size
end

# ******************* Solution by DJ

def anagram2(s)
  return -1 if s.length.odd?

  first_string = s[0, s.length / 2]
  second_string = s[s.length / 2, s.length]
  char_count1 = {}
  char_count1 = get_char_count(first_string)
  char_count2 = {}
  char_count2 = get_char_count(second_string)
  diff = 0
  char_count1.each_key do |key|
    one_char_diff = 0
    if char_count2.has_key?(key)
      current_diff = char_count1[key] - char_count2[key]
      one_char_diff = current_diff if current_diff > 0
    else
      one_char_diff = char_count1[key]
    end
    diff += one_char_diff
  end
  diff
  end

def self.get_char_count(s)
  char_count = {}
  s.split('').each do |c|
    char_count[c] = if char_count.has_key?(c)
                      char_count[c] + 1
                    else
                      1
                    end
  end
  char_count
end
