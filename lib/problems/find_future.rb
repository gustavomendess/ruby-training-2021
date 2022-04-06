class FindFuture
  def self.find(array, query)
    result = []
    for i in 0..query.length - 1
      result << next_closest_date(array, query[i])
    end
    result
  end
 
  def next_closest_date(array, q)
    array.sort
  
    l = 0
    r = array.length - 1
    ind = -1
  
    while(l <= r)
      m = (l + r) / 2
      c = compare(q, array[m])
  
      if c  ==  0
        ind = m
        break
      elsif (c < 0)
        r = m - 1
        ind = m
      else
        l = m + 1
      end
    end
    if ind == -1
      "-1"
    else
      array[ind]
    end
  end
  
  def compare (s, t)
    ss = s.split("/")
    tt = t.split("/")
  
    date1 = []
    date2 = []
  
    n = 3
  
    for i in 0..n
      date1[i] = ss[i].to_i
      date2[i] = tt[i].to_i
    end
  
    if date1[2] != date2[2]
      return date1[2] - date2[2]
    elsif date1[1] != date2[1]
      return date1[1] - date2[1]
    elsif date1[0] != date2[0]
      return date1[0] - date2[0]
    end
    0
  end
end
