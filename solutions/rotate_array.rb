def rotate(nums, k)
    #brute force
    return nums unless nums
    size = nums.length
    k %= size
    (0..k-1).each do |i|
      cur = i
      prev = nums[cur]
     (size).times do |j|
       nex =  (cur+1)%size
       tmp = nums[nex]
       nums[nex] = prev
       prev = tmp
       cur += 1
       
          
     end
     
    end
     nums
  end