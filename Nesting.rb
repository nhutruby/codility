def solution(s)
  stack = []

  s.chars.each do |char|
    if char == '('
      stack << char
    else
      p '....'
      p c = stack.pop
      p '...'
      return 0 if c != '('
    end
  end
  p 'mmmm'
  stack.empty? ? 1 : 0
end
p solution('(()(())())')