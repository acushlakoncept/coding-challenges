# frozen_string_literal: true

def palindromeIndex(s)
  return -1 if s == s.reverse

  i = 0
  j = s.length - 1
  len = s.length / 2

  while i < len
    if s[i] != s[j]
      new_str = s[i..j]
      if palindrome?(new_str.sub(new_str[0], ''))
        return i
      else
        return j
      end
    else
      i += 1
      j -= 1
    end
  end

  -1
end

def palindrome?(str)
  str == str.reverse
end
