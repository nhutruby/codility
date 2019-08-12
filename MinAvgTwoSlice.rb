def solution(a)
  min_avg = 1 / 0.0
  min_index = 0
  a.each_cons(2).each_with_index do |double, i|
    avg = double.inject(:+) / 2.0
    if avg < min_avg
      min_index = i
      min_avg = avg
    end
  end
  p a.each_cons(3).to_a
  a.each_cons(3).each_with_index do |triple, i|
    avg = triple.inject(:+) / 3.0

    if avg < min_avg
      min_index = i
      min_avg = avg
    end
  end

  p min_index
end
solution([4, 2, 2, 5, 1, 5, 8])