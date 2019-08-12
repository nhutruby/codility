def gcd1(a,b)
  if a == b
    p 'a'
    p a
    return a
  end
  if a > b
    p 'a>b'
    p a-b
    p b
    gcd(a-b, b)
  else
    p 'a<b'
    p a
    p b-a
    gcd(a, b-a)
  end
end
def gcd(a,b)
  if a % b == 0
    p 'a%b=0'
    return b
  else
    p 'a%b!=0'
    p b
    p a % b
    return gcd(b, a % b)
  end
end
def gcd3(a, b, res)
  if a == b
    p "a==b"
    p res
    p a
    return res * a
  elsif  (a % 2 == 0) and (b % 2 == 0)
    p "(a % 2 == 0) and (b % 2 == 0)"
    p a
    p b
    p res
    return gcd(a / 2, b / 2, 2 * res)
  elsif (a % 2 == 0)
    p '(a % 2 == 0)'
    p a
    p b
    p res
    return gcd(a / 2, b, res)
  elsif (b % 2 == 0)
    p '(b % 2 == 0)'
    p a
    p b
    p res
    return gcd(a, b / 2, res)
  elsif a > b
    p 'a > b'
    p a
    p b
    p res
    return gcd(a - b, b, res)
  else
    p 'a<b'
    p a
    p b
    p res
    return gcd(a, b - a, res)
  end
end
p a =  gcd(75, 15)
p a*5/gcd(a, 5)