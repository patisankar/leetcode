def first_bad_version(n)
    #binary search, log(n)
    return n unless n>1
    lo = 1
    hi = n
    while(lo <hi)
      mid = (lo+hi)/2
      if(is_bad_version(mid))
        hi = mid
      else
         lo = mid + 1
      end
      
    end
    hi
    
end