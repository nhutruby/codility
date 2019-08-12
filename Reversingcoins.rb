def coins(n)
  result = 0
  coin = [0] * (n + 1)
  for i in 1..n
    k = i
    while k <= n
      coin[k] = (coin[k] + 1) % 2
      k += i
    end
    p coin
    p coin[i]
    result += coin[i]
  end
  result
end
p coins(10)
p Math.sqrt(10).floor