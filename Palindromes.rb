def palindrome?(string)
  string == string.reverse
end

def solution(n)
  count = 0
  (0..(n - 1)).each { |i|
    p i if palindrome?(i.to_s)
    count += i if palindrome?(i.to_s)
  }
  count
end
p solution(10000)