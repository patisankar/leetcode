#bruit force
def total_fruit(fruits)
    return 0 unless fruits
    first = 0
    sec =1
    max = 0
    (0..fruits.length-1).each do |i|
      local_count =0
      window = []
      start = i
      while(start< fruits.length )
        window <<fruits[start] if !window.include?(fruits[start])
        break if window.length>2
        local_count +=1
        start +=1
      end
      
      max = local_count if local_count > max
    end
   max
end


# @param {Integer[]} fruits
# @return {Integer}

#lessions
# took 1 day , code is not written as planned
# thoughts and coding is not matched

# next time, clear conditions and code accordingly

# sliding window

def total_fruit(fruits)
    return 0 unless fruits
    limit=2
    #uniq fruit type
    window =[]

    #current pointer
    i=0
    #window type fruits count
    count = 0
    #over all max
    max = 0
    #previous fruit type count
    prev_count =0
    #previous type
    prev =0
   
    loop do
    
     break if i>= fruits.length
     if(window.length < limit)
       window << fruits[i]
       #if fruit type not exist , add it
     elsif !window.include?(fruits[i])
       #make sure don't pop prev fruit type
      if(window[0] == fruits[prev])
        window[1] = fruits[i]
      else
        window[0] = fruits[i]
      end
      #recording max count for each sliding window
      max = count if count > max
      count =  prev_count
     
     end
     
     prev =i 
     prev_count =0
     # jump if fruit type is same
     while(i< fruits.length && fruits[i] == fruits[prev])
       prev_count +=1
       i +=1
     end
     count += prev_count
    end
    
    max = count if count > max
    max
end