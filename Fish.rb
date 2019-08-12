def solution(a,b)
  stack = []
  survivors = 0
  a.each_index do |i|
    if b[i] == 1
      stack << a[i]
      p stack
      p '....'
      next
    end
    while stack.any? && a[i] > stack.last
      stack.pop
      p 'www'
      p stack
      p 'www'
    end
    survivors += 1 if stack.empty?
    p 'ssss'
    p survivors
    p 'ssss'
  end
  p stack.size
  stack.size + survivors

end
p solution([4,3,2,1,5], [0,1,0,0,0])
