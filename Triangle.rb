def solution(a)
  # write your code in Ruby 2.2
  return 0 if a.length <= 2
  a.sort!
  for i in 0..a.length - 3 do
    if(a[i] + a[i+1] > a[i+2])
      return 1
    end
  end
  0
end
def triangle(a)
  p a.sort
  p a.sort.each_cons(3).to_a
  a.sort.each_cons(3) do |p, q, r|
    return 1 if r < p + q
  end
  0
end
triangle([10, 2, 5, 1, 8, 20])