def countingSort(a, k)
  output = []
  counts = Array.new(k + 1, 0)
  a.each do |i|
    counts[i] += 1
  end
  p counts
  counts.each_with_index do |val, index|
    p val
    p index
    p '...'
    val.times { output << index }
  end
  output
end
p countingSort([5, 5,2,8,14,1,16], 16)