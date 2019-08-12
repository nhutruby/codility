def solution(n, a)
  # write your code in Ruby 2.2
  b = [0]*n
  max = 0
  min = 0
  a.each do |x|
    if x <= n
      if b[x-1] < min + 1
        b[x-1] = min + 1
      else
        b[x-1] += 1
      end
      max = [max, b[x -1 ]].max
    else
      min = max
    end
  end
  b.each_index do |i|
    b[i] = min if b[i] < min
  end
  b
end
p solution(5, [3,4,4,6,1,4,4])