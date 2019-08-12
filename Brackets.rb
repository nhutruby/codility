
def s(s)
  pairs = {
      '{' => '}',
      '[' => ']',
      '(' => ')'
  }

  stack = []

  s.chars.each do |char|
    if pairs.keys.include?(char)
      stack << char
    else
      p stack
      c = stack.pop
      p c
      return 0 if pairs[c] != char
    end
  end

  return 0 if stack.any?
  1
end

p s('{[()()]')