def rotate_right(head, k)
    # brute force approach
    # O(n^2)
    return head unless head
    len = 1
    tmp = head
    #no.of nodes
    len += 1 while(tmp = tmp.next)
    k %= len
    return head if k == 0
    tmp = head
    current = head
    #O(k)
    while(k >0)
      #O(n)  
      tmp = tmp.next while tmp && tmp.next && tmp.next.next
      temp = current
      current = tmp.next
      #close the ring
      current.next = temp
      # break the ring
      tmp.next = nil
      tmp = current
      k -= 1
    end
    current
 end


 def rotate_right(head, k)
    return head unless head
    # Fast and Slow pointers approach
    # count the nodes
    tmp = head
    n = 0
    #O(n)
    while(tmp)
     tmp = tmp.next
     n +=1
    end
 
    k %= n
    #move the fast pointer k times
    tmp = head
    count = 0
    #O(k)
    while(tmp && count < k)
      tmp = tmp.next
      count +=1
    end
    slow = head
    fast = tmp
    #O(n)
    while(fast && fast.next)
     fast = fast.next
     slow = slow.next
    end
 
    #circle 
    fast.next = head
    head = slow.next
    #break circle
    slow.next = nil  
    head
 
 end