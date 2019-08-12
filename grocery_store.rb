def grocery_store(a)
  n = a.length
  size, result = 0, 0
  for i in 0...n
    if a[i] == 0
      size += 1
      p size
      p 'bbb'
    else

      size -= 1
      p size
      result = [result, -size].max
      p result
    end
    p '*****'
  end
  p '...'
  p result
end
grocery_store([1,1,0,1,1])