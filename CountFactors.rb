def solution(n)
  i = 1
  result = 0
  while (i * i < n)
    if (n % i == 0)
      result += 2
    end
    i += 1
  end
  if (i * i == n)
    result += 1
  end
  result
end
p solution(24)