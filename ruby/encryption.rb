def encryption(s)
    s.gsub!(" ", "")
    s_ceil = Math.sqrt(s.size).ceil
    s_array = []
    s_res = {}
    s_m_arr = []
    out_arr = []
    s_ceil.times { s_array << s.slice!(0, s_ceil) }
    s_array.each { |value| s_m_arr += value.chars.size.times.zip(value.chars) }
    s_m_arr.each { |scopy| s_res[scopy[0]] ||= []; s_res[scopy[0]] << scopy[1]  }
    s_res.each { |key, value| out_arr << value.join('') }
    
    out_arr.join(' ')
  end