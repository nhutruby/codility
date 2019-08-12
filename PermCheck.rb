def solution(a)
  permutation = Array(1..a.size)
  # puts permutation
  return 1 if permutation - a == []
  0
end
solution([4,1,3,2])
