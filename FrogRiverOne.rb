def solution(x, a)
  # write your code in Ruby 2.2
  b = {}
  a.each_index { |i|
    b[a[i]] = 1
    return i if b.size == x
  }
  return -1
end