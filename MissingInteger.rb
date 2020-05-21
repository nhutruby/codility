def solution(a)
  # write your code in Ruby 2.2
  b = []
  a.each do |x|
    if x > 0
      b[x] = true
    end
  end
  p b
  b.each_with_index{ |x,i|
  if x != true
    return i if i != 0
  else
    return i + 1 if i + 1 == b.size
  end
  }
  1
end

p solution( [1, 3, 6, 4, 1, 2])
p solution([1,2,3])
p solution([-1,-3])