def solution(a, k)
  return a if a.empty?
  k = k % a.length
  p k
  l = a.length
  p a[l-k..l]
  return a[l-k..l] + a[0..l-k-1]
end
p solution([3, 8, 9, 7, 6], 3)
p solution([1,2,3,5], 4)