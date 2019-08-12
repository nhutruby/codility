def solution(a)
  # write your code in Ruby 2.2
  n = a.length + 1
  sum = a.reduce(:+) || 0
  return n*(n+1)/2 - sum
end
def solution(a)
  # write your code in Ruby 2.2
  n = a.length
  arr = Array(n-2)
  1.upto(n-1) do |i|
    arr[i-1] = (a[0..i-1].reduce(:+) - a[i..-1].reduce(:+)).abs
  end
  arr.min
end