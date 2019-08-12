def solution(n)
  i = 1
  min = 1/0.0
  while (i * i < n)
    if (n % i == 0)
      p = 2*(n/i + i)
      min = p if p < min
    end
    i += 1
  end
  if (i * i == n)
    min = 4*i if 4*i < min
  end
  min
end