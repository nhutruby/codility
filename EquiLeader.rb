def solution(a)
  n = a.length
  size = 0
  equi_leaders = 0
  for k in 0...n
    if (size == 0)
      size += 1
      value = a[k]
    else
      if (value != a[k])
        size -= 1
      else
        size += 1
      end
    end
  end
  count = 0
  for k in 0...n
    if a[k] == value
      count += 1
    end
  end
  left_leaders = 0

  a.each_with_index do |v, i|
    if v == value
      count -= 1
      left_leaders += 1
    end
    if left_leaders > (i + 1) / 2 && count > (n - i - 1) / 2
      equi_leaders += 1
    end
  end

  equi_leaders
end