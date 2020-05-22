
def s(s)
  pairs = {
      '{' => '}',
      '[' => ']',
      '(' => ')'
  }

  stack = []

  s.chars.each do |char|
    p stack
    if pairs.keys.include?(char)
      p char
      stack << char
      p 'a'
      p stack
      p '.....'
    else
      p 'b'
      p stack
      p '/////'
      c = stack.pop
      return 0 if pairs[c] != char
    end
  end
  p stack
  return 0 if stack.any?
  1
end

p s('[()()]')