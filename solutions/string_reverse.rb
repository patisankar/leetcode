def reverse_words(s)
    return unless s
    result = ""
    
    s.split.each do |word|
     first = 0
     sec = word.length-1
     while(first < sec)
      tmp = word[first]
      word[first] = word[sec]
      word[sec] = tmp
      first +=1
      sec -=1
     end
     result += word + " "
    end
    result.rstrip
end