def solution(a, val)
  min = 0
  max = a.size - 1
  while min <= max
    mid = (min + max) / 2
    return val if a[mid] == val
    if a[mid] < val
      min = mid + 1
    else
      max = mid - 1
    end
  end
  -1
end
a = [5, 7, 10, 16, 21, 38, 44, 46, 52, 67, 79, 80, 95, 99]
p solution(a, 21)