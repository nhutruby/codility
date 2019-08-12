def solution(a)
  max_ending = max_slice = a[0]
  for i in a[1..-1]
    max_ending = [i, max_ending + i].max
    max_slice = [max_slice, max_ending].max
  end
  max_slice
end
p solution([-5, -7,-3,-5,-2,-4,-1])