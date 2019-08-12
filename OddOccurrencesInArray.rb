def solution(a)
  result = 0
  for number in a do
    result ^= number
  end
  return result
end
p solution([9,3,9,3,9,7,9])
