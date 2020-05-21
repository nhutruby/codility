def solution(n)
  base = n.to_s(2).gsub(/0+$/, '')
  puts base
  candidates = base.split('1').reject { |i| i == '' }
  puts candidates
  return 0 if candidates.empty?

  candidates.map(&:length).max
end
puts solution(529)