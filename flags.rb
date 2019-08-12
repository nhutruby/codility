# Find the position of the next peak
def next_peak_pos(a)
  len = a.length
  peak_pos = Array.new(len, -1)
  p peak_pos
  i = len - 2
  while i>=1 do
    if a[i-1] < a[i] && a[i] > a[i+1]
      peak_pos[i] = i
    else
      peak_pos[i] = peak_pos[i+1]
    end
    i-=1
  end
  p peak_pos
  peak_pos[0] = peak_pos[1] if len > 1
  peak_pos
  p peak_pos
end

def max(a, b)
  a > b ? a : b
end

def solution(a)
  len = a.length
  next_peak = next_peak_pos(a)
  p next_peak
  i = 1
  result = 0

  # The number of intervals is floor(len/i)+1 if len is not divisible by i
  # The number of intervals is len/i if len is divisible by i
  # (The maximum number of flags set is the number of intervals)
  # So, we can set i <= len/i + 1 which is i(i-1)<=len
  while (i-1)*i <= len do
    pos = 0
    num = 0
    chec = []
    while pos < len && num < i do
      pos = next_peak[pos]

      if pos == -1
        break
      end
      chec << pos
      num+=1 # The number of flags must <= i, so the condition check after this is num<i
      pos+=i
    end
    p chec
    p num
    result = max(result, num)
    i+=1
  end

  result
end
solution([1, 5, 3, 4, 3, 4, 1, 2, 3, 4, 6, 2] )