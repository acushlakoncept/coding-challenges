t = gets.strip.to_i
for a0 in (0..t-1)
    n = gets.strip.to_i
    arr = [1, 2]
    i = 0
    while arr.last <= n
        arr << arr[i] + arr[i+1]
        i += 1
    end
    arr.delete(arr.last) if arr.last > n
    result = []
    arr.each do |x|
        result << x if x.even?
    end
    
    p result.reduce(:+) unless result.empty?
end