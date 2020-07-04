def pageCount(n, p)
  #
  # Write your code here.
  #
  return 0 if p == 1 || p == n || (n.odd? && p == n-1)
  
  val = p.odd? ? p - 1 : p
  front = val/2
  
  last = n.odd? ? n-1 : n
  
  back = (last - val)/2
  
  front < back ? front : back
end

p pageCount(6, 2) ## expected output => 1