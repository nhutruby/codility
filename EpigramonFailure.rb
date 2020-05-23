def solution(s)
  sum = 0
  s = s.gsub(/[^[:alpha:]]/ , '')
  s.split('').each do |c|
    if %w[a e i o u].include? c
      sum -= c.ord
    else
      sum += c.ord
    end
  end
  sum
end
p solution('Dealing with failure is easy: Work hard to improve. Success is also easy to
handle: You’ve solved the wrong problem. Work hard to improve.')