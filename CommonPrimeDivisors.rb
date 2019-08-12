#O(Z * log(max(A) + max(B))**2)
def solution(a, b)
  count = 0

  a.zip(b) do |n, m|
    count += 1 if has_same_prime_divisors?(n, m)
  end
  count
end

def gcd(a, b)
  if a % b == 0
    b
  else
    gcd(b, a % b)
  end
end

def has_same_prime_divisors?(a, b)
  gcd_value = gcd(a, b)

  while a != 1
    a_gcd = gcd(a, gcd_value)
    break if a_gcd == 1
    p a
    a /= a_gcd
  end
  p a
  return false if a != 1

  while b != 1
    b_gcd = gcd(b, gcd_value)
    p b
    break if b_gcd == 1
    b /= b_gcd
  end
  p b
  b == 1
end
p solution([3], [5])