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
f = arrayF(26)
p f
def factorization(x, f)
  primeFactors = []
  while (f[x] > 0)
    p f[x]
    primeFactors << f[x]
    x /= f[x]
  end
  primeFactors << x
  primeFactors
end

p factorization(26, f)