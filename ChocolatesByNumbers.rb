# puts "this is a debug message"
def gcd(a,b)
  if a % b == 0
    return b
  else
    return gcd(b, a % b)
  end
end
def solution(n, m)
  # write your code in Ruby 2.2
  return n/gcd(n,m)
end