#658. Find K Closest Elements
# https://leetcode.com/problems/find-k-closest-elements/description/

def find_closest_elements(arr, k, x)
    #find x location

    idx = find_closest(arr,x)
 
    result = [arr[idx]]
    count = 1
    min = 10**4 + 1
    f = idx > 0 ? idx-count : -1
    s = idx < arr.length-1 ? idx+count : arr.length
    # two pointers
    # start from middle and first pointer come towards left, second point goes towards right
    while(result.length < k && (f >= 0 || s <= arr.length-1  ) )
     if f<0
        result<< arr[s]
       s += 1
    elsif s > arr.length-1 
      result.unshift arr[f]
       f -= 1
    elsif ((x- arr[f]).abs > (x- arr[s]).abs)
        result<< arr[s]
        s +=1
     else
        result.unshift arr[f]
        f -=1
     end
      
    end
    result
end
#Binary Search -III
def find_closest(arr,x)
   lo =0
   hi = arr.length-1

   while(lo+1 < hi)
     mid= (lo +hi)/2
     if(arr[mid] >  x)
       hi = mid
     else
       lo= mid
     end
   end
   if((arr[lo]- x).abs > (arr[hi]- x).abs)
     hi
   else
     lo
   end
end