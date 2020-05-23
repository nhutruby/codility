def fibs(n)
  return 0 if n == 0 or n == 1

  fibs = Array.new(n - 1, 0)

  p fibs
  fibs[1] = 1
  sum = 1
  i = 2
  p fibs
  (2 .. n - 2).each { |i|
    p 'sss'
    fibs[i] = fibs[i - 1] + fibs[i - 2]
    sum += fibs[i] if fibs[i].odd?
  }
  p sum
  p fibs
end
p fibs(7)