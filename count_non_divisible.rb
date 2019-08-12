
def solution(a)
  max = a.max+1
  len = a.length
  count = Array.new(max, 0)
  noOfDivisors = Array.new(max, 0)
  # Count the number of occurences of each number in a
  a.each do |val|
    count[val]+=1
  end
  p count

  # Count the number of divisors
  i = 1
  while i<=max do
    k = i
    while k<max do
      noOfDivisors[k] += count[i]
      k+=i
    end
    p noOfDivisors
    p '..'
    i+=1
  end
  p noOfDivisors
  ans = []
  a.each_with_index do |val, index|

    ans[index] = len - noOfDivisors[a[index]]
  end
  ans
end
p solution([3, 1, 2, 3, 6])