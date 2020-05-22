def solution(a)
  n = a.length
  size = 0
  for k in 0...n
    if (size == 0)
      size += 1
      value = a[k]
    else
      if (value != a[k])
        size -= 1
      else
        size += 1
      end
    end
  end
  candidate = -1
  if size > 0
    candidate = value
  end
  leader = [0]
  count = 0
  for k in 0...n
    if a[k] == candidate
      leader = k
      count += 1

    end
  end
  if count > n/2
    return leader
  end
  return -1

end
p solution([3,4,3,2,3,-1,3,3])