# you can write to stdout for debugging purposes, e.g.
# puts "this is a debug message"

def arrayF(n)
  f = [0] * (n + 1)
  i=2
  while (i * i <= n)
    if (f[i] == 0)
      k=i * i
      while (k <= n)
        if (f[k] == 0)
          f[k] = i
        end
        k += i
      end
    end
    i += 1
  end
  f
end
def factorization(x, f)
  primeFactors = []
  while (f[x] > 0)
    primeFactors << f[x]
    x /= f[x]
  end
  primeFactors << x
  return primeFactors.size == 2 ? 1 : 0
end
def s(n, p, q)
  f = arrayF(n)
  m = p.size
  result = [0]*(n+1)
  (1..n).each do |i|
    result[i] = result[i-1] + factorization(i, f)
  end
  p result
  r = []
  (0...m).each do |i|
      r << result[q[i]] - result[p[i] - 1]
    end
  r
end
#------ Solution 2------------
def solution(n, p, q)
  primes = primes(n)
  p primes
  semi_primes_count = Array.new(n + 1, 0)
  primes.each do |prime1|
    primes.each do |prime2|
      break if prime1 * prime2 > n
      semi_primes_count[prime1 * prime2] = 1
    end
  end
  p semi_primes_count
  for i in 1..n
    semi_primes_count[i] += semi_primes_count[i - 1]
  end
  p semi_primes_count
  p.zip(q).map do |from, to|
    semi_primes_count[to] - semi_primes_count[from - 1]
  end
end

def primes(n)
  sieve = Array.new(n + 1, true)
  sieve[0] = sieve[1] = false
  i = 2
  while i * i <= n
    if sieve[i]
      k = i * i
      while k <= n
        sieve[k] = false
        k += i
      end
    end
    i += 1
  end

  primes = []
  sieve.each_with_index do |prime, i|
    primes << i if prime
  end

  primes
end

p solution(26, [1,4,16], [26,10,20])