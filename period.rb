def solution(n)
  l = 0
  d = n.to_s(2).split("")
  l = d.size
  p d
  for p in 1..(l/2) do
    ok = true
    for j in 0...l - p do
      if d[j] != d[j+p]
        ok = false
        next
      end
    end
    return p if ok
  end
  return -1
end
p solution(955)
p solution(1651)