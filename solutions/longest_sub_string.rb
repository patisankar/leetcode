def length_of_longest_substring(s)
    #for i to n
     # add chars to set  till not repeat
     # maintain max string
    return 0 unless s
    len = s.length-1
    max = 0
    
    (0..len).each do |i|
      start = i
      cur = Set.new
      start +=1 while(start <= len && cur.add?(s[start]))
      max = cur.length if max < cur.length
        
    end
    max
 end