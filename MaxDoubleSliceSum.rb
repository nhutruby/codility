def solution(a)
  a[0] = 0
  a[-1] = 0
  p a
  max_from_left = []
  max_ending = 0
  a.each do |v|
    max_ending = [0, max_ending + v].max
    max_from_left << max_ending
  end
  p max_from_left
  max_from_right = []
  max_ending = 0
  p a.reverse
  a.reverse.each do |v|
    max_ending = [0, max_ending + v].max
    max_from_right << max_ending
  end
  p max_from_right
  max_from_right.reverse!
  p max_from_right
  n = a.size
  max_double_slice = 0
  for i in 1..n-2
    max_double_slice = [max_double_slice, max_from_left[i - 1] + max_from_right[i + 1]].max
    p max_from_left[i - 1]
    p max_from_right[i + 1]
    p '...'
  end
  p '............'
  max_double_slice
end
p solution(  [1000, 2, 6, -1, 4, 5, -1, 2] )