def solution(s)
  sum = 0
  s.split('').each do |c|
    if %w[a e i o u].include? c
      p c.ord
      sum -= c.ord
    else
      p c.ord
      sum += c.ord
    end
  end
  sum
end
p solution('iffy')