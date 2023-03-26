def max_area(height)
    return 0 until height
    #brute force approach
    #iterate through each line to all lines in  nested loop, find the max amount of water can store in container
    n = height.length-1
    max= 0 

    (0..n).each do |start|
      ((start+1)..n).each do |end_|
        min_height = [height[start],height[end_]].min
        max = [max, (min_height* (end_-start))].max
      end
    end
    max
end

def max_area(height)
    return 0 until height
    #two pointers
    # initialize one pointer with beginning and other is ending.
    # One pass calculate the area , find the max
    n = height.length-1
    max= 0 
    first = 0
    sec = n
    while(first < sec)
     #move pointer whoever has less height
     
     h = [height[first], height[sec]].min
     max = [max, h*(sec-first)].max

     if(height[first] > height[sec])
       sec -=1
     else
       first +=1
     end
     
    end
    max
end