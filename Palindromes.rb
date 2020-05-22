def palindrome?(string)
  string == string.reverse
end

def solution(n)
  count = 0
  (0..(n - 1)).each { |i|
    puts i.to_s
    count += 1 if palindrome?(i.to_s)
  }
  count
end
p solution(14)