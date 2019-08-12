def solution(a, k)
  return a if a.empty?
  k = k % a.length
  l = a.length
  return a[l-k..l] + a[0..l-k-1]
end
p solution([3, 8, 9, 7, 6], 3)