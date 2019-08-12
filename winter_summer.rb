def s(t)
  left = t[0]
  last = t[0]
  right_number = 0
  n = t.length
  for i in 1...n
    if left < t[i]
      right_number += 1
      last = t[i]
    else
      right_number = 0
      left = last
    end
  end
  n - right_number
end
def solution(t)
  left = t[0]
  last = t[0]
  n = t.size
  result = n
  for i in 1...n
    if left >= t[i]
      result = n
      left = last
    else
      result -= 1
      last = t[i]
    end
  end
  result
end
p solution([5,-2,3,8,6, 3,9])
p solution([-5,-5, -5, -42,6,12])
p solution([5,3,1])