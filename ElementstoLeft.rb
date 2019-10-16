def solution(array)
  current = 0

  0.upto(array.length - 1) do |i|
    if (array[i] != 0)
      array[current] = array[i]
      current = current + 1
    end
  end
  while (current < array.length - 1) do
    array[current] = 0
    current = current + 1
  end
  array
end
p solution([1,0,2,0,3,0])