def s(a)
  n = a.size
  passing_cars = 0

  suffix_sums = Array.new(n + 1, 0)
  p suffix_sums
  p a.reverse
  a.reverse.each_with_index do |v, i|
    suffix_sums[i + 1] = suffix_sums[i] + v
  end
  p suffix_sums
  suffix_sums.reverse!
  p suffix_sums

  a.each_with_index do |car, i|
    if car == 0
      passing_cars += suffix_sums[i]
    end
  end

  passing_cars > 1_000_000_000 ? -1 : passing_cars
end
def solution(a)
  results = 0
  east_count = 0
  a.each do |el|
    if el == 0
      east_count += 1
      p east_count
      p '..'
    else
      results += east_count
      p results
      p '***'
    end
    return -1 if results > 1000000000
  end
  results
end
p solution([0,1,0,1,1])