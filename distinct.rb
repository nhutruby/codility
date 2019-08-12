def solution(a)
  # write your code in Ruby 2.2
  a.sort!
  return 0 if a.empty?
  r = 1
  for i in 1...a.length
    r += 1 if a[i] != a[i-1]
  end
  r
end
def solution(a)
  seen = {}
  a.each do |v|
    seen[v] = true
  end

  seen.size
end