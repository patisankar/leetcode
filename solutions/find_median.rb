#https://leetcode.com/problems/find-median-from-data-stream/
#brute force
class MedianFinder
    def initialize()
        @arr =[]
    end


=begin
    :type num: Integer
    :rtype: Void
=end
    def add_num(num)
        @arr << num
        _order
    end

    def _order
     if @arr.length > 1 
       n = @arr.length-2
       while(n >=0 && @arr[n+1] < @arr[n])
        swap(n,n+1)
        n -=1
        end
      
     end
    end

    def swap(s,d)
      tmp = @arr[s]
      @arr[s] = @arr[d]
      @arr[d] = tmp 
    end


=begin
    :rtype: Float
=end
    def find_median()
       
        mid = @arr.length/2
        if @arr.length%2 == 0
           (@arr[mid-1]+@arr[mid])/2.0
        else
           @arr[mid]
        end
    end


end

# Your MedianFinder object will be instantiated and called as such:
# obj = MedianFinder.new()
# obj.add_num(num)
# param_2 = obj.find_median()