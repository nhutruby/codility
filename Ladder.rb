def ladder(a, b)
  fibs = fibs(a.max)
  p fibs
  p a.zip(b)
  a.zip(b).map do |rungs, p|


    p fibs[rungs + 1]
    p (1 << p)
    p fibs[rungs + 1] % (1 << p)
    p '...'
    fibs[rungs + 1] % (1 << p)
  end
end

def fibs(n)
  fibs = Array.new(n + 2, 0)
  fibs[1] = 1

  for i in 2..n+1
    fibs[i] = fibs[i - 1] + fibs[i - 2]
  end

  fibs
end

p ladder([4, 4, 5, 5, 1], [3, 2, 4, 3, 1])

