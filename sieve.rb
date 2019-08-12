def sieve(n)
  sieve = [true] * (n + 1)
  sieve[0] = sieve[1] = false
  i=2
  while (i * i <= n)
    if (sieve[i])
      k=i * i
      while (k <= n)
        sieve[k] = false
        k += i
      end
    end
    i += 1
  end
  p sieve
  result = []
  (0..n).each { |i|
   result << i if sieve[i] == true
  }
  result
end
p sieve(17)