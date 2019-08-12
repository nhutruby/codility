def solution(a)
  # write your code in Ruby 2.2
  left = 0
  right = a.reduce(:+)
  difference = []
  p right
  for i in 1..(a.size-1) do
    left += a[i-1]
    right -= a[i-1]
    p '...'
    p left
    p right
    p '...'
    absolute = (left - right).abs
    difference.push(absolute)
  end
  puts "#{difference}"
  return difference.min
end
solution([3,1,2,4,3])