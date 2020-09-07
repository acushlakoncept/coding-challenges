def anagram(s)
    return -1 if s.length.odd?
    
    a = s[0..s.size/2-1].chars.sort()
    b = s[s.size/2..s.size-1].chars.sort()

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