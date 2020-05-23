# frozen_string_literal: true

# @param [Object] n
def fibs(n)
  return 0 if n.zero? || (n == 1) || (n == 2)

  fibs = Array.new(n - 1, 0)
  fibs[1] = 1
  sum = 1
  (2..n - 2).each { |i|
    fibs[i] = fibs[i - 1] + fibs[i - 2]
    break if fibs[i].odd? && (fibs[i] >= n)

    sum += fibs[i] if fibs[i].odd?
  }
  sum
end
p fibs(10000)