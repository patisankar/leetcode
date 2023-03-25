def reverse_vowels(s)
    return s unless s
    vowels =['a','e','i','o','u', 'A', 'E', 'I','O', 'U']
    first  = 0
    sec = s.length-1
  
    while(first < sec)
      if vowels.include?(s[first]) && vowels.include?(s[sec])
         s[sec], s[first] = s[first], s[sec]
         first +=1
         sec -=1
      end
      if !vowels.include?(s[first])
        first +=1
      end
      
      if !vowels.include?(s[sec])
         sec -=1
      end
    end
    s
end